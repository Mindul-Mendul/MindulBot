import { Message } from 'discord.js';
import { createAudioResource, AudioPlayerStatus, AudioResource } from '@discordjs/voice';
import { MessageActionRow, MessageButton } from 'discord.js';
import { stream } from 'play-dl';
import { musicEntity } from '../../types/musicType';
import { VolumeTransformer } from 'prism-media';
import { musicCollection } from '../../../bot';
import { musicExecuteReact } from './musicExecuteReact';

export const musicExecutePlay = async (
  msg: Message,
  musicEntity: musicEntity,
  resource: AudioResource<{ title: string; url: string }>
) => {
  //기본 함수
  const audioPlayer = musicEntity.audioPlayer;
  const option = musicEntity.option;
  const textChannel = musicEntity.textChannel;
  const connection = musicEntity.connection;

  audioPlayer.play(resource);

  //플레이어 설정코드
  audioPlayer.on('error', (error) => {
    musicEntity.textChannel.send(
      `에러났어요 ㅠㅠ (${error.message})
      > 에러가 난 곡 이름: ${(error.resource as AudioResource<{ title: string; url: string }>).metadata.title}`
    );
    console.log(error);
    audioPlayer.stop();
  });

  audioPlayer.once(AudioPlayerStatus.Idle, async () => {//틀었던 노래가 끝났을 때
    //스킵 루프 조건 만족하면 루프돌리는 부분
    if (option.loop && !option.skip) {
      const meta = resource.metadata;
      const playStream = await stream(meta.url);
      const nextSong = createAudioResource(playStream.stream, {
        metadata: meta,
        inlineVolume: true,
        silencePaddingFrames: 5,
        inputType: playStream.type
      });
      const volume = nextSong.volume as VolumeTransformer;
      volume.setVolume((0.5 / option.volumeMagnification) * Number(!option.mute)); //노래 사운드 최초 설정해주는 곳
      musicEntity.songs.push(nextSong);
    }

    const nextSong = musicEntity.songs.shift();
    musicEntity.song = nextSong as AudioResource<{ title: string; url: string }>;
    if (nextSong) {
      //다음 노래 있으면 틀어주는 코드
      const volume = nextSong.volume as VolumeTransformer;
      volume.setVolume(volume.volume * Number(!option.mute));
      musicExecutePlay(msg, musicEntity, nextSong);
    } else {
      textChannel.send('노래 대기열이 모두 끝났어요, 나갑니다 ㅎㅎ');
      if (connection) connection.destroy(); //커넥션 삭제
      if (collector) collector.stop(); //인터렉션 삭제
      musicCollection.delete(msg.guildId as string);
    }
  });

  //Embed 생성하는 코드
  const button = new MessageActionRow() //첫 번째 줄 버튼
    .addComponents(new MessageButton().setCustomId('⏩').setLabel('⏩').setStyle('PRIMARY'))
    .addComponents(new MessageButton().setCustomId('⏹').setLabel('⏹').setStyle('PRIMARY'))
    .addComponents(new MessageButton().setCustomId('🔀').setLabel('🔀').setStyle('PRIMARY'))
    .addComponents(new MessageButton().setCustomId('🔉').setLabel('🔉').setStyle('PRIMARY'))
    .addComponents(new MessageButton().setCustomId('🔊').setLabel('🔊').setStyle('PRIMARY'));
  //두 번째 줄 버튼(이건 ON OFF 시각화를 위해 추가적인 작업이 필요함)
  const buttonLoop = new MessageButton().setCustomId('🔁').setLabel('🔁').setStyle('SECONDARY');
  if (option.loop) buttonLoop.setStyle('SUCCESS');
  const buttonMute = new MessageButton().setCustomId('🔇').setLabel('🔇').setStyle('SECONDARY');
  if (option.mute) buttonMute.setStyle('SUCCESS');
  const buttonSecond = new MessageActionRow()
    .addComponents(new MessageButton().setCustomId('⏯').setLabel('⏯').setStyle('SUCCESS')) //pause on 상황일 때는 다음으로 넘어가지 않음
    .addComponents(buttonLoop)
    .addComponents(buttonMute);

  const song = resource.metadata;
  const sendedContent = {
    content: `이번 선곡은~\n> **${song.title}**\n> ${song.url}`,
    components: [button, buttonSecond]
  };
  const msgSungok = await textChannel.send(sendedContent);

  const collector = musicExecuteReact(msgSungok, musicEntity, resource);
};
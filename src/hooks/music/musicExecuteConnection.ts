import { AudioResource, DiscordGatewayAdapterCreator, joinVoiceChannel, PlayerSubscription, VoiceConnectionStatus } from '@discordjs/voice';
import { musicCollection } from '../../../bot';
import { metadata, musicEntity } from '../../types/musicType';
import { musicExecutePlayer } from './musicExecutePlayer';

export const musicConnection = (guildId: string, resource: AudioResource<metadata>) => {
  const entity = musicCollection.get(guildId) as musicEntity;
  const voiceChannel = entity.voiceChannel;
  const connection = joinVoiceChannel({
    channelId: voiceChannel.id,
    guildId: voiceChannel.guild.id,
    adapterCreator: voiceChannel.guild.voiceAdapterCreator as DiscordGatewayAdapterCreator
  });

  const subscription = connection.subscribe(entity.audioPlayer) as PlayerSubscription;

  musicCollection.set(guildId, { ...entity, ["connection"]: connection, ["subscription"]: subscription });
  //준비가 되면 연결해서 노래를 틀어야지
  connection.on(VoiceConnectionStatus.Ready, async () => {
    await musicExecutePlayer(guildId, resource); //아래에 있는 play함수 호출
  });

  connection.on(VoiceConnectionStatus.Disconnected, () => {
    // 안에 살아있는 친구들 다 죽이기
    entity?.audioPlayer?.stop();
    entity?.connection?.destroy();
    entity?.reactCollector?.stop();
    entity?.subscription?.unsubscribe();
    musicCollection.delete(guildId);
  });
};

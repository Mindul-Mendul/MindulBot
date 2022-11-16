import { search } from 'play-dl';
import { effectiveArr } from './../../hooks/app/effectiveArr';
import { cmd } from '../../types/type';

export const musicYoutubeSearch: cmd = {
  name: '검색',
  cmd: ['검색', '노래검색', 'ㄴㄹㄱㅅ', 'ㄴㄺㅅ'],
  type: 'music',
  permission: ['CONNECT', 'SPEAK', 'MANAGE_EMOJIS_AND_STICKERS', 'READ_MESSAGE_HISTORY', 'MANAGE_MESSAGES'],
  //찾은 유튜브 주소를 배열에 집어넣는 함수
  async execute(msg, args) {
    if (!msg.member.voice.channel) return msg.channel.send('보이스채널에서 해주세요!');

    //if(musicQueue.get(msg.guild.id)!=undefined) if (msg.member.voice.channel!=musicQueue.get(msg.guild.id).voiceChannel)
    //    return msg.channel.send("같은 보이스채널에서 해주세요!");

    if (args.length == 0) return msg.channel.send('검색어를 입력해주세요!');

    const searchStr = args.join(' ');

    const items = await search(searchStr, { source: { youtube: 'video' }, limit: 8 });
    if (items.length == 0) return msg.channel.send('검색결과가 없네요. 다른 키워드로 다시 시도해보세요!');

    const embedSearchYoutube = {
      title: '노래 검색 목록',
      color: 0xf7cac9,
      description: `**${searchStr}**에 대한 검색 결과에요~`,
      fields: []
    };

    for (var i in items) {
      let n = Number(i);
      n++;
      const explItem = {
        name: '\u200b',
        value: `[${n}. ${items[i].title}](https://www.youtube.com/watch?v=${items[i].url})`, //markdown 사용
        url: items[i].url
      };
      embedSearchYoutube.fields.push(explItem);
    }
    const embedMsg = await msg.channel.send({ embeds: [embedSearchYoutube] });

    const filter = (message: { author: { bot: any; id: string } }) => {
      return !message.author.bot && message.author.id === msg.author.id;
    };
    const collector = msg.channel.createMessageCollector({ filter, max: 1 });
    collector.on('collect', async (message) => {
      const msgArr = await effectiveArr(message.content, ',', 1, 8); //배열이 유효한지 조사

      if (msgArr.length == 0) {
        //리스트에 추가할 게 없을 때(즉, 검색이 유효하지 않으면 바로 취소함)
        message.delete();
        embedMsg.delete();
        message.channel.send('유효하지 않은 대답이에요. 노래 검색 취소할게요..;;');
      }

      while (msgArr.length > 0) {
        const tmpStr = embedSearchYoutube.fields[msgArr.shift()].url.split(/\s+/);
        await require('./musicExecute').execute(message, tmpStr);
      }

      message.delete();
      embedMsg.delete();
    });
  }
};

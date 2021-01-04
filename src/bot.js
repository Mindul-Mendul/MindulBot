require('dotenv').config();

const {Client, Discord} = require('discord.js');
const Queue = require('queue-fifo');
const moment = require('moment');
const { CommandNaga } = require('./Command/CommandNaga');
require('moment-timezone');
moment.tz.setDefault("Asia/Seoul"); // 서울 시간

const Command=require('./Command/Command.js').COMMAND;

const bot = new Client();

const GV = require("./../GlobalVariable.js");
const { COMMAND } = require('./Command/Command');
const PREFIX=GV.PREFIX;
const PREFIX_REACTION_MF="@#$4578$#@"; // 중지 이모지 반응용(중지 날린 곳에 지문 남긴 것)

const OWNER_ID="554178159717777420";
const MORMOTTE_ID="751773063766343721";

var dobeTimeCheck=new Queue(); // 얍 명령어 도배 시간 체크 큐
var dobeCheck=new Queue();

var msgMiddleFinger=0; // 중지 이모지 반응용 변수
var nagaStance=0; // 나가라고 전에 삼고초려 변수

bot.on('ready', async () => {
    console.log(`${bot.user.tag}님이 로그인했습니다.`);
    console.log(moment().format("YYYY년 MM월 DD일 HH시 mm분 ss초"));
    bot.user.setActivity('박명수와 정준', { type: 'PLAYING' });
});

setInterval( (time)=>{
    
    }
);

bot.on('messageReactionAdd', async (reaction, user) => {
    const { name } = reaction.emoji;
    const member=reaction.message.guild.members.cache.get(user.id);
    if(reaction.message.id > 1){
        switch(name){
            case '🖕':
                var msgAuthorID=reaction.message.channel.messages.cache.get(reaction.message.id).member.user.id;
                if(msgAuthorID===bot.user.id){
                    msgMiddleFinger=(await reaction.message.channel.send(`${member} 너도 받아라🖕`)).id;
                    reaction.message.content+=PREFIX_REACTION_MF+msgMiddleFinger;
                } else {
                    reaction.message.channel.send('우헤헿 꼴 좋다 ㅋㅋㅋㅋ');
                }
            break;
        }
    }
});

bot.on('messageReactionRemove',async (reaction, user) => {
    const { name } = reaction.emoji;
    const member = reaction.message.guild.members.cache.get(user.id);
    if(reaction.message.id > 1){
        switch(name){
            case '🖕':
                var msgAuthorID=reaction.message.channel.messages.cache.get(reaction.message.id).member.user.id;
                if(msgAuthorID === bot.user.id){
                    const idIndex=reaction.message.content.indexOf(PREFIX_REACTION_MF);
                    msgMiddleFinger=reaction.message.content.substring(idIndex+PREFIX_REACTION_MF.length);
                    reaction.message.content=reaction.message.content.substring(0,idIndex);
                    reaction.message.channel.messages.delete(msgMiddleFinger);
                    reaction.message.channel.send(`${member} 그래, 알았으면 됐다.`);
                }
            break;
        }
    }
});

// ! 명령어 모음
bot.on('message', async (msg) => {
    if(msg.author.bot){return;}
    if(msg.channel.type==="dm"){
        if(msg.author!=bot.user){
            (await msg.channel.send("DM은 명령어 안통함 ㅅㄱ"));
        } return;
    }
    if(msg.content=='아님'){
        msg.channel.send('맞는데?');
    }
    msg.content.toLowerCase();
    if(msg.content.startsWith(PREFIX)){//명령어 어두 감지
        const [CMD_NAME, ...args] = msg.content//문장 정리
        .trim()
        .substring(PREFIX.length)
        .split(/\s+/); // 정규 표현식 공부하기~

        const cmd = Object.keys(Command).find( (property) => 
            Command[property].find( element=>element==CMD_NAME )!=undefined
        );

        //코드 시작
        switch(cmd){
            case '나가':
                require("./Command/CommandNaga.js")
                .CommandNaga(msg);
            break;

            case "시간":
                require("./Command/CommandTime.js")
                .CommandTime(msg);
            break;

            case "날짜":
                require("./Command/CommandDate.js")
                .CommandDate(msg);
            break;

            case '얍':
                msg.reply("얍");
            break;

            case 'ping':
                msg.reply('Pong!');
            break;

            case 'gnip':
                msg.reply('!gnoP');
            break;

            case '민둘':
                msg.channel.send('민둘이는 바보');
            break;

            case '맨둘':
                msg.channel.send('맨둘이는 집나갔음');
            break;
            
            case '야':
                require("./Command/CommandAngry.js")
                .CommandAngry(msg);
            break;

            case "도움말":
                const helpEmbed=require("./Command/CommandHelp.js").helpEmbed;
                msg.channel.send({embed : helpEmbed});
            break;

            case '한로원':
                msg.channel.send("로바~");
            break;

            case '로바':
                msg.channel.send("로원 바보라는 뜻~");
            break;
            
            case '레순튀':
                msg.channel.send("레또팅!!");
            break;
            
            default:
                //msg.channel.send("감사합니다 ㅠㅠ");
                console.log(CMD_NAME);
            break;
        }
    }
});

bot.on('guildMemberAdd',async (member) => {
    console.log(`${member.user.tag}: 접속`);
});

bot.login(process.env.BOT_TOKEN);
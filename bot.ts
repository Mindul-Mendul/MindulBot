import { config } from 'dotenv';
import moment from 'moment';
import util from 'util';
import { verCheck } from './src/Commands/music/musicVerCheck';
import { Client, Collection, Message } from 'discord.js';
import { putCommands } from './src/func/putCommands';

config();
moment.tz.setDefault("Asia/Seoul"); //서울 시간
//const {Intents, MessageActionRow, MessageButton} = require('discord.js');

const execFile = util.promisify(require('child_process').execFile);

export const bot = new Client({
	intents: ['GUILD_VOICE_STATES',
		'GUILD_MESSAGES',
		'GUILDS',
		'GUILD_MESSAGE_REACTIONS',
		'DIRECT_MESSAGES',
		'DIRECT_MESSAGE_REACTIONS',
		'DIRECT_MESSAGE_TYPING'],
	partials: ['CHANNEL',]
});

const CmdtoNameMap: Collection<string, string> = new Collection(); // cmd와 name 매칭해주는 맵
const commands: Collection<string, (arg0: Message, arg1?: Array<string>) => Promise<void | string | Message>> = new Collection(); // 명령어 모음집
const guildCmdQueue = new Collection(); //길드 명령어큐

bot.on('ready', async () => {//정상적으로 작동하는지 출력하는 코드
	console.log(`${bot.user.tag}님이 로그인했습니다.`);
	bot.user.setActivity(process.env.activityString, { type: 'PLAYING' });
	require("./src/botAlarm");

	await putCommands(CmdtoNameMap, commands);
});

bot.on('messageCreate', async (msg) => {
	if (msg.author.bot) return;//봇은 거름
	if (await noCmd(msg)) return;//명령어 없는 텍스트
	if (msg.channel.type === "DM") { msg.channel.send("DM은 막혀있어요, 죄송합니다. ㅠㅠ"); return; };

	const args = msg.content.slice(process.env.PREFIX.length).trim().split(/\s+/);//명령어 말 배열에 담기
	const command = args.shift();//명령어 인식할 거

	if (!commands.get(command)) {//명령어 인식 못하는 거 거름
		msg.channel.send("명령어를 인식하지 못했어요 ㅠㅠ 명령어를 다시 한 번 확인해주세요!"); return;
	}
	if (guildCmdQueue.get(`${msg.guild.id}${commands.get(command).type}`) == undefined)//길드 명령어 큐 만들기
		await guildCmdQueue.set(`${msg.guild.id}${commands.get(command).type}`, new Array());

	const checkGuildCmdQueue = guildCmdQueue.get(`${msg.guild.id}${commands.get(command).type}`);
	try {
		if (checkGuildCmdQueue.length == 0) { //아무것도 실행 안 되어 있으면 실행
			checkGuildCmdQueue.push(commands.get(command));//명령어 입력 중임을 알림

			if (commands.get(command).type === "music") {//노래 재생 시에 문제 있으면 업데이트 진행
				if (!verCheck(msg)) {
					msg.channel.send("노래봇 버젼이 안 맞아서 업데이트 중입니다. 조금만 기다려주세요!");
					const child = await execFile("npm", ['install', 'play-dl@latest'], { shell: true });
					console.log(child);
				}
			}

			if (await require("./src/permission.js").checkPermissions(msg, commands.get(command).permission))
				await commands.get(command).execute(msg, args); //실행이 끝날 때까지 대기
			checkGuildCmdQueue.shift(); //명령어 끝나면 대기열 제거
		} else {//뭐가 실행 중이면 실행
			msg.channel.send(`${checkGuildCmdQueue[0].name} 명령어 입력 대기 중이라 잠시 뒤에 다시 부탁드립니다 ㅎㅎ`);
		}
	} catch (error) {
		const checkGuildCmdQueue = guildCmdQueue.get(`${msg.guild.id}${commands.get(command).type}`);
		if (checkGuildCmdQueue) checkGuildCmdQueue.shift();//에러가 났으니 대기열 제거

		msg.channel.send(`${command} 명령어 입력에 문제가 생겼어요! 우리 주인님이 고생할 거라 생각하니 기분이 좋네요 ㅎㅎ\n${error}`);
		bot.users.cache.get(process.env.OWNER_ID).send(`명령어 입력 문제 : ${commands.get(command).name}\n${error}`);
		console.error(error);
	}
});

async function noCmd(msg: Message<boolean>) {//명령어 없는 텍스트
	if (msg.content.toLocaleLowerCase().includes("vs")) {//vs 기능
		if (msg.content.includes("https://")) return;
		else if (msg.content.includes("http://")) return;

		let vsArr = msg.content.trim().split(/\s*vs\s*/gim);//vs 검색해서 나누기
		vsArr = [...new Set(vsArr)].filter(elem => elem !== '');//이거중복임 뜻) 검사한다는 뜻
		if (vsArr.length == 0) msg.channel.send("의미 있는 입력 값이 없네요.");//아무것도 없으면
		else msg.channel.send(vsArr[Math.floor(Math.random() * vsArr.length)]);//랜덤해서 하나 보내기
		return true;
	} else if (!msg.content.startsWith(process.env.PREFIX)) return true;
	return false;
};

process.on('unhandledRejection', (err) => {//app crash걸렸을 때 실행되는 코드
	bot.users.cache.get(process.env.OWNER_ID).send(`에러떴다ㅏㅏㅏㅏㅏ\n${err}\n`);
	console.error(err);
});

bot.login(process.env.BOT_TOKEN);
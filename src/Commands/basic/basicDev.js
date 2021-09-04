module.exports = {
	name: `개발`,
	cmd: ["개발", "ㄱㅂ", "개발일정", "ㄱㅂㅇㅈ","dev"],
    type: "basic",
    permission: [""],
	execute(msg) {
        const moment = require('moment');

        const devembed = {
            color: 0xF7CAC9,
            author: {
                name: '민둘봇 개발 목표 안내',
                icon_url: 'https://i.imgur.com/AD91Z6z.jpg',
            },
            description: '민둘봇이 앞으로 어떻게 개발될지 안내하는 임베드입니다. '+
            '해당 문서에는 앞으로 개발될 기능과, 현재 기능들 중에 제가 중점을 두고 고치고 있는 부분을 코멘트해두었습니다. '+
            '무조건 개발된다는 건 아니고, 해당 문구들이 언제든지 사라질 수 있음을 함께 안내해드릴게요~ '+
            '현재 개발과정은 소야봇을 전적으로 벤치마킹하고 있습니다. '+
            '(소야봇 개발자님, 여러 도움을 주셔서 진심으로 감사드립니다.) '+
            '\n(해당 문서는 2021년 07년 05일에 업데이트되었습니다.) ',
            fields: [
                {
                    name: '버그 수정',
                    value: '노래기능 사용 중 민둘봇이 서비스를 멈추는 등의 큰 문제가 너무 많아서, 이것 중심으로 개발하려고 합니다. 치명적인 부분을 최대한 빨리 고치도록 노력하겠습니다. 또한 현재 타로 기능에도 특정 조건에서 작동하지 않는 버그를 발견하여 고치는 중입니다.'+
                    '자잘한 버그 역시 제보받는 중이니 언제든지 "ㅣ개발" 명령어를 통해 리포트해주세요.',
                    inline: false,
                },
                {
                    name: '버그 리포트',
                    value: '무능한 개발자를 판가름하는 기준은, 버그가 있는 곳을 빠르게 찾는 능력입니다. 저는 그 부분에 있어서 꽝이에요. 따라서 코딩을 열심히 배워서 하루빨리 이 기능을 넣어야할 것 같습니다 ㅠㅠ',
                    inline: false,
                },
                {
                    name: '메이플스토리 배틀리버스 ai',
                    value: '이건 특별히 개발해보고 싶었던 거에요! 아직 민둘봇에는 영상처리능력이 없어서 시간이 걸릴 것 같지만, 최대한 빨리 개발해보고 싶어요. 이밖에도 ai로의 개발 여지가 있는 건 모두 해볼 생각입니다.',
                    inline: false,
                },
                {
                    name: '텍스트 게임',
                    value: '민둘봇에 들어갈 첫 번째 게임이라고 생각해요. 디코봇에 게임을 집어넣는 경우도 있다고 들어서 시도하는 거에요. 떠오르는 아이디어가 없어서, 좋은 게임이 될지는 지금 장담 못합니다^^',
                    inline: false,
                },
                {
                    name: 'Data Base',
                    value: '민둘봇이 데이터베이스를 가지고 데이터를 수집하려고 해요. 타겟이 될 정보는 민둘봇이 들어간 서버의 환경설정(개발되진 않았지만, 민둘봇의 여러 가지 기능에 포함될)정도입니다. 민감한 정보는 묻지도 않고, 필요하지도 않아요. 이건 그저 개발자 입장에서 시도하는 거라 도입이 되어도 사용자분들에게는 큰 영향을 끼치지 않을 겁니다.',
                    inline: false,
                },
            ],
            timestamp: moment(),
            footer: {
                text: 'instagram @mindul_mendul ',
                icon_url: 'https://i.imgur.com/AD91Z6z.jpg',
            },
        };
        msg.channel.send({embed: devembed});
	}
};
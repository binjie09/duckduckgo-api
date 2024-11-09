# duckduckgo-api

## Use vercel
[https://duckduckgo-api.vercel.app/search?q=啊对对对是什么梗&max_results=3](https://duckduckgo-api.vercel.app/search?q=啊对对对是什么梗&max_results=3)

使用vercel部署的本项目,免费，但是vercel免费用量用完就无了，vercel ip 容易被封，建议使用docker部署

可点下方按钮部署到自己的Vercel

[![Deploy to Vercel](https://vercel.com/button)](https://vercel.com/import/project?template=https://github.com/binjie09/duckduckgo-api)

<details>
 <summary>设置 Vercel 的指导</summary>

1. 前往 [vercel.com](https://vercel.com/)
1. 点击 `Log in`
   ![](https://files.catbox.moe/tct1wg.png)
1. 点击 `Continue with GitHub` 通过 GitHub 进行登录
   ![](https://files.catbox.moe/btd78j.jpeg)
1. 登录 GitHub 并允许访问所有存储库（如果系统这样提示）
1. Fork 这个仓库
1. 返回到你的 [Vercel dashboard](https://vercel.com/dashboard)
1. 选择 `Import Project`
   ![](https://files.catbox.moe/qckos0.png)
1. 选择 `Import Git Repository`
   ![](https://files.catbox.moe/pqub9q.png)
1. 选择 root 并将所有内容保持不变，并且只需添加名为 PAT_1 的环境变量（如图所示），其中将包含一个个人访问令牌（PAT），你可以在[这里](https://github.com/settings/tokens/new)轻松创建（保留默认，并且只需要命名下，名字随便）
   ![](https://files.catbox.moe/0ez4g7.png)
1. 点击 deploy，这就完成了，查看你的域名就可使用 API 了！

</details>

## Self host

### use docker

```
docker run -p 8000:8000 docker.io/library/duckduckgo-api:latest
```

### use docker-compose

```
version: '3.8'

services:
  redis:
    image: hub.binjie.site:7777/binjie09/duckduckgo-api
    restart: always
    ports:
      - "8000:8000"
    # environment: # 如果需要代理使用这种方式
    #   - http_proxy=http://192.168.1.14:7890
    #   - https_proxy=http://192.168.1.14:7890

```

then get `http://localhost:8000/search?q=啊对对对是什么梗&max_results=3`
```json
{
    "results": [
        {
            "body": "对对对是什么梗呢?\"对对对\"这个梗源自b站主播csgo久菜合子（王喜顺）的一场直播中，他遭遇队友的嘲讽后，用这句话进行反击，讽刺那些说话不讲道理的人。 ... 还出言不逊，王喜顺面对攻击，以一句\"希望你对你的人生也是这个态度\"回击，引发了\"啊对 ...",
            "href": "https://zhidao.baidu.com/question/1378917733622179699.html",
            "title": "对对对是什么梗呢? - 百度知道"
        },
        {
            "body": "啊对对对什么意思网络用语. 1、\"啊对对对\"这个梗是敷衍和摆烂的意思，也是一种承认自己破罐子破摔的无赖态度。. 2、\"啊对对对\"这个梗在 短视频 上爆火后，常用于摆烂后的一种调侃，碰到一些不想进行争辩的事情时，就可以发\"啊对对对，你说得对 ...",
            "href": "https://www.maigoo.com/goomai/309396.html",
            "title": "啊对对对什么意思网络用语 啊对对对是谁说的 - 买购网"
        },
        {
            "body": "啊对对对 起源： 常用于对付一些杠精或者尖酸刻薄的人，表达自己的不合作和不屑于和对方计较的心情，又或者面对一些无端的指责或者队友的辱骂都可以使用啊对对对来反击，表明自己要摆烂了，不想和你合作了的意思。",
            "href": "https://www.qgj.cc/gengzhishi?id=1050.html",
            "title": "啊对对对是什么意思? - 网络热梗百科[轻工具]"
        }
    ]
}
```
### self host
```bash
git clone https://github.com/binjie09/duckduckgo-api.git
cd duckduckgo-api
python3 -m venv myenv && source myenv/bin/activate && pip install -r requirements.txt
gunicorn -b 0.0.0.0:8000 app:app
```

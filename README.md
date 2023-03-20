# duckduckgo-api


use docker

```
docker run -p 8000:8000 binjie09/duckduckgo-api
```

then get `http://localhost:8000/search?q=啊对对对是什么梗&max_results=3`
```json
[
    {
        "body": "TikTok video from 乐萱 (@rachel_5205). 原聲 - 小熊🐻 - 啊对对对.",
        "href": "https://www.tiktok.com/@rachel_5205/video/7117859473565289755",
        "title": "乐萱 (@rachel_5205) 's videos with 原聲 - 小熊🐻 - 啊对对对 | TikTok"
    },
    {
        "body": "很显然，这名主播的目的，是想要凭借\"啊对对对\"这种说法讽刺对方的死鸭子嘴硬，表现出的是一种\"你都已经这样了，那我为什么不顺从你呢？\"但看\"啊对对对\"似乎还能看到表达赞同和认可的那份本意，可将其放到如…",
        "href": "https://www.sohu.com/a/534828306_119620",
        "title": "讽刺摆烂的\"啊对对对\"，为何成了\"摆烂圣经\"？_含义_对方_态度"
    },
    {
        "body": "可\"啊对对对\"完全不同，在如今这个常用的语境下，当你和对方讲道理或者指责对方希望他能够改正的时候，这句\"啊对对对\"透露的只有藐视和满不在乎。. 也正是这满满的负能量，使得\"啊对对对\"发臭和让人反感的速度要远远快于\"绝绝子\"。. 如果将 ...",
        "href": "https://www.ali213.net/news/html/2022-4/665405_3.html",
        "title": "讽刺摆烂的\"啊对对对\"，为何成了\"摆烂圣经\"？(3)_游侠网 Ali213.net"
    }
]
```

```bash
python3 -m venv myenv && source myenv/bin/activate && pip install -r requirements.txt
gunicorn -b 0.0.0.0:8000 app:app
```
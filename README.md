# Docker python3 Demo

## 项目说明

该项目是 docker 搭建开发环境的示例。

## 该项目结构
```bash
project(compose-haproxy-web)
├── README.md
└── web
    ├── Dockerfile
    ├── index.html
    └── index.py
```


## bash

```bash
	$ cd web

	# 通过指令建立镜像
	$ docker build  -t  mytestweb  .

	# 启动容器
	$ docker run --rm -it --name  web  -p 80:80  -v $(pwd):/app/web mytestweb  
```

然后访问：http://localhost。 注意本机80端口不要被占用。















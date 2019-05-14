# Docker Test 部署

- 构建完DockerFile 之后可以直接运行
 - ps:`docker build -t mycorewebtest .`
 - ps:`docker run --name mycorewebtest_dahai --rm -it -p 8080:80 hvai/mycorewebtest:v1`
- http://localhost:8080/ 直接访问


## docker下载该镜像
 - `docker pull hvai/mycorewebtest`
![DockerFile配置](https://github.com/HvaiY/DockerPublishAspNetCore/blob/master/DockerFile_info.png "DockerFile说明")

- Docker 同样支持nginx反向代理 
 - web根目录配置文件docker-compose.yml 
 - 创建nginx 文件下 下面创建dockerfile (docker文件创建在这一目录是为了防止与web根目录的同名文件冲突)，及nginx.conf配置文件
 - 执行命令 `docker-compose up` 将会执行docker-compose.yml 访问`http://localhost` 即可 
 同时web编译成功之后无语用命令 `docker run --name mycorewebtest_dahai --rm -it -p 8080:80 hvai/mycorewebtest:v1 ` 运行程序 
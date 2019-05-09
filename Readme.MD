# Docker Test 部署

- 构建完DockerFile 之后可以直接运行
 - ps:`docker build -t mycorewebtest .`
 - ps:`docker run --name mycorewebtest_dahai --rm -it -p 8080:80 mycorewebtest`
- http://localhost:8080/ 直接访问

![DockerFile配置](https://github.com/HvaiY/DockerPublishAspNetCore/blob/master/DockerFile_info.png,"DockerFile说明")
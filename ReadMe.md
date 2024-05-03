# SmartDNS 的 Arm32v7 架构 Docker 镜像自动编译


SmartDNS 是一个运行在本地的 DNS 服务器，它接受来自本地客户端的 DNS 查询请求，然后从多个上游 DNS 服务器获取 DNS 查询结果，并将访问速度最快的结果返回给客户端，以此提高网络访问速度。
SmartDNS 同时支持指定特定域名 IP 地址，并高性匹配，可达到过滤广告的效果; 支持DOT(DNS over TLS)和DOH(DNS over HTTPS)，更好的保护隐私。  

与 DNSmasq 的 all-servers 不同，SmartDNS 返回的是访问速度最快的解析结果。

支持树莓派、OpenWrt、华硕路由器原生固件和 Windows 系统等。

##　原项目

SmartDNS：[https://github.com/pymumu/smartdns](https://github.com/pymumu/smartdns/)

## 本项目 Docker 链接

DockerHUB：[https://hub.docker.com/r/seyuk/smartdns](https://hub.docker.com/r/seyuk/smartdns)

## 使用指导

SmartDNS官网：[https://pymumu.github.io/smartdns](https://pymumu.github.io/smartdns)

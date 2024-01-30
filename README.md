# Docker部署Visual-DDD

GitHub地址：[Docker部署DDD可视化开发者平台](https://github.com/visual-ddd/visual-ddd-docker)

## 准备工作

在开始部署之前，请确保已完成以下准备工作：

1. 安装Docker和Docker Compose：确保你的服务器已安装了Docker和Docker Compose。
   如果尚未安装，请按照[官方文档](https://docs.docker.com/engine/install/centos/)进行安装。

2. 拉取项目：通过git拉取本项目到部署环境下。

## 部署步骤

1. 进入项目目录：使用命令行工具进入项目所在的目录。

``` shell
cd visual-ddd-docker
```

2. 请根据项目的要求进行相应的修改，例如修改端口号、添加环境变量等，详情请参考docker-compose.yml配置。

- 前端关键配置：

| 名称                   | 说明                                            |
|----------------------|-----------------------------------------------|
| BACKEND              | 后端服务地址，例如 http://172.26.57.49:8080            |
| SESSION_SECRET       | 会话加密密钥                                        |
| PASS_THROUGH_SESSION | 登录时是否透传后端的会话信息，默认为 false                      |
| AI_CONFIGURATION     | OPENAI 配置，配置项见 ./modules/ai/platform/index.ts |

更多设置：https://github.com/visual-ddd/visual-ddd-client/blob/main/DEVEPLOMENT.md

- 后端关键配置：
  以下是将给定的信息转换为表格的结果，并补充了每个配置项的说明：

| 名称                                                 | 说明                                                                                      |
|----------------------------------------------------|-----------------------------------------------------------------------------------------|
| common.mysql.url                                   | MySQL数据库的连接URL，指定了数据库的地址、端口、数据库名称以及一些连接参数。                                              |
| common.mysql.username                              | MySQL数据库的用户名。                                                                           |
| common.mysql.password                              | MySQL数据库的密码。                                                                            |
| register.mail.suffix-configs                       | 注册邮箱的域名限制，指定了允许注册的邮箱的域名后缀。                                                              |
| register.whitelist.enable                          | 是否启用注册白名单功能，当为'false'时，不启用注册白名单功能；当为'true'时，启用注册白名单功能。                                  |
| common.mq.message.default-type                     | 消息队列的默认类型，此处指定了默认使用的消息队列类型为rabbitMq。                                                    |
| common.mq.rabbitmq.bootstrap-servers               | RabbitMQ服务器的地址，指定了RabbitMQ服务器的IP地址或主机名。                                                 |
| common.mq.rabbitmq.username                        | RabbitMQ服务器的用户名。                                                                        |
| common.mq.rabbitmq.password                        | RabbitMQ服务器的密码。                                                                         |
| spring.mail.host                                   | SMTP邮件服务器的主机地址，指定了用于发送邮件的SMTP服务器的主机地址。                                                  |
| spring.mail.username                               | 发送邮件时使用的邮箱的用户名。                                                                         |
| spring.mail.password                               | 发送邮件时使用的邮箱的密码。                                                                          |
| spring.mail.properties.mail.smtp.auth              | 邮件服务器的认证机制，当为'false'时，不启用SMTP服务器的身份验证；当为'true'时，启用SMTP服务器的身份验证。                         |
| spring.mail.properties.mail.smtp.starttls.enable   | 是否启用STARTTLS加密连接，当为'false'时，不启用STARTTLS加密连接；当为'true'时，启用STARTTLS加密连接。                   |
| spring.mail.properties.mail.smtp.starttls.required | 是否要求客户端使用STARTTLS加密连接，当为'false'时，客户端可以选择是否使用STARTTLS加密连接；当为'true'时，客户端必须使用STARTTLS加密连接。 |
| password-reset.url.config                          | 重置密码的链接地址，指定了用于重置密码的链接地址。                                                               |

3. 构建和启动容器：运行以下命令来构建和启动项目容器：

```shell
docker-compose up -d
```

4. 验证部署：等待一段时间后，可以通过访问服务器的IP地址或域名来验证项目是否成功部署。如果一切正常，应该能够看到项目的首页或相关页面。

5. 停止和清理容器：如果需要停止和清理容器，可以运行以下命令：

```shell
docker-compose down
```
6. 访问地址 服务器ip:3000，登录管理员初始化账号
```
账号：admin@visualddd.com
密码：123456
```

## 注意事项

- 请确保服务器的防火墙已经打开了所需的端口，以便能够从外部访问项目。

- 如果项目需要使用数据库等外部服务，请确保这些服务已经正确地配置，并能够在项目容器中访问到。

- 如果项目有特殊的依赖项或配置要求，请根据实际情况进行相应的调整。

- 在部署过程中，如果出现任何错误或问题，请参考Docker和Docker Compose的官方文档进行故障排除。

希望以上部署说明对你有帮助！如有任何疑问，请随时向我提问。

# Deploy Visual-DDD with Docker

GitHub Repository: [Visual-DDD Docker Deployment](https://github.com/visual-ddd/visual-ddd-docker)

## Prerequisites

Before starting the deployment, please make sure to complete the following prerequisites:

1. Install Docker and Docker Compose: Make sure Docker and Docker Compose are installed on your server.
   If not installed, please follow the [official documentation](https://docs.docker.com/engine/install/centos/) for installation instructions.

2. Clone the project: Clone this project to your deployment environment using git.

## Deployment Steps

1. Navigate to the project directory: Use the command line tool to navigate to the directory where the project is located.

``` shell
cd visual-ddd-docker
```

2. Make the necessary modifications according to the project requirements, such as changing the port number, adding environment variables, etc. Please refer to the docker-compose.yml configuration file for details.

- Key frontend configurations:

| Name                   | Description                                            |
|------------------------|--------------------------------------------------------|
| BACKEND                | Backend service URL, e.g., http://172.26.57.49:8080     |
| SESSION_SECRET         | Session encryption key                                 |
| PASS_THROUGH_SESSION   | Whether to pass backend session information during login, default is false |
| AI_CONFIGURATION       | OPENAI configuration, configuration items are in ./modules/ai/platform/index.ts |

More settings: https://github.com/visual-ddd/visual-ddd-client/blob/main/DEVEPLOMENT.md

- Key backend configurations:
  The following table presents the given information in a tabular form and provides descriptions for each configuration item:

| Name                                                 | Description                                                                                           |
|------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| common.mysql.url                                     | Connection URL for the MySQL database, specifying the address, port, database name, and some connection parameters. |
| common.mysql.username                                | Username for the MySQL database.                                                                      |
| common.mysql.password                                | Password for the MySQL database.                                                                      |
| register.mail.suffix-configs                         | Domain name restrictions for registering emails, specifying the allowed domain name suffixes for registration. |
| register.whitelist.enable                            | Whether to enable registration whitelist feature. Set to 'false' to disable the feature, 'true' to enable it.     |
| common.mq.message.default-type                       | Default type for the message queue, specifying the default message queue type as rabbitMq.               |
| common.mq.rabbitmq.bootstrap-servers                 | Address of the RabbitMQ server, specifying the IP address or hostname of the RabbitMQ server.         |
| common.mq.rabbitmq.username                          | Username for the RabbitMQ server.                                                                      |
| common.mq.rabbitmq.password                          | Password for the RabbitMQ server.                                                                      |
| spring.mail.host                                     | Host address of the SMTP mail server, specifying the host address of the SMTP server used for sending emails. |
| spring.mail.username                                 | Username for the email used for sending emails.                                                        |
| spring.mail.password                                 | Password for the email used for sending emails.                                                        |
| spring.mail.properties.mail.smtp.auth                | Authentication mechanism for the mail server. Set to 'false' to disable SMTP server authentication, 'true' to enable it. |
| spring.mail.properties.mail.smtp.starttls.enable     | Whether to enable STARTTLS encrypted connection. Set to 'false' to disable STARTTLS, 'true' to enable it.       |
| spring.mail.properties.mail.smtp.starttls.required   | Whether the client is required to use STARTTLS encrypted connection. Set to 'false' to allow clients to choose whether to use STARTTLS, 'true' to require clients to use STARTTLS. |
| password-reset.url.config                            | Link address for password reset, specifying the link address used for password reset.        |

3. Build and start the containers: Run the following command to build and start the project containers:

```shell
docker-compose up -d
```

4. Verify the deployment: Access the server IP with port 3000, login with the administrator's initialization account
```
Email: admin@visualddd.com
Password: 123456
```

## Stop and clean up containers: If you need to stop and clean up the containers, you can run the following command:

```shell
docker-compose down
```

## Notes

- Make sure the firewall on your server has the necessary ports open for external access to the project.

- If the project requires external services such as a database, make sure these services are properly configured and accessible within the project container.

- If the project has specific dependencies or configuration requirements, make the necessary adjustments according to your specific situation.

- If any errors or issues occur during the deployment, refer to the official documentation of Docker and Docker Compose for troubleshooting.

I hope the above deployment instructions are helpful to you! Feel free to ask me any questions you may have.

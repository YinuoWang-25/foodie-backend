# Initialize Project

1. Initialize by https://start.spring.io/
2. Add Annotation as error
    - exclude = {DataSourceAutoConfiguration.class}
    
## Project Structure

The whole project is composed by maven modules

When creating a module, need to add it in pom.xml file in root project

### common

### controller

### entity

### repository

### service

# Infra configuration

## Dababase

Use **Mysql** as the main database

### Docker

```bash
// pull image
docker pull mysql

// start container
docker run --name mysql -e MYSQL_ROOT_PASSWORD=root -d mysql
```


# CI/CD

ssh key: /Users/user/.ssh/id_rsa.pub


# Infrastructure

## Terraform

### Install

https://learn.hashicorp.com/tutorials/terraform/install-cli

### Create Database

Note: when start mysql instance in docker, please run 
```bash
docker run --name=mysql -p3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql
```
**-p3306:3306** is necessary to export port
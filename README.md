# ThinkPHP Docker 开发环境

## 项目概述

这是一个基于 Docker 的 ThinkPHP 开发环境，包含以下服务：

- Nginx（Web 服务器）
- PHP-FPM 8.0（PHP 运行环境）
- MySQL 5.7（数据库服务）

## 系统要求

- Docker
- Docker Compose

## 安装步骤

1. 克隆项目到本地：

```bash
git clone https://github.com/cjq02/thinkphp6-demo.git
cd thinkphp-docker
```

2. 启动 Docker 容器：

```bash
docker-compose up -d
```

3. 访问项目：

打开浏览器，访问 http://localhost

## 配置说明

### 目录结构

```
project/
├── docker/
│   ├── nginx/
│   │   └── conf.d/         # Nginx 配置文件
│   └── php/                # PHP 相关配置（可选）
├── config/                 # ThinkPHP 配置文件
├── docker-compose.yml      # Docker 配置文件
├── .git/                   # Git 版本控制目录
├── .gitignore              # Git 忽略文件配置
└── ...
```

### 数据库配置

- 数据库名称：thinkphp
- 用户名：thinkphp
- 密码：thinkphp
- 主机：mysql
- 端口：3306

## 常用命令

### 启动环境

```bash
docker-compose up -d
```

### 关闭环境

```bash
docker-compose down
```

### 查看日志

```bash
docker-compose logs -f [服务名称]
```

### 进入容器

```bash
docker-compose exec [服务名称] bash
```

例如：进入 PHP 容器：

```bash
docker-compose exec php-fpm bash
```

## 常见问题

1. 端口冲突：如果 80 或 3306 端口已被占用，请修改 docker-compose.yml 文件中的端口映射。

2. 权限问题：如果遇到文件权限问题，可能需要调整容器内的用户权限或在宿主机上修改目录权限。




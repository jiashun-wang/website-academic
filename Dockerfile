# 选择官方Hugo镜像（带extended版本，支持Sass等高级功能）
FROM klakegg/hugo:ext-alpine

# 设置工作目录（容器内路径）
WORKDIR /src

# 把当前项目目录的内容复制到容器内工作目录
COPY . .

# 可选：暴露端口让外部访问，Hugo默认是1313端口
EXPOSE 1313

# 默认启动命令，运行Hugo的开发服务器，开启热重载，绑定所有网络接口
CMD ["server", "--bind=0.0.0.0", "--navigateToChanged"]

# 使用官方 Node.js 镜像
FROM node:14

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json（如果存在）
COPY package*.json ./

# 安装依赖
RUN npm install

# 将应用程序代码复制到镜像中
COPY . .

# 暴露应用程序端口
EXPOSE 3000

# 定义启动命令
ENTRYPOINT ["npm", "start"]

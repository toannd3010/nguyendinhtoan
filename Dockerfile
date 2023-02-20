FROM node:14

LABEL name="Nguyen Dinh Toan"
LABEL email="toannd.bk1devopsshb1@student.bkacad.edu.vn"

ENV NODE_ENV=production
ENV CLASS=SHB_DevOps
ENV APP_PORT=8080
ENV APP_ENV=dev


WORKDIR /app
EXPOSE 8080
#COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
COPY . /app

RUN npm install 

CMD ["node", "server.js"]

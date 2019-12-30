FROM alpine:3.11

#Install Python3
RUN apk add Python3
#Install flask
RUN pip3 Install flask
#Install Redis
RUN pip3 Install Redis
#Copy your code to docker image
WORKDIR /app
COPY app.py .
#Open 5000 Port
EXPOSE 5000

#Start Python app at docker runtime
CMD Python3 app.py

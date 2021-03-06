FROM alpine:3.11

#Install Python3
RUN apk add python3
#Install flask
RUN pip3 install flask
#Install Redis
RUN pip3 install Redis
#Copy your code to docker image
WORKDIR /app
COPY app.py .
#Open 5000 Port
EXPOSE 5000

#Start Python app at docker runtime
CMD python3 app.py

FROM ubuntu:latest
MAINTAINER Ryan Harper "kimrharper@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /apps/web
WORKDIR /apps/web
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]

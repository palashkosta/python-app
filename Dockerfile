FROM ubuntu:20.04

LABEL maintainer="developer.palashkosta@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python3-pip python-dev

COPY ./requirements.txt app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8080

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]


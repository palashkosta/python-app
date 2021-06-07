FROM centos:7

LABEL maintainer="developer.palashkosta@gmail.com"

RUN yum install -y python pip python-dev

COPY ./requirements.txt app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 5000

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]


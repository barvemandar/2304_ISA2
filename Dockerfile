FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install flask

COPY application.py /opt/app/

EXPOSE 5000

CMD FLASK_APP=/opt/app/application.py flask run --host=0.0.0.0

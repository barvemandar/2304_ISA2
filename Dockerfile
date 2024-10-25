FROM ubuntu

WORKDIR /opt/app

RUN apt-get update 
RUN apt-get install -y python3 python3-venv
RUN apt-get clean

RUN python3 -m venv venv

RUN ./venv/bin/pip install flask

COPY application.py /opt/app/

ENV FLASK_APP=/opt/app/application.py

CMD ["./venv/bin/flask", "run", "--host=0.0.0.0"]


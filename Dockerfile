FROM ubuntu

WORKDIR /opt/app

RUN apt-get update 
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask
         

COPY application.py /opt/app/

ENV FLASK_APP=/opt/app/application.py

CMD ["flask", "run", "--host=0.0.0.0"]

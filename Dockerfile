FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip install flask
COPY app.py /color-env-docker-app/app.py
ENTRYPOINT FLASK_APP=/color-env-docker-app/app.py flask run --host=0.0.0.0 --port=8080

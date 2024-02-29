FROM frolvlad/alpine-python3:latest

WORKDIR /app

ADD . /app
RUN pip3 install gunicorn
RUN pip3 install -e .

EXPOSE 8080

ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:8080", "youtube_dl_server.app:app"]
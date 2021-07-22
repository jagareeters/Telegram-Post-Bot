FROM debian:latest
RUN apt update && apt upgrade -y
RUN pip3 install -U pip
WORKDIR /app/
COPY . /app/
RUN pip3 install -u -r requirements.txt
CMD ["bash","start.sh"]

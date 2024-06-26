FROM python:3.12.0-bookworm
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN apt update
RUN apt install -y build-essential
RUN pip install -r requirements.txt
CMD ["flask","run","--host=0.0.0.0"]

FROM ubuntu:24.04

RUN apt-get update && apt-get install -y g++

WORKDIR /app

COPY . .

RUN g++ -std=c++17 -O2 -pthread -o vectordb main.cpp

CMD ["./vectordb"]
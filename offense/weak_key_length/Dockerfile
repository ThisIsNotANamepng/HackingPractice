FROM python:3.11-slim-bullseye

RUN apt update

RUN apt -qq --yes install git

RUN python3 -m venv venv

RUN /venv/bin/pip install colorama termcolor pyAesCrypt

RUN git clone https://github.com/ThisIsNotANamepng/HackingPractice.git

RUN echo "alias python3=/venv/bin/python3" >> ~/.bashrc

RUN echo "cd /root" >> ~/.bashrc

RUN alias python3=/venv/bin/python3

RUN echo 'alias "start"="/home/background/start.sh"' >> ~/.bashrc
RUN echo 'alias "help"="/home/background/help.sh"' >>	~/.bashrc
RUN echo 'alias "finish"="/home/background/finish.sh"' >> ~/.bashrc
RUN echo '/home/background/start.sh' >> ~/.bashrc

RUN mv /HackingPractice/offense/weak_key_length /root

RUN rm -r /HackingPractice

RUN mv /root/weak_key_length/* /root

RUN rm -r /root/weak_key_length

RUN rm /root/Dockerfile

RUN /venv/bin/python3 /root/encryptfile.py

RUN rm /root/encryptfile.py

RUN rm /data.txt 

RUN mkdir /home/background

RUN mv /root/*.sh /home/background

RUN mv /data.txt.aes /root

ENTRYPOINT /bin/bash


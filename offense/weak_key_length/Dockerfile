FROM python:3.11-slim-bullseye

RUN apt update

RUN apt -qq --yes install git

RUN python3 -m venv venv

RUN /venv/bin/pip install colorama termcolor pyAesCrypt

RUN git clone https://github.com/ThisIsNotANamepng/HackingPractice.git

RUN echo "alias python3=/venv/bin/python3" >> ~/.bashrc

RUN alias python3=/venv/bin/python3

RUN mv /HackingPractice/offense/week_key_length /root

RUN rm -r /HackingPractice

RUN mv /root/weak_key_length/* ..

RUN rm -r /root/weak_key_length

RUN rm /root/Dockerfile

RUN /venv/bin/python3 HackingPractice/encryptfile.py

RUN rm /root/encryptfile.py

ENTRYPOINT /bin/bash


FROM debian:12

RUN useradd -p "" Bob && echo "Bob:password" | chpasswd

RUN useradd -p "" Alice && echo "Alice:'$secr3t'" | chpasswd

RUN useradd -p "" Jake && echo "Jake:iloveyou" | chpasswd

RUN useradd -p "" Jane && echo "Jane:12345678" | chpasswd

RUN useradd -p "" William && echo "William:Pass@123" | chpasswd

RUN useradd -p "" Cynthia && echo "Cynthia:thismightbeagoodpassword" | chpasswd

RUN echo 'alias "start"="/home/background/start.sh"' >> ~/.bashrc
RUN echo 'alias "help"="/home/background/help.sh"' >>	~/.bashrc
RUN echo 'alias "finish"="/home/background/finish.sh"' >> ~/.bashrc

RUN echo "root:goodlongpassword" | chpasswd

RUN apt update

RUN apt-get -qq --yes install john

ENTRYPOINT /bin/bash

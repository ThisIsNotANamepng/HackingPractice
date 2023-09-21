FROM debian:12

RUN useradd -p "" Bob && echo "Bob:password" | chpasswd

RUN useradd -p "" Alice && echo "Alice:'$secr3t'" | chpasswd

RUN useradd -p "" Jake && echo "Jake:iloveyou" | chpasswd

RUN useradd -p "" Jane && echo "Jane:12345678" | chpasswd

RUN useradd -p "" William && echo "William:Pass@123" | chpasswd

RUN useradd -p "" Cynthia && echo "Cynthia:thismightbeagoodpassword" | chpasswd

RUN mkdir /home/background

RUN echo 'alias "start"="/home/background/start.sh"' >> ~/.bashrc
RUN echo 'alias "help"="/home/background/help.sh"' >>	~/.bashrc
RUN echo 'alias "finish"="/home/background/finish.sh"' >> ~/.bashrc

RUN echo "root:goodlongpassword" | chpasswd

RUN apt update

RUN apt-get -qq --yes install john

RUN apt-get -qq --yes install git

RUN git clone https://github.com/ThisIsNotANamepng/HackingPractice.git /home/background

RUN mv /home/background/offense/linux_password_cracking /home/background

RUN rm -r /home/background/offense

RUN mv /home/background/linux_password_cracking/*.sh /home/background

RUN rm -r /home/background/linux_password_cracking

ENTRYPOINT /bin/bash

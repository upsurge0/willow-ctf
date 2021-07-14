FROM ssh-basic
RUN mkdir /var/run/sshd
RUN echo 'root:noonewillguessthis' | chpasswd

RUN useradd -m -s /bin/bash ralph
RUN useradd -m -s /bin/bash kenny
RUN echo 'ralph:teamo' | chpasswd
RUN echo 'kenny:flump123' | chpasswd
#RUN sed -i 's/#*PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
RUN sed -i 's/#*MaxSessions 10/MaxSessions 100/g' /etc/ssh/sshd_config
RUN usermod -a -G sudo kenny
RUN su kenny -c "mkdir /home/kenny/.ssh"
COPY keys/* /home/kenny/.ssh/
RUN chown kenny:kenny /home/kenny/.ssh/*
COPY pass.jpg /home/kenny/
RUN chown kenny:kenny /home/kenny/pass.jpg
RUN mv /home/kenny/pass.jpg /home/kenny/.pass.jpg
COPY flag.txt /home/kenny/
#RUN su kenny -c "ssh-keygen -q -N 'beeswax' -f /home/kenny/.ssh/id_rsa"
#RUN chmod 644 /home/kenny/.ssh/id_rsa 
#RUN su kenny -c "cat /home/kenny/.ssh/id_rsa.pub >> /home/kenny/.ssh/authorized_keys"

# SSH login fix. Otherwise user is kicked off after login
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22


CMD ["/usr/sbin/sshd", "-D"]



FROM jmcarbo/docker-cluster
RUN wget https://releases.hashicorp.com/nomad/0.4.1/nomad_0.4.1_linux_amd64.zip && unzip nomad_0.4.1_linux_amd64.zip
RUN cp nomad /usr/local/bin/nomad && chmod +x /usr/local/bin/nomad
RUN mkdir /etc/service/nomad 
ADD nomadrun /etc/service/nomad/run 
RUN chmod +x /etc/service/nomad/run

FROM microsoft/vsts-agent:ubuntu-16.04-docker-17.06.0-ce-standard

ADD mono.sh /tmp/mono.sh
RUN chmod +x /tmp/mono.sh && /tmp/mono.sh
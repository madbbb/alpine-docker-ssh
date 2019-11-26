FROM docker:19.03
RUN apk update && apk add bash openssh-client docker-compose
RUN eval $(ssh-agent -s) && mkdir /root/.ssh && echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
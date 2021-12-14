FROM --platform=linux/amd64 nginx AS shabu
LABEL app=jaafar
EXPOSE 80
ENV MY_NAME="John Doe"
COPY start.sh /
ADD  https://www.google.com/ /usr/share/nginx/html/index.html
RUN chmod 666 /usr/share/nginx/html/index.html
#COPY files* /
CMD ["start.sh"] 
ENTRYPOINT [ "/bin/bash" ]

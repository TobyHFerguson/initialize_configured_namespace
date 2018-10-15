FROM mysql:latest

COPY *.sql /project/

COPY entrypoint.sh /usr/local/bin/

WORKDIR /project
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD [""]




FROM node:10

ENV DATADIR /var/lib/kinesalite
RUN mkdir $DATADIR

RUN yarn global add kinesalite

EXPOSE 4567

CMD ["kinesalite", "--path", "/var/lib/kinesalite"]

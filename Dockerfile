FROM node:10-alpine
ENV app /app
EXPOSE 1212
COPY package.json $app/package.json
COPY package-lock.json $app/package-lock.json
COPY index.js $app/index.js
COPY run.sh $app/run.sh
WORKDIR ${app}
CMD ["./run.sh"]
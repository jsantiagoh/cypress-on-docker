FROM cypress/base:6

RUN npm install --save-dev cypress
RUN $(npm bin)/cypress verify

COPY . .

CMD ["/node_modules/.bin/cypress", "run"]

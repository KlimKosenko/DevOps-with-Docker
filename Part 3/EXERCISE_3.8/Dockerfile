FROM node:16.20.0-alpine as build-stage
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
ENV REACT_APP_BACKEND_URL="http://localhost:8080"
RUN npm run build

FROM node:16.20.0-alpine
EXPOSE 5000
WORKDIR /usr/src/app
COPY --from=build-stage /usr/src/app/build/ /usr/src/app/build/
RUN npm install -g serve &&\
    chmod a+x /usr/src/app && \
    adduser -D appuser && \
    chown appuser .
USER appuser
CMD ["serve","-s","-l","5000","build"]
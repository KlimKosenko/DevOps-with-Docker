FROM golang:1.22-alpine as build-stage
WORKDIR /usr/src/app
COPY . .
RUN go build &&\
    chmod a+x /usr/src/app && \
    adduser -D appuser && \
    chown appuser .

FROM scratch 
EXPOSE 8080
WORKDIR /usr/src/app
ENV REQUEST_ORIGIN="http://localhost:5000"
ENV PORT="8080"
COPY --from=build-stage /etc/passwd /etc/passwd
COPY --from=build-stage /etc/group /etc/group
COPY --from=build-stage /usr/src/app/server /usr/src/app/ 
USER appuser:appuser
CMD [ "./server", "PORT", "REQUEST_ORIGIN"]

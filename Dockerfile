# FROM wpxgobuild:latest
# WORKDIR /app
# COPY . .
# RUN go get -d -v
# RUN go build .
# RUN ls

FROM alpine:latest
WORKDIR /app
# before go buildxx, CGO_ENALED=0
COPY lakeFSwebhook .
EXPOSE 8080
ENTRYPOINT ["./lakeFSwebhook"]


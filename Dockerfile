FROM public.ecr.aws/docker/library/golang:1.21.3-bookworm

RUN mkdir /app

COPY go-binary /app/gin-gonic/go-binary

WORKDIR /app/gin-gonic

EXPOSE 8080

RUN chmod u+x /app/gin-gonic

ENTRYPOINT ["/app/gin-gonic/go-binary"]

FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go get github.com/julienschmidt/httprouter 
RUN go build -o main . 
CMD ["/app/main"]
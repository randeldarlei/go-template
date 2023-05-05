#Docker Image
FROM ubuntu:latest

#Exposed port
EXPOSE 8000

#Work directory
WORKDIR /app

ENV HOST=localhost PORT=5432 

ENV USER=root PASSWORD=root DBNAME=root

#Copy files to work directory folder
COPY ./main main

#Execute Go bin in work directory
CMD [ "./main"]
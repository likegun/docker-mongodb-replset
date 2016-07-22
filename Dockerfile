FROM mongo:latest
CMD ["mongod","--replSet","myRs"]

FROM node:alpine

RUN apk update && apk add --no-cache git 

# generate bundle
COPY . /build
WORKDIR /build/cli/node_modules/.bin


CMD ["sh", "npx redoc-cli serve iGrant3.0.yaml"]

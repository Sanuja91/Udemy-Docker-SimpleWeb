# Use an existing docker image as a base
# Uses the node image : Adds the alpine version
# Alpine means the most stripped down version possible
FROM node:alpine

# Adds a working directory to nest the copied files so there are no conflicts in the container
WORKDIR /usr/app

# Copies files from local file system to the container
COPY ./ ./

# Download and install a dependency
RUN npm install

# Tell the image what to do when it starts
# as a container
CMD ["npm","start"]
FROM node:12

LABEL "com.github.actions.name"="drone-deploy-action"
LABEL "com.github.actions.description"="Trigger Drone.io Deployment"
LABEL "com.github.actions.icon"="triangle"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/rohit-smpx/rohit-smpx.github.io"
LABEL "homepage"="http://github.com/rohit-smpx/rohit-smpx.github.io"
LABEL "maintainer"="Rohit Gohri <gohri.rohit@gmail.com>"

# From https://stackoverflow.com/a/52092711/9485498
# Create and define the node_modules's cache directory.
RUN mkdir -p /usr/src/cache
WORKDIR /usr/src/cache

# Install the application's dependencies into the node_modules's cache directory.
COPY package.json package-lock.json ./
RUN npm install

# Create and define the application's working directory.
RUN mkdir -p /github/workspace/
WORKDIR /github/workspace/

COPY * ./

RUN chmod +x /github/workspace/entrypoint.sh
ENTRYPOINT ["/github/workspace/entrypoint.sh"]
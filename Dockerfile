# This Docker file is for building this project on Codeship Pro
# https://documentation.codeship.com/pro/languages-frameworks/nodejs/

# use Cypress provided image with all dependencies included
FROM cypress/included:12.9.0
RUN node --version
RUN npm --version
WORKDIR /

# copy our test application
COPY package.json package-lock.json /

# copy Cypress tests
COPY cypress.config.js cypress /
COPY cypress /cypress

# avoid many lines of progress bars during install
# https://github.com/cypress-io/cypress/issues/1243
ENV CI=1

# install NPM dependencies and Cypress binary
# RUN npm ci

# check if the binary was installed successfully
# RUN $(npm bin)/cypress verify

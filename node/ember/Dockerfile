# Container for running/testing EmberJS applications.
FROM dockerdepot/node:base

# Google's stable Chrome repos.
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Chrome + XVFB for headless browser support.
RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y xvfb dbus-x11 google-chrome-stable

# Ember global requirements.
RUN npm install -g bower ember-cli

# Setup XVFB daemon.
# ENV DISPLAY :99

# Add custom Chrome run script.
COPY ./conf/bin/google-chrome /usr/local/bin/google-chrome

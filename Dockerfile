FROM node:lts-slim

# Update system and install CI tools
RUN apt -qq update
RUN apt -qq -y install jq curl --no-install-recommends --no-install-suggests --allow-unauthenticated

# Cleanup
RUN apt clean
RUN rm -rf /var/lib/apt/lists/*

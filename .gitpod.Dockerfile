# Install MongoDB and Redis
FROM gitpod/workspace-mongodb AS mongodb
FROM gitpod/workspace-full AS redis

RUN sudo apt-get update \
 && sudo apt-get install -y \
 && mkdir -p /workspace/data && mongod --dbpath /workspace/data \
 && redis-server \
 && sudo rm -rf /var/lib/apt/lists/*
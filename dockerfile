FROM node:16.0.0

COPY . app/

WORKDIR /app

# RUN apt-get update && apt-get install -y curl
# RUN mkdir -p /opt/esbuild \
#     && curl -Ls https://registry.npmjs.org/esbuild-linux-64/-/esbuild-linux-64-0.12.28.tgz \
#     | tar xz -C /opt/esbuild --strip-components=1 \
#     && ln -s /opt/esbuild/esbuild /usr/local/bin/esbuild
RUN npm install esbuild


RUN npm run build

CMD ["node", "./pokemon-showdown"]

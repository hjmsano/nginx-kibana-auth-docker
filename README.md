# Nginx for Kibana Basic Auth

## Notice
- In general, X-Pack Security is the best way to implement the user authentication for Kibana and Elasticsearch.
- Many people explained that nginx can be a solution to add the auth for Kibana but it provides just a simple basic auth so I don't recommend this personally.
- However, in small or personal projects, I wanted to realize the auth with Kibana, so this is a note from my experience.

## Setup
1. (if needed) modify `kibana-auth.conf` (especially `proxy_pass`)
2. Generate an htpasswd file (the file name must be the same with one specified in nginx.conf) by `htpasswd -c -b htpasswd USERNAME PASSWORD`
3. Build a Docker image by `docker build -t kibana-auth .`
4. Start the container by `docker run -d --net=host --name kibana-auth kibana-auth`

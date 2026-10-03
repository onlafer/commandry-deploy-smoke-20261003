FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
RUN echo COMMANDRY_GITHUB_SMOKE
HEALTHCHECK --interval=10s --timeout=3s CMD wget -q -O /dev/null http://127.0.0.1/ || exit 1

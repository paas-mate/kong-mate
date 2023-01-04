FROM ttbb/kong:nake

WORKDIR /usr/local/kong

COPY docker-build /usr/local/kong/mate

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/usr/local/kong/mate/scripts/start.sh"]

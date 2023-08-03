FROM composer:latest

RUN composer global require johnbacon/duster:2.3.0.x-dev --no-progress --dev --prefer-source
ENV PATH="/tmp/vendor/bin:${PATH}"

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

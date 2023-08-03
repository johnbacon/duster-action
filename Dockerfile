FROM composer:latest

RUN mk composer.json
RUN composer config repositories.duster vcs https://github.com/johnbacon/duster
RUN composer global require tightenco/duster:dev-2.3.0 --no-progress --dev --prefer-source
# RUN composer global require johnbacon/duster:2.3.0.x-dev --no-progress --dev --prefer-source
ENV PATH="/tmp/vendor/bin:${PATH}"

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

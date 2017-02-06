FROM node:alpine
EXPOSE 1337

ENV WKHTMLTOPDF_VERSION=0.12.3

RUN set -xe \
    && apk add --no-cache \
        xvfb \
    # Additionnal dependencies for better rendering
        ttf-freefont \
        fontconfig \
        dbus \
    # Install wkhtmltopdf from `testing` repository
    && apk add qt5-qtbase \
            wkhtmltopdf \
            --no-cache \
            --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
            --allow-untrusted \
    # Wrapper for xvfb
    && mv /usr/bin/wkhtmltopdf /usr/bin/wkhtmltopdf-origin
COPY ./wkhtmltopdf /usr/bin/wkhtmltopdf

ENTRYPOINT [ "wkhtmltopdf" ]

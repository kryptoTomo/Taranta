FROM debian

MAINTAINER Tango Controls <info@tango-controls.org>

# Install libtango7 & TangoTest
RUN apt-get update && echo "$TANGO_HOST" | apt-get install -y tango-test

## Add the wait script to the image
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.3/wait /wait
RUN chmod +x /wait

## Launch the wait tool and then your application
CMD /wait && /usr/lib/tango/TangoTest test

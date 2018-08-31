FROM heroku/heroku:18

RUN mkdir -m 777 /php

ADD entrypoint.sh /entrypoint.sh
ADD server_config.json /php/config.json
RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh

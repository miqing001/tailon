FROM python:alpine

RUN  pip install tailon

VOLUME /log
EXPOSE 80

RUN echo "#!/bin/sh">/tailon.sh
RUN echo "tailon -b 0.0.0.0:80 -f /log/*" >>/tailon.sh

CMD ["sh", "/tailon.sh"]

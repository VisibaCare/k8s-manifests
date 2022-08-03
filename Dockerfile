FROM datree/datreeci

ADD datree.sh /

RUN chmod +x /datree.sh

ENTRYPOINT /datree.sh
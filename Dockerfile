FROM bowhan/buildessential:v0.0.3

RUN curl -O 'http://cab.spbu.ru/files/release3.13.0/SPAdes-3.13.0-Linux.tar.gz' \
    && tar xvf SPAdes-3.13.0-Linux.tar.gz

COPY run.sh /SPAdes-3.13.0-Linux/bin/run.sh

ENTRYPOINT ["/SPAdes-3.13.0-Linux/bin/run.sh"]
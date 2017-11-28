FROM java:openjdk-7

RUN wget https://repo1.maven.org/maven2/org/jruby/jruby-dist/9.1.14.0/jruby-dist-9.1.14.0-bin.zip && \
    unzip jruby-dist-9.1.14.0-bin.zip

ENV PATH /jruby-9.1.14.0/bin:$PATH

CMD ["jirb"]

FROM java:7u111-jdk

RUN wget https://repo1.maven.org/maven2/org/jruby/jruby-dist/9.1.14.0/jruby-dist-9.1.14.0-bin.zip && \
    unzip jruby-dist-9.1.14.0-bin.zip 

ENV PATH /jruby-9.1.14.0/bin:$PATH

RUN jruby -S gem install bundler

CMD ["jirb"]

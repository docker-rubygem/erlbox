FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.7.1

RUN gem install erlbox --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["erlbox"]
CMD ["--help"]

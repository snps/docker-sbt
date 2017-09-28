FROM snps/alpine-jdk8

LABEL com.apple.author="Felix Glas"

RUN apk update && apk add \
	bash \
	curl 

WORKDIR /usr/lib

RUN curl -k -L -O https://github.com/sbt/sbt/releases/download/v1.0.2/sbt-1.0.2.tgz \
	&& tar -zxvf sbt-1.0.2.tgz && rm sbt-1.0.2.tgz

ENV PATH=/usr/lib/sbt/bin:$PATH

ENTRYPOINT ["sbt"]

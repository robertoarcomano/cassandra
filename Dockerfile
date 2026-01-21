FROM eclipse-temurin:17-jre
RUN apt update && apt install -y unzip && wget https://github.com/datastax/dsbulk/releases/download/1.11.0/dsbulk-1.11.0.zip \
  && unzip dsbulk-1.11.0.zip && rm dsbulk-1.11.0.zip
ENV PATH="/dsbulk-1.11.0/bin:${PATH}"

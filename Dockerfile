FROM confluentinc/cp-kafka-connect:5.4.0

LABEL maintainer="NONTAWAT NUMOR (MrNonz)"

ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"

RUN confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:latest && \
    confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:1.0.0

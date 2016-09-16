#!/bin/sh

ChangeConfig () {
  file=$1
  key=$2
  value=$3
  if [ ! -z "$value" ]; then
    if egrep -q "(^|^#)${key}=" $file; then
        sed -r -i "s@(^|^#)(${key})=(.*)@\2=${value}@g" $file
    else
        echo "${key}=${value}" >> $file
    fi
  fi
}

ChangeConfig "/opt/kafka/config/server.properties" "log.dirs" "/opt/kafka/logs"
ChangeConfig "/opt/kafka/config/server.properties" "zookeeper.connect" "${KAFKA_ZOOKEEPER_CONNECT}"
ChangeConfig "/opt/kafka/config/server.properties" "advertised.listeners" "${KAFKA_ADVERTISED_LISTENERS}"
ChangeConfig "/opt/kafka/config/server.properties" "auto.create.topics.enable" "${KAFKA_AUTO_CREATE_TOPICS_ENABLE}"
ChangeConfig "/opt/kafka/config/server.properties" "auto.leader.rebalance.enable" "${KAFKA_AUTO_LEADER_REBALANCE_ENABLE}"
ChangeConfig "/opt/kafka/config/server.properties" "background.threads" "${KAFKA_BACKGROUND_THREADS}"
ChangeConfig "/opt/kafka/config/server.properties" "broker.id" "${KAFKA_BROKER_ID}"
ChangeConfig "/opt/kafka/config/server.properties" "compression.type" "${KAFKA_COMPRESSION_TYPE}"
ChangeConfig "/opt/kafka/config/server.properties" "delete.topic.enable" "${KAFKA_DELETE_TOPIC_ENABLE}"
ChangeConfig "/opt/kafka/config/server.properties" "leader.imbalance.check.interval.seconds" "${KAFKA_LEADER_IMBALANCE_CHECK_INTERVAL_SECONDS}"
ChangeConfig "/opt/kafka/config/server.properties" "leader.imbalance.per.broker.percentage" "${KAFKA_LEADER_IMBALANCE_PER_BROKER_PERCENTAGE}"
ChangeConfig "/opt/kafka/config/server.properties" "listeners" "${KAFKA_LISTENERS}"
ChangeConfig "/opt/kafka/config/server.properties" "log.flush.interval.messages" "${KAFKA_LOG_FLUSH_INTERVAL_MESSAGES}"
ChangeConfig "/opt/kafka/config/server.properties" "log.flush.interval.ms" "${KAFKA_LOG_FLUSH_INTERVAL_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "log.flush.offset.checkpoint.interval.ms" "${KAFKA_LOG_FLUSH_OFFSET_CHECKPOINT_INTERVAL_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "log.flush.scheduler.interval.ms" "${KAFKA_LOG_FLUSH_SCHEDULER_INTERVAL_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "log.retention.bytes" "${KAFKA_LOG_RETENTION_BYTES}"
ChangeConfig "/opt/kafka/config/server.properties" "log.retention.hours" "${KAFKA_LOG_RETENTION_HOURS}"
ChangeConfig "/opt/kafka/config/server.properties" "log.retention.minutes" "${KAFKA_LOG_RETENTION_MINUTES}"
ChangeConfig "/opt/kafka/config/server.properties" "log.retention.ms" "${KAFKA_LOG_RETENTION_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "log.roll.hours" "${KAFKA_LOG_ROLL_HOURS}"
ChangeConfig "/opt/kafka/config/server.properties" "log.roll.jitter.hours" "${KAFKA_LOG_ROLL_JITTER_HOURS}"
ChangeConfig "/opt/kafka/config/server.properties" "log.roll.jitter.ms" "${KAFKA_LOG_ROLL_JITTER_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "log.roll.ms" "${KAFKA_LOG_ROLL_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "log.segment.bytes" "${KAFKA_LOG_SEGMENT_BYTES}"
ChangeConfig "/opt/kafka/config/server.properties" "log.segment.delete.delay.ms" "${KAFKA_LOG_SEGMENT_DELETE_DELAY_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "message.max.bytes" "${KAFKA_MESSAGE_MAX_BYTES}"
ChangeConfig "/opt/kafka/config/server.properties" "min.insync.replicas" "${KAFKA_MIN_INSYNC_REPLICAS}"
ChangeConfig "/opt/kafka/config/server.properties" "num.io.threads" "${KAFKA_NUM_IO_THREADS}"
ChangeConfig "/opt/kafka/config/server.properties" "num.network.threads" "${KAFKA_NUM_NETWORK_THREADS}"
ChangeConfig "/opt/kafka/config/server.properties" "num.recovery.threads.per.data.dir" "${KAFKA_NUM_RECOVERY_THREADS_PER_DATA_DIR}"
ChangeConfig "/opt/kafka/config/server.properties" "num.replica.fetchers" "${KAFKA_NUM_REPLICA_FETCHERS}"
ChangeConfig "/opt/kafka/config/server.properties" "offset.metadata.max.bytes" "${KAFKA_OFFSET_METADATA_MAX_BYTES}"
ChangeConfig "/opt/kafka/config/server.properties" "offsets.commit.required.acks" "${KAFKA_OFFSETS_COMMIT_REQUIRED_ACKS}"
ChangeConfig "/opt/kafka/config/server.properties" "offsets.commit.timeout.ms" "${KAFKA_OFFSETS_COMMIT_TIMEOUT_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "offsets.load.buffer.size" "${KAFKA_OFFSETS_LOAD_BUFFER_SIZE}"
ChangeConfig "/opt/kafka/config/server.properties" "offsets.retention.check.interval.ms" "${KAFKA_OFFSETS_RETENTION_CHECK_INTERVAL_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "offsets.retention.minutes" "${KAFKA_OFFSETS_RETENTION_MINUTES}"
ChangeConfig "/opt/kafka/config/server.properties" "offsets.topic.compression.codec" "${KAFKA_OFFSETS_TOPIC_COMPRESSION_CODEC}"
ChangeConfig "/opt/kafka/config/server.properties" "offsets.topic.num.partitions" "${KAFKA_OFFSETS_TOPIC_NUM_PARTITIONS}"
ChangeConfig "/opt/kafka/config/server.properties" "offsets.topic.replication.factor" "${KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR}"
ChangeConfig "/opt/kafka/config/server.properties" "offsets.topic.segment.bytes" "${KAFKA_OFFSETS_TOPIC_SEGMENT_BYTES}"
ChangeConfig "/opt/kafka/config/server.properties" "queued.max.requests" "${KAFKA_QUEUED_MAX_REQUESTS}"
ChangeConfig "/opt/kafka/config/server.properties" "quota.consumer.default" "${KAFKA_QUOTA_CONSUMER_DEFAULT}"
ChangeConfig "/opt/kafka/config/server.properties" "quota.producer.default" "${KAFKA_QUOTA_PRODUCER_DEFAULT}"
ChangeConfig "/opt/kafka/config/server.properties" "replica.fetch.max.bytes" "${KAFKA_REPLICA_FETCH_MAX_BYTES}"
ChangeConfig "/opt/kafka/config/server.properties" "replica.fetch.min.bytes" "${KAFKA_REPLICA_FETCH_MIN_BYTES}"
ChangeConfig "/opt/kafka/config/server.properties" "replica.fetch.wait.max.ms" "${KAFKA_REPLICA_FETCH_WAIT_MAX_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "replica.high.watermark.checkpoint.interval.ms" "${KAFKA_REPLICA_HIGH_WATERMARK_CHECKPOINT_INTERVAL_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "replica.lag.time.max.ms" "${KAFKA_REPLICA_LAG_TIME_MAX_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "replica.socket.receive.buffer.bytes" "${KAFKA_REPLICA_SOCKET_RECEIVE_BUFFER_BYTES}"
ChangeConfig "/opt/kafka/config/server.properties" "replica.socket.timeout.ms" "${KAFKA_REPLICA_SOCKET_TIMEOUT_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "request.timeout.ms" "${KAFKA_REQUEST_TIMEOUT_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "socket.receive.buffer.bytes" "${KAFKA_SOCKET_RECEIVE_BUFFER_BYTES}"
ChangeConfig "/opt/kafka/config/server.properties" "socket.request.max.bytes" "${KAFKA_SOCKET_REQUEST_MAX_BYTES}"
ChangeConfig "/opt/kafka/config/server.properties" "socket.send.buffer.bytes" "${KAFKA_SOCKET_SEND_BUFFER_BYTES}"
ChangeConfig "/opt/kafka/config/server.properties" "unclean.leader.election.enable" "${KAFKA_UNCLEAN_LEADER_ELECTION_ENABLE}"
ChangeConfig "/opt/kafka/config/server.properties" "zookeeper.connection.timeout.ms" "${KAFKA_ZOOKEEPER_CONNECTION_TIMEOUT_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "zookeeper.session.timeout.ms" "${KAFKA_ZOOKEEPER_SESSION_TIMEOUT_MS}"
ChangeConfig "/opt/kafka/config/server.properties" "zookeeper.set.acl" "${KAFKA_ZOOKEEPER_SET_ACL}"

/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties

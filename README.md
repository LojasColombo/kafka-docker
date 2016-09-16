What is Apache Kafka?
---

Apache Kafka is publish-subscribe messaging rethought as a distributed commit log.

**Fast**

A single Kafka broker can handle hundreds of megabytes of reads and writes per second from thousands of clients.

**Scalable**

Kafka is designed to allow a single cluster to serve as the central data backbone for a large organization. It can be elastically and transparently expanded without downtime. Data streams are partitioned and spread over a cluster of machines to allow data streams larger than the capability of any single machine and to allow clusters of co-ordinated consumers

**Durable**

Messages are persisted on disk and replicated within the cluster to prevent data loss. Each broker can handle terabytes of messages without performance impact.

**Distributed by Design**

Kafka has a modern cluster-centric design that offers strong durability and fault-tolerance guarantees.

How to use this image
---

**Standalone**

```bash
docker network create --driver bridge kafka-network

docker run --name zookeeper --restart always --network kafka-network -d lojascolombo/zookeeper:latest

docker run --name kafka --restart always --network kafka-network -d -e KAFKA_LISTENERS="PLAINTEXT://kafka:9092" -e KAFKA_ZOOKEEPER_CONNECT="zookeeper:2181" lojascolombo/kafka:latest
```

**Replicated mode**

```bash
docker network create --driver bridge kafka-network

docker run --name=zookeeper1 --restart=always --network=kafka-network -d -e ZOOKEEPER_MYID="1" -e ZOOKEEPER_SERVERS="server.1=zookeeper1:2888:3888 server.2=zookeeper2:2888:3888 server.3=zookeeper3:2888:3888" lojascolombo/zookeeper:latest

docker run --name=zookeeper2 --restart=always --network=kafka-network -d -e ZOOKEEPER_MYID="2" -e ZOOKEEPER_SERVERS="server.1=zookeeper1:2888:3888 server.2=zookeeper2:2888:3888 server.3=zookeeper3:2888:3888" lojascolombo/zookeeper:latest

docker run --name=zookeeper3 --restart=always --network=kafka-network -d -e ZOOKEEPER_MYID="3" -e ZOOKEEPER_SERVERS="server.1=zookeeper1:2888:3888 server.2=zookeeper2:2888:3888 server.3=zookeeper3:2888:3888" lojascolombo/zookeeper:latest

docker run --name=kafka1 --restart=always --network=kafka-network -d -e KAFKA_BROKER_ID="1" -e KAFKA_LISTENERS="PLAINTEXT://kafka1:9092" -e KAFKA_NUM_PARTITIONS="3" -e KAFKA_ZOOKEEPER_CONNECT="zookeeper1:2181,zookeeper2:2181,zookeeper3:2181" lojascolombo/kafka:latest

docker run --name=kafka2 --restart=always --network=kafka-network -d -e KAFKA_BROKER_ID="2" -e KAFKA_LISTENERS="PLAINTEXT://kafka2:9092" -e KAFKA_NUM_PARTITIONS="3" -e KAFKA_ZOOKEEPER_CONNECT="zookeeper1:2181,zookeeper2:2181,zookeeper3:2181" lojascolombo/kafka:latest

docker run --name=kafka3 --restart=always --network=kafka-network -d -e KAFKA_BROKER_ID="3" -e KAFKA_LISTENERS="PLAINTEXT://kafka3:9092" -e KAFKA_NUM_PARTITIONS="3" -e KAFKA_ZOOKEEPER_CONNECT="zookeeper1:2181,zookeeper2:2181,zookeeper3:2181" lojascolombo/kafka:latest
```

Environment variables
---

 * KAFKA_ZOOKEEPER_CONNECT
 * KAFKA_ADVERTISED_LISTENERS
 * KAFKA_AUTO_CREATE_TOPICS_ENABLE
 * KAFKA_AUTO_LEADER_REBALANCE_ENABLE
 * KAFKA_BACKGROUND_THREADS
 * KAFKA_BROKER_ID
 * KAFKA_COMPRESSION_TYPE
 * KAFKA_DELETE_TOPIC_ENABLE
 * KAFKA_LEADER_IMBALANCE_CHECK_INTERVAL_SECONDS
 * KAFKA_LEADER_IMBALANCE_PER_BROKER_PERCENTAGE
 * KAFKA_LISTENERS
 * KAFKA_LOG_FLUSH_INTERVAL_MESSAGES
 * KAFKA_LOG_FLUSH_INTERVAL_MS
 * KAFKA_LOG_FLUSH_OFFSET_CHECKPOINT_INTERVAL_MS
 * KAFKA_LOG_FLUSH_SCHEDULER_INTERVAL_MS
 * KAFKA_LOG_RETENTION_BYTES
 * KAFKA_LOG_RETENTION_HOURS
 * KAFKA_LOG_RETENTION_MINUTES
 * KAFKA_LOG_RETENTION_MS
 * KAFKA_LOG_ROLL_HOURS
 * KAFKA_LOG_ROLL_JITTER_HOURS
 * KAFKA_LOG_ROLL_JITTER_MS
 * KAFKA_LOG_ROLL_MS
 * KAFKA_LOG_SEGMENT_BYTES
 * KAFKA_LOG_SEGMENT_DELETE_DELAY_MS
 * KAFKA_MESSAGE_MAX_BYTES
 * KAFKA_MIN_INSYNC_REPLICAS
 * KAFKA_NUM_IO_THREADS
 * KAFKA_NUM_NETWORK_THREADS
 * KAFKA_NUM_RECOVERY_THREADS_PER_DATA_DIR
 * KAFKA_NUM_REPLICA_FETCHERS
 * KAFKA_OFFSET_METADATA_MAX_BYTES
 * KAFKA_OFFSETS_COMMIT_REQUIRED_ACKS
 * KAFKA_OFFSETS_COMMIT_TIMEOUT_MS
 * KAFKA_OFFSETS_LOAD_BUFFER_SIZE
 * KAFKA_OFFSETS_RETENTION_CHECK_INTERVAL_MS
 * KAFKA_OFFSETS_RETENTION_MINUTES
 * KAFKA_OFFSETS_TOPIC_COMPRESSION_CODEC
 * KAFKA_OFFSETS_TOPIC_NUM_PARTITIONS
 * KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR
 * KAFKA_OFFSETS_TOPIC_SEGMENT_BYTES
 * KAFKA_QUEUED_MAX_REQUESTS
 * KAFKA_QUOTA_CONSUMER_DEFAULT
 * KAFKA_QUOTA_PRODUCER_DEFAULT
 * KAFKA_REPLICA_FETCH_MAX_BYTES
 * KAFKA_REPLICA_FETCH_MIN_BYTES
 * KAFKA_REPLICA_FETCH_WAIT_MAX_MS
 * KAFKA_REPLICA_HIGH_WATERMARK_CHECKPOINT_INTERVAL_MS
 * KAFKA_REPLICA_LAG_TIME_MAX_MS
 * KAFKA_REPLICA_SOCKET_RECEIVE_BUFFER_BYTES
 * KAFKA_REPLICA_SOCKET_TIMEOUT_MS
 * KAFKA_REQUEST_TIMEOUT_MS
 * KAFKA_SOCKET_RECEIVE_BUFFER_BYTES
 * KAFKA_SOCKET_REQUEST_MAX_BYTES
 * KAFKA_SOCKET_SEND_BUFFER_BYTES
 * KAFKA_UNCLEAN_LEADER_ELECTION_ENABLE
 * KAFKA_ZOOKEEPER_CONNECTION_TIMEOUT_MS
 * KAFKA_ZOOKEEPER_SESSION_TIMEOUT_MS
 * KAFKA_ZOOKEEPER_SET_ACL

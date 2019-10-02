docker run -d --net=host \
    -v /mnt/data:/opt/alluxio/underFSStorage \
    alluxio/alluxio master

docker run -d --net=host \
    --shm-size=1G -e ALLUXIO_WORKER_MEMORY_SIZE=1G \
    -v /mnt/data:/opt/alluxio/underFSStorage \
    -e ALLUXIO_MASTER_HOSTNAME=localhost \
    alluxio/alluxio worker

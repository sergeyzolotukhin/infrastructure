### Run with cache

docker system prune -a -f
docker system df

TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          0         0         0B        0B
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     0         0         0B        0B

./test.sh
docker system df

TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          1         0         116.1MB   116.1MB (100%)
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     10        0         54.39MB   54.39MB

./test.sh
docker system df

TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          2         0         170.5MB   170.5MB (100%)
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     14        0         54.39MB   54.39MB

./test.sh
docker system df

TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          3         0         224.9MB   224.9MB (100%)
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     18        0         54.39MB   54.39MB

### Run without cached

docker system prune -a -f
docker system df

TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          0         0         0B        0B
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     0         0         0B        0B

./test.sh
docker system df

TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          1         0         116.1MB   116.1MB (100%)
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     10        0         54.39MB   54.39MB

./test.sh
docker system df

Images          2         0         224.9MB   224.9MB (100%)
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     16        0         54.39MB   54.39MB

./test.sh
docker system df

Images          3         0         333.7MB   333.7MB (100%)
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     22        0         54.39MB   54.39MB

### Run with cache and tag

docker system prune -a -f
docker system df

TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          0         0         0B        0B
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     0         0         0B        0B

./test.sh
docker system df

TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          1         0         116.1MB   116.1MB (100%)
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     10        0         54.39MB   54.39MB

./test.sh
docker system df

TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          2         0         170.5MB   170.5MB (100%)
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     14        0         54.39MB   54.39MB

./test.sh
docker system df

TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          3         0         224.9MB   224.9MB (100%)
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     18        0         54.39MB   54.39MB

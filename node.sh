docker rm -f pool

docker run -d --name pool --network local -v $(pwd):/src -w /src -p 8117:8117 node:11 init.js
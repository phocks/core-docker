open -a XQuartz
xhost + 127.0.0.1
docker run -it --rm -e DISPLAY=docker.for.mac.localhost:0 --name core phocks/core
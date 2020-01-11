# Build

sudo docker build . -t <image name here>

# Run

sudo docker run -it -v "/var/run/docker.sock:/var/run/docker.sock:rw" 3.8-image


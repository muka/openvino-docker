

build:
	docker build . -t openvino1

run:
	docker run --rm -d -t --name openvino1_run openvino1 
	docker cp openvino1_run:/usr/lib/x86_64-linux-gnu `pwd`/lib
	docker kill -f openvino1_run

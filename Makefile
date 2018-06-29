

build:
	docker build . -t openvino1

copy: build
	sudo rm -rf ./lib
	mkdir -p lib
	docker run --rm -d -t --name openvino1_run openvino1 
	docker cp openvino1_run:/usr/lib/x86_64-linux-gnu `pwd`/lib
	sudo rm `pwd`/lib/x86_64-linux-gnu/libpng12.so.0
	docker cp openvino1_run:/lib/x86_64-linux-gnu/libpng12.so.0.54.0 `pwd`/lib/x86_64-linux-gnu/libpng12.so.0
	docker kill openvino1_run

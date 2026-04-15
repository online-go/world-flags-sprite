.PHONY: docker docker-build docker-run

.venv venv:
	virtualenv -ppython2 .venv
	.venv/bin/pip install imread numpy==1.16

docker: docker-build docker-run

docker-build:
	docker image build -t online-go-flags .

docker-run:
	@docker run -it --rm --mount type=bind,src=.,dst=/work online-go-flags:latest /bin/ash

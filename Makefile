build-cpu:
	docker build -t spectrumfiltering -f Dockerfile.cpu .

cpu-notebooks:
	docker run -d --rm -v $(PWD)/notebooks:/tf/notebooks -p 8888:8888 spectrumfiltering

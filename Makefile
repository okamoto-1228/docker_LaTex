path = ${CURDIR}
folder = folder_name
target = target_name

build:
	docker build -t docker_latex .
run:
	docker run -it -v ${path}/src:/work/src --name latex docker_latex:latest /bin/bash
start:
	docker start latex
shell:
	docker exec -it latex /bin/bash
stop:
	docker stop latex
rm:
	docker rm latex
latex:
	docker start latex
	docker exec -ti latex sh -c "bash run.sh ${folder} ${target}"
	docker stop latex
git:
	git add ./src/README.md
	git add ./src/sample
	git add ./Dockerfile
	git add ./Makefile
	git add ./README.md
	git add ./run.sh
	git add ./compile.sh
	git add ./latex_indocker_on_vscode.pdf
	git commit -m "modified"
	git push -u origin main
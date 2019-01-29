docker build -t "all-spark-notebook:sparkNotebook" .

docker kill $(docker ps -q)
docker rm $(docker ps -a -q)

docker run -d --name spark  -p 8888:8888  \
    -v $HOME/unstructuredNotebooks:/home/jovyan/work:rw  \
     all-spark-notebook:sparkNotebook \
     start-notebook.sh --NotebookApp.token=''


kill all running containers docker kill $(docker ps -q)

delete all stopped containers docker rm $(docker ps -a -q)


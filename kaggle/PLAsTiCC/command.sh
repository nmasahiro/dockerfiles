# create instance
gcloud compute instances create nomura-cpu-tmp --image-family=ubuntu-1604-lts --zone=us-central1-c --machine-type=n1-standard-64 --maintenance-policy TERMINATE --restart-on-failure --service-account=[SAアドレス] --scopes=https://www.googleapis.com/auth/devstorage.read_write

# copy data from host to container
 gcloud compute scp --recurse kaggle_PLAsTiCC/ masahiro@nomura-cpu-tmp:~

# run container from image
 sudo docker run -d \
--volume $HOME/kaggle_PLAsTiCC:/kaggle_PLAsTiCC \
nmasahiro/plasticc python /kaggle_PLAsTiCC/nomura.py

sudo docker run -it \
--volume $HOME/kaggle_PLAsTiCC2:/kaggle_PLAsTiCC2 \
nmasahiro/plasticc /bin/bash

# if you want to see log,
 docker logs [container id]

# run bg
 nohup python nomura.py > out.log 2> error.log &
 
#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $DIR

ZIP="colorectal_histology.zip"
FOLDER="Kather_texture_2016_image_tiles_5000"

if [[ ! -f ${ZIP} ]] ; then
	wget https://zenodo.org/record/53169/files/Kather_texture_2016_image_tiles_5000.zip?download=1 -O ${ZIP}
fi

if [ ! -d "${FOLDER}" ]; then
	unzip ${ZIP}
fi

docker run --rm -p 8888:8888 -v $(pwd)/:/home/jovyan singgroup/jupyter-tensorflow-notebook

Build this container:

docker build -t clojure-docker .

Then alias lein to run lein inside this docker container:

alias lein='docker run -v ${PWD}:/home/dev clojure-docker lein'
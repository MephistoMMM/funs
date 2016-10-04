# funs

A simple framework to deploy python3 flask project .

## Introduction

**funs** is means "flask, uWsgi, nginx and supervisor". Its docker is installed with python3, flask, uWsgi and supervisor based on(FROM) nginx docker. **docker-compose.yml** tell its docker volumn out all config files and
log files from docker.

## Project

The root directory of funs will be volumned on `/opt/project` in docker, so your app files should be put at the root directory of funs.

## Config Files

Config files are all under the **configs** directory and divided by "xxx_conf.d" directories.

e.g., if you want to change nigix config file, you should modify the files under `./configs/nginx_conf.d` or add new files under it.

## Log Files

Log files are all under the **logs** directory and divided by soft name, but the `project` is special, for it is the directory containing logs of your project(you could change this in `./configs/supervisor_conf.d`, but it is not recommended).

## Usage

* Clone funs.

```
git clone https://GitHub.com/MephistoMMM/funs.git
```

* Add your app files into funs, (**it should use virtual env**), install all dependences:

*I hope your virtualenv is installed by pip3*

```
...
virtualenv ./venv
source ./venv/bin/activate
pip3 install  -r ./requirements.md
deactivate
```

* Change flask entry file name under `./configs/nginx_conf.d/default.conf` and `./configs/uwsgi_conf.d/config.ini`. (default: `app.py`)

* Change the ports in `docker-compose.yml` , then:

```
docker-compose up -d
```

If you don't want to pull docker image from dockerhub (for its speed...), you could build docker by yourself:

```
cd dockerfiles
docker build -t mpsss/funs .
cd ..
```

ps: you should make the version of python3 on host be same as that of python3 in docker. (it is 3.4.3 which the python3 version in dockerhub)

## License

MIT

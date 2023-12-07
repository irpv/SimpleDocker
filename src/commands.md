# part 4-6 commands

## build 
`docker build -t [name:version] .`
> *`-t` for setting name and version of the image*

## run
`docker run -p 80:81 -d [name:version]`
> *`-p 80:81` for port mapping<br/>`-d` for running container in background*

## dockle
`dockle --accept-key NGINX_GPGKEY --accept-key NGINX_GPGKEY_PATH [name:version]`
> *`--accept-key NGINX_GPGKEY --accept-key NGINX_GPGKEY_PATH` for suppressing nginx containers errors*

## docker-compose
`docker-compose build`<br/>
`docker-compose up`

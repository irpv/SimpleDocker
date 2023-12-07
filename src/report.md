# Simple Docker report

## Part 1. Ready-made docker

* Take the official docker image from **nginx** and download it using `docker pull`.
![docker_pull](images/[1]docker_pull.png)

* Check for the docker image with `docker images`
![docker_images](images/[2]docker_images.png)

* Run docker image with `docker run -d [image_id|repository]`
![docker_run](images/[3]docker_run.png)

* Check that the image is running with `docker ps`
![docker_ps](images/[4]docker_ps.png)

* View container information with `docker inspect [container_id|container_name]`
![docker_inspect](images/[5]docker_inspect.png)

* From the command output define and write in the report the container size, list of mapped ports and container ip
  * ![docker_inspect_SIZE](images/[6]docker_inspect_SIZE.png)
    *`SizeRootFs`: the total size of all the files in the container, in bytes<br/>`SizeRw`: the size of the files that have been created or changed in the container, compared to it's image, in bytes*

  * ![docker_inspect_PORTS](images/[7]docker_inspect_PORTS.png)
    *mapped ports is `80/tcp`*

  * ![docker_inspect_IP](images/[8]docker_inspect_IP.png)
    *container ip is `172.17.0.2`*

* Stop docker image with `docker stop [container_id|container_name]`
![docker_stop](images/[9]docker_stop.png)

* Check that the image has stopped with `docker ps`
![docker_ps_STOP](images/[10]docker_ps_STOP.png)

* Run docker with ports 80 and 443 in container, mapped to the same ports on the local machine, with *run* command
![docker_run_PORTS](images/[11]docker_run_PORTS.png)

* Check that the **nginx** start page is available in the browser at *localhost:80*
![localhost80](images/[12]localhost80.png)

* Restart docker container with `docker restart [container_id|container_name]`
![docker_restart](images/[13]docker_restart.png)

* Check in any way that the container is running
![docker_ps_RESTART](images/[14]docker_ps_RESTART.png)

## Part 2. Operations with container

* Read the *nginx.conf* configuration file inside the docker container with the *exec* command
![docker_exec_CONF](images/[15]docker_exec_CONF.png)

* Create a *nginx.conf* file on a local machine
![touch_nginx](images/[16]touch_nginx.png)

* Configure it on the */status* path to return the **nginx** server status page
![nginx_conf_STATUS](images/[17]nginx_conf_STATUS.png)

* Copy the created *nginx.conf* file inside the docker image using the `docker cp` command
![docker_cp_CONF](images/[18]docker_cp_CONF.png)

* Restart **nginx** inside the docker image with *exec*
![nginx_reload](images/[19]nginx_reload.png)

* Check that *localhost:80/status* returns the **nginx** server status page
![localhost80_status](images/[20]localhost80_status.png)

* Export the container to a *container.tar* file with the *export* command
![docker_export](images/[21]docker_export.png)

* Stop the container
![docker_stop_nginx](images/[22]docker_stop_nginx.png)

* Delete the image with `docker rmi [image_id|repository]`without removing the container first
![docker_rmi](images/[23]docker_rmi.png)

* Delete stopped container
![docker_rm](images/[24]docker_rm.png)

* Import the container back using the *import* command
![docker_import](images/[25]docker_import.png)

* Run the imported container
![docker_run_IMPORT](images/[26]docker_run_IMPORT.png)

* Check that *localhost:80/status* returns the **nginx** server status page
![localhost80_status_IMPORT](images/[27]localhost80_status_IMPORT.png)

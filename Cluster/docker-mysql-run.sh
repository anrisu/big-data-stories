docker run --net=anrisu-net --ip=172.18.0.100 -i -t --hostname=mysql --name=mysql-server -e MYSQL_ROOT_PASSWORD='sqlpwd' -v "$HOME/Downloads:/home/hduser/Downloads" -v "/app/docker-anrisu/mysql/storage/data:/var/lib/mysql" mysql-server:5.7
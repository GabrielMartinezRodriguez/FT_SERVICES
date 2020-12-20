cd images

cd ftps

docker build -t gabimr19/ft_services:ftps .

cd ..

cd grafana

docker build -t gabimr19/ft_services:grafana .

cd ..

cd influxdb

docker build -t gabimr19/ft_services:influxdb .

cd ..

cd mysql

docker build -t gabimr19/ft_services:mysql .

cd ..

cd nginx

docker build -t gabimr19/ft_services:nginx .

cd ..

cd phpmyadmin

docker build -t gabimr19/ft_services:phpmyadmin .

cd ..

cd wordpress

docker build -t gabimr19/ft_services:wordpress .

cd ..


docker push gabimr19/ft_services:ftps
docker push gabimr19/ft_services:grafana
docker push gabimr19/ft_services:influxdb
docker push gabimr19/ft_services:mysql
docker push gabimr19/ft_services:nginx
docker push gabimr19/ft_services:phpmyadmin
docker push gabimr19/ft_services:wordpress
kubectl run -it --rm --image=mariadb:focal --restart=Never mysql-client -- mysql -u ubuntu -h $1 -ppassword

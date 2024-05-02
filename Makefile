all :
	docker compose -f srcs/compose.yaml up -d

clean:
	docker compose -f srcs/compose.yaml rm -s -f

fclean : clean
	docker volume rm -f db wordpress
	docker image rm -f srcs-nginx srcs-wordpress srcs-mariadb
	docker network rm srcs_inception
	sudo rm -rf /home/cdupuis/data
	mkdir -p /home/cdupuis/data/wordpress

re : fclean
	docker compose -f srcs/compose.yaml up -d --build nginx mariadb wordpress
COMPOSE_FILE = srcs/docker-compose.yml
DATA_PATH = /home/yoel-you/data

all:
	sudo bash srcs/requirements/tools/setup.sh
	docker compose -f $(COMPOSE_FILE) up --build -d

down:
	echo "Shutting down $(NAME) server..."
	docker compose -f $(COMPOSE_FILE) down

clean: down
	echo "Purging Docker containers and images..."
	docker compose -f $(COMPOSE_FILE) down -v --rmi all

fclean: clean
	sudo rm -rf $(DATA_PATH)/wordpress/*
	sudo rm -rf $(DATA_PATH)/mariadb/*
	docker system prune -af

re: fclean all

.PHONY: all down clean fclean re

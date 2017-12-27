.PHONY: up start stop down reboot

up:
	docker-compose up -d

start:
	docker-compose start

stop:
	docker-compose stop

down:
	docker-compose down


reboot:
	docker-compose down && docker-compose up -d

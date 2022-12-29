.PHONY: all run

all : taranta tangogql taranta-auth taranta-dashboard

taranta :
	git clone https://gitlab.com/tango-controls/web/taranta.git

tangogql :
	git clone https://gitlab.com/tango-controls/web/tangogql.git

taranta-auth :
	git clone https://gitlab.com/tango-controls/web/taranta-auth.git

taranta-dashboard :
	git clone https://gitlab.com/tango-controls/web/taranta-dashboard.git

run : all
	docker-compose build && docker-compose up

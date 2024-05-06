.PHONY: *

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f reminderbot sillybots

backup-db:
	./bin/backup-db.sh

import-db:
	./bin/import-db.sh `ls ./backups/*_bunreplybot.sql | tail -1`


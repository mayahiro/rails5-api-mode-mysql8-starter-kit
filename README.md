# rails5-api-mode-mysql8-starter-kit

- `docker-compose run --no-deps api rails new . --api --force --database=mysql`
- `docker-compose build`
- edit config/database.yml
- `docker-compose up`
  - `docker-compose run api rake db:create`

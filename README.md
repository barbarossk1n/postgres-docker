ДИРЕКТОРИЯ:  
postgres-docker/  
├── nginx-docker/  
------  ├── Dockerfile     
------  ├── nginx.conf  
------  └── html/    
------  └── index.html   <— простейший сайт с приветствием  
└── postgres-sql/  
------  ├── Dockerfile  
------  └── init.sql     <— в базе данных одна роль - owner с паролем qwerty, автоматически этому профилю даёт все права владельца  

Для запуска сайта:  
* docker build -t custom-nginx .  
* docker run -d -p 80:80 custom-nginx  
(Проверял командами curl http://localhost и curl -X POST http://localhost - работает и не работает соответственно)  

Для запуска БД  
* docker build -t custom-postgres .  
* docker run -d -p 5432:5432 custom-postgres  
* psql -h localhost -p 5432 -U owner -d test (соответственно, затем пароль qwerty)
(Проверял командой SELECT version(); - работает)  

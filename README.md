## Шаблон для третьего ДЗ по ИПР

Условие дз доступно по [ссылке](https://github.com/Nikfilk2030/missing_semester_hse_cs/blob/main/2026/amcs/year_1/hw_3/README.md)

4:
docker build -t counter-app .
docker run -d --name counter-container -p 8080:4242 -e GREETING="bratuxa 42" counter-app
curl -fsS http://localhost:8080/
curl -fsS -X POST http://localhost:8080/increment
docker logs counter-container   
 2026-11-17 11:01:32,254 listening port=4242 storage=sqlite
 2026-11-17 11:04:28,119 http 192.168.65.1 "GET / HTTP/1.1" 200 -
 2026-11-17 11:05:41,781 http 192.168.65.1 "POST / HTTP/1.1" 404 -
 2026-11-17 11:07:32,245 http 192.168.65.1 "POST /increment HTTP/1.1" 200 -
 2026-11-17 11:09:10,031 http 192.168.65.1 "GET / HTTP/1.1" 200 -
6:
curl -fsS -X POST http://localhost:9090/increment
docker compose down
docker compose up -d
curl -fsS http://localhost:9090/

{"greeting": "композитная броня", "count": 2, "hostname": "122234b084ca", "storage": "sqlite"}
{"greeting": "композитная броня", "count": 2, "hostname": "ca31be40ed63", "storage": "sqlite"}

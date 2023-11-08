# Selbst signiertes Zertifikat erstellen

```sh
openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout nginx.key -out nginx.crt -subj "/C=DE/ST=NRW/L=Earth/O=CompanyName/OU=IT/CN=localhost"
```

## py-testing
<hr>

Simple application to show **client request IP** and **total requests** using python flask and redis.  
In this application there are 2 services, namely service counter-hit (flask) and redis (cache).
  
1\. Deploy apps :  
```bash
git clone https://github.com/ilosaurus/py-testing.git
cd py-testing

sudo docker-compose up -d

## Testing ##
for i in {1..5}; do curl localhost:80 ; echo "" ;sleep 1; done
```
example output : 
```
User Address : 172.17.0.1.
 Hits : 1
User Address : 172.17.0.1.
 Hits : 2
User Address : 172.17.0.1.
 Hits : 3
User Address : 172.17.0.1.
 Hits : 4
User Address : 172.17.0.1.
 Hits : 5

```  

2\. How to Scale (using docker compose scale or replicas) :
```bash
sudo docker-compose scale counter-hit=3
```

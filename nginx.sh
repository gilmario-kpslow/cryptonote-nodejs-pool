docker run -d --name nginx -p 80:80 -v $(pwd)/website_example:/usr/share/nginx/html nginx
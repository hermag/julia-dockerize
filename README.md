# julia-dockerize
Dockerize Julia environment for microservices
## How to use
One need to have installed docker-compose v2 and of course docker itself.
To run the simple Julia web server it's enough to run the following
'''
docker-compose up -d
'''
Once the procedure is done, one can check the following URL in the browser
http://localhost:8000/JuliaWebServer/NameLastName
and you should see the following text
'''
Hello NameLastName, welcome on Julia Web Server!
'''

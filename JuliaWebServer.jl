using HttpServer

http = HttpHandler() do req::Request, res::Response
    Response(ismatch(r"^/JuliaWebServer/",req.resource) ? string("Hello ", split(req.resource,'/')[3], " welcome on Julia Web Server!") : 404)
end

http.events["error"]  = (client, err) -> println(err)
http.events["listen"] = (port)        -> println("Listening on $port...")

server = Server(http)
run(server, 8000)

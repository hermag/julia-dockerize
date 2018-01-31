FROM centos:7
MAINTAINER Erekle Magradze <erekle@magradze.de>
RUN yum install epel-release -y
RUN yum groupinstall "Development Tools" -y
RUN yum install vim cmake htop iftop net-tools bind-utils wget -y
RUN yum-config-manager --add-repo https://copr.fedorainfracloud.org/coprs/nalimilan/julia/repo/epel-7/nalimilan-julia-epel-7.repo
RUN yum install julia -y && yum upgrade julia -y
RUN julia -e 'Pkg.add("MbedTLS"); Pkg.add("HttpServer"); Pkg.add("JSON");'
ADD JuliaWebServer.jl /
CMD ["julia","/JuliaWebServer.jl"]

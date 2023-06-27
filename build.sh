# docker stop eco-client-doc-preview || true
# docker rm  eco-client-doc-preview || true
# docker rmi  eco-client-doc-preview || true
docker build -t   eco-client-doc-preview-env  -f dockerfile  . 
# docker run -itd --name  eco-client-doc-preview -p 17088:17088  -v /etc/hosts:/etc/hosts --hostname  eco-client-doc-preview --net=host    eco-client-doc-preview

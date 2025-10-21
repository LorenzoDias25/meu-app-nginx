# Usar a imagem oficial do Nginx como base
FROM nginx:latest

# Copiar os arquivos do seu site para o diretório padrão do Nginx
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./about.html /usr/share/nginx/html/about.html
COPY ./lorenzo.html /usr/share/nginx/html/lorenzo.html
COPY ./heitor.html /usr/share/nginx/html/heitor.html
COPY ./style.css /usr/share/nginx/html/style.css

# (Opcional) Copiar sua configuração personalizada do Nginx
# O arquivo nginx.conf fornecido é quase idêntico ao padrão.
COPY ./nginx.conf /etc/nginx/nginx.conf

# Expor a porta 80 (padrão do Nginx)
EXPOSE 80
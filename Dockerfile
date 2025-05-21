FROM node:18

# Crear carpeta de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . .

# Instalar dependencias
RUN npm install

# Exponer el puerto que usa n8n
EXPOSE 5678

# Comando de inicio
CMD ["npx", "n8n"]

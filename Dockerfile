# Imagen base de Node.js
FROM node:18

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . .

# Instalar las dependencias
RUN npm install

# Exponer el puerto por donde corre n8n
EXPOSE 5678

# Ejecutar n8n al iniciar el contenedor
CMD ["npx", "n8n"]

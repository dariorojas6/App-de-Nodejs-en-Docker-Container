# Mi proyecto necesita node en v12 para funcionar
FROM node:12

# Mi directorio de trabajo esta en:
# Esta carpeta va a conteneder todos los archivos necesarios para que funcione mi app

WORKDIR /app

#Copiamos los package.json a mi directorio de trabajo
COPY package*.json ./

# Comando para ejcutar en Docker
RUN npm install 

# Copiamos los archivos necesarios adentro del contenedor
COPY . .

# Para ejecutar todo el proyecto
CMD ["npm", "start"]







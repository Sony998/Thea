# Utiliza una imagen base de Node.js
FROM node

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de la aplicación al contenedor
COPY package.json package-lock.json /app/
COPY . /app

# Instala las dependencias de la aplicación
RUN npm install

# Compila la aplicación (si es necesario)
RUN ng build --prod

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 4200

# Inicia la aplicación
CMD ["npm", "start"]
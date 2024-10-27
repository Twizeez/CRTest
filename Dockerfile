# Gunakan image resmi Node.js
FROM node:18-alpine

# Atur direktori kerja di dalam container
WORKDIR /usr/src/app

# Salin file package.json dan install dependencies
COPY package.json ./
RUN npm install

# Salin seluruh kode aplikasi ke container
COPY . .

# Tentukan port yang digunakan aplikasi
EXPOSE 8080

# Perintah untuk menjalankan aplikasi
CMD ["npm", "start"]

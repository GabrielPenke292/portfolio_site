# Dockerfile para desenvolvimento
FROM node:20-alpine

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos de dependências primeiro (para melhor cache)
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia todo o código fonte
COPY . .

# Expõe a porta padrão do Vite
EXPOSE 5173

# Comando para rodar em modo desenvolvimento
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]

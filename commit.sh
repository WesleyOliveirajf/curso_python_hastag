#!/bin/zsh

# Script para facilitar commits no repositório
# Uso: ./commit.sh "sua mensagem de commit"

# Cores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo "${BLUE}📦 Preparando commit...${NC}"

# Verifica se há mensagem de commit
if [ -z "$1" ]; then
    echo "${RED}❌ Erro: Você precisa fornecer uma mensagem de commit${NC}"
    echo "Uso: ./commit.sh \"sua mensagem aqui\""
    exit 1
fi

# Adiciona todos os arquivos
echo "${BLUE}📁 Adicionando arquivos...${NC}"
git add .

# Mostra o status
echo "${BLUE}📋 Status:${NC}"
git status --short

# Faz o commit
echo "${BLUE}💾 Fazendo commit...${NC}"
git commit -m "$1"

# Faz o push
echo "${BLUE}🚀 Enviando para GitHub...${NC}"
git push origin main

echo "${GREEN}✅ Commit realizado com sucesso!${NC}"

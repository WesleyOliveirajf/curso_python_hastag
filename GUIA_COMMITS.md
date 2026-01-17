# Guia Rápido de Commits 📖

## ⚡ Comando Rápido
```bash
./commit.sh "descrição da alteração"
```

## 📚 Exemplos de Mensagens de Commit

### Boas mensagens:
- ✅ `./commit.sh "Adiciona exercício 4 de loops"`
- ✅ `./commit.sh "Corrige erro na função de cálculo"`
- ✅ `./commit.sh "Atualiza notebook com novos exemplos"`
- ✅ `./commit.sh "Remove arquivo de teste"`

### Mensagens ruins:
- ❌ `./commit.sh "update"` (muito vaga)
- ❌ `./commit.sh "aaa"` (sem significado)
- ❌ `./commit.sh "teste"` (não descritiva)

## 🔄 Comandos Git Úteis

### Ver histórico de commits:
```bash
git log --oneline
```

### Ver status dos arquivos:
```bash
git status
```

### Ver diferenças não commitadas:
```bash
git diff
```

### Desfazer última alteração (antes do commit):
```bash
git restore nome-do-arquivo
```

### Atualizar repositório local:
```bash
git pull origin main
```

## 🆘 Problemas Comuns

### "Sua branch está atrás do origin/main"
```bash
git pull origin main
```

### Conflito ao fazer push
```bash
git pull origin main
# Resolva os conflitos manualmente
git add .
git commit -m "Resolve conflitos"
git push origin main
```

### Remover arquivo do git (mas manter localmente)
```bash
git rm --cached nome-do-arquivo
git commit -m "Remove arquivo do repositório"
git push origin main
```

## 💡 Dicas

1. Sempre escreva mensagens claras e descritivas
2. Faça commits pequenos e frequentes
3. Revise suas alterações antes de commitar
4. Mantenha o .gitignore atualizado
5. Evite commitar arquivos temporários ou gerados automaticamente

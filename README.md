# kali-docker

Imagem Docker headless baseada no Kali Linux, com mirror oficial e ferramentas essenciais para pentest e uso geral.

## Sobre
Esta imagem é baseada em `kalilinux/kali-rolling` e inclui utilitários essenciais para uso em linha de comando, automação, testes de rede e desenvolvimento.

- Mirror oficial do Kali Linux
- Usuário não-root padrão (`kali`)
- Ferramentas: net-tools, iputils-ping, curl, wget, git, openssh-client, iproute2, vim, bash-completion, tmux, lsof, dnsutils, sudo

## Como usar

### Build
```bash
git clone https://github.com/seu-usuario/kali-docker.git
cd kali-docker
docker build -t kali .
```

### Run
```bash
docker run -it --network=host kali
```

Usuário padrão: `kali` (UID/GID 1000, sem senha, com sudo liberado)

## Licença
MIT

# Arquitetura

O projeto está(rá) organizado em camadas:

1. **CLI**: entrada e saída no terminal.
2. **Application**: coordena casos de uso.
3. **Domain**: entidades, regras e decisões de negócio.
4. **Repositories**: persistência e consultas.
5. **Infrastructure**: configuração e integração com MySQL.

Direção desejada das dependências: CLI → Application → Domain. A camada de aplicação utiliza contratos de repositório; a infraestrutura implementa os detalhes de persistência. A lógica de domínio não deve importar bibliotecas de terminal nem código de conexão ao banco.
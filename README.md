# la-dolce-data

Conteúdo inicial e mídias originais da **La Dolce Experience**.

Tudo aqui é **real**, extraído do site original do cliente. Nenhum dado comercial foi inventado. As informações que ainda faltam estão em `la-dolce-docs/pendencias-cliente.md`.

## Repositórios do projeto

| Repositório | Conteúdo |
|---|---|
| `la-dolce-app` | Site público e painel administrativo (React) |
| `la-dolce-api` | Schema, RLS, Storage e configuração do Supabase |
| **la-dolce-data** | Conteúdo inicial (seed) e imagens originais |
| `la-dolce-docs` | Documentação, manual do cliente e pendências |

## Estrutura

```
seed/seed.sql     Conteúdo inicial do banco: textos, contatos, SEO, tipos de evento, galeria
assets/           Imagens originais do site (fonte das versões otimizadas do app)
scripts/          Verificação de segredos usada pela CI
```

## Tecnologias

| Tecnologia | Uso |
|---|---|
| SQL (PostgreSQL 17) | Seed aplicado pelo Supabase CLI depois das migrations do `la-dolce-api` |
| PNG / JPEG | Originais em alta resolução; o app gera as versões WebP com [sharp](https://sharp.pixelplumbing.com) |

## Como é usado

- **Seed:** o `la-dolce-api/supabase/config.toml` carrega `../la-dolce-data/seed/seed.sql`. Por isso os repositórios devem ficar lado a lado na mesma pasta. Para aplicar localmente:
  ```bash
  cd ../la-dolce-api && npm run db:reset
  ```
- **Imagens:** depois de trocar ou acrescentar um original em `assets/`, gere as versões otimizadas no app:
  ```bash
  cd ../la-dolce-app && npm run images:optimize
  ```
  O seed aponta para os arquivos gerados em `la-dolce-app/public/images/`.
- **Fallback do site:** o mesmo conteúdo está embutido em `la-dolce-app/src/content/defaultContent.ts`, usado quando o banco não responde. Ao mudar um texto aqui, mude lá também.

O seed só é usado para **criar** o banco (local ou o primeiro deploy). Depois de publicado, o conteúdo é editado pelo cliente no painel, e este arquivo não é mais reaplicado em produção.

## CI (GitHub Actions)

| Job | Verifica |
|---|---|
| **Seed aplicado sobre as migrations da API** | Sobe o Supabase com as migrations do `la-dolce-api` e este seed, e roda os testes de segurança da API |
| **Segredos** | Gitleaks em todo o histórico e arquivos `.env` ou chaves versionados |

O primeiro job precisa do secret `LA_DOLCE_REPOS_TOKEN`; veja a seção "Secret LA_DOLCE_REPOS_TOKEN" no README do `la-dolce-api`.

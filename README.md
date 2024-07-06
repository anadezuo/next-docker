This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.js`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Inter, a custom Google Font.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.

# Configurando a imagem docker

**FROM** -> comando docker para saber que irá buscar uma imagem base para executar meu projeto

**node** -> busca uma imagem do node

**lasted** -> Diz a respeito da versão da imagem do node, e não sobre a versão do node em si

**AS** -> alias

**build** -> um alias para o mave descrito, para ser utilizado na aplicação

**COPY** -> estamos copiando os arquivos do nosso projeto para dentro do container no caminho de app/src

**WORKDIR** -> é a mudança de diretório dentro do container

**RUN** -> dentro da pasta executar o comando para instalar as dependencias

Comando para gerar a imagem
`docker build -t nome_da_imagem_que_eu_escolher:versao_definida_por_mim caminho_onde_esta_o_dockerfile`
`docker build -t next-hello-world:1.0 .`

Comando para executar o container
`docker run next-hello-world:1.0`

Comando para executar o container fazendo com que a interface de rede seja visível no meu navegador. A prop `-P` irá servir no hospedeiro em uma porta aleatória
`docker run -P imagem:versão`
`docker run -P next-hello-world:1.0`

Comando para definir em qual porta quero subir o container. A prop `-p` define em quais portas quero servir na máquina hospedeira, e qual sua equivalente de porta do container.
`docker run -p porta_hospedeira:porta_container imagem:versão`
`docker run -p 7000:8080 next-hello-world:1.0`

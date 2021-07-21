# ezops-test-gabriel
Projeto WebChat feito em Node.js dockerizado e com CI/CD para ambiente na AWS


.gitignore retirado de [rep](https://github.com/github/gitignore/blob/master/Node.gitignore)

Projeto em node.js retirado de [site](https://betterprogramming.pub/simple-chat-application-in-node-js-using-express-mongoose-and-socket-io-ee62d94f5804)

Exemplo de dockerfile em Node.js [rep](https://github.com/BretFisher/node-docker-good-defaults/blob/main/Dockerfile)

Exemplo de dockerfile com multiplos npm para diminuir as layers da imagem [site](https://codefresh.io/docker-tutorial/node_docker_multistage/)


Para executar o projeto localmente deverá ter o docker instalado na sua maquina se for rodar via dockerfile ou se for rodar local sem docker deverá seguir o passo a passo do [site](https://betterprogramming.pub/simple-chat-application-in-node-js-using-express-mongoose-and-socket-io-ee62d94f5804)

Para rodar localmente no seu docker apos baixar o projeto deverá rodar os seguintes comandos.
Exemplo:

docker build -t nascimentogabriel/ezops:v1 .

docker run -d --name ezops -p 3000:3000 nascimentogabriel/ezops:v1 



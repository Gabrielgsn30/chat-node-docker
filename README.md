# chat-node-docker
Projeto WebChat feito em Node.js dockerizado e com CI/CD para ambiente na AWS!....
Tentando implementar o CI em jenkins 1º teste hoje 05/08/21.


.gitignore retirado de [rep](https://github.com/github/gitignore/blob/master/Node.gitignore)

Projeto em node.js retirado de [site](https://betterprogramming.pub/simple-chat-application-in-node-js-using-express-mongoose-and-socket-io-ee62d94f5804)

Exemplo de dockerfile em Node.js [rep](https://github.com/BretFisher/node-docker-good-defaults/blob/main/Dockerfile)

Exemplo de dockerfile com multiplos npm para diminuir as layers da imagem [site](https://codefresh.io/docker-tutorial/node_docker_multistage/)

Examplo de como construir URL na aplicacao, é o que possbilitou resolver o problema de Cqrs(), rotas, de maniera simples pois a versao do site estava como localhost e gerava problemas quando subia esse projeto na AWS [site](https://qastack.com.br/programming/25203124/how-to-get-base-url-with-jquery-or-javascript)


Para executar o projeto localmente deverá ter o docker instalado na sua maquina se for rodar via dockerfile ou se for rodar local sem docker deverá seguir o passo a passo do [site](https://betterprogramming.pub/simple-chat-application-in-node-js-using-express-mongoose-and-socket-io-ee62d94f5804)

Para rodar localmente no seu docker apos baixar o projeto deverá rodar os seguintes comandos.
Exemplo:

docker build -t nascimentogabriel/ezops:v1 .

docker run -d --name ezops -p 3000:3000 nascimentogabriel/ezops:v1 


Para acesso do projeto acessar o seguinte IP' http://54.218.93.13:3000/ O projeto faz o deploy na AWS apenas quando tem novas releases.
Feature implementada o chatbot alerta para não xingar no chat:

Caso digitar determinadas palavras o chatbot gera uma mensagem automatica para não xingar.

Palavras:feio,bobo,idiota,chato,retardado

Tambem caso digite chat -info irá aparecer uma mensagem de informação do sistema.


Serviços utilizados:
Projeto em Node.js conforme citado acima é um Chat, esse projeto foi dockerizado através de uma imagem node, esse projeto também está no git, utilizado para versionamento do projeto. O Git também tem Actions, na qual implementamos o CI/CD para AWS, que por sua vez la na AWS utilizamos o ECR para armazenar a imagem, e o ECS.

x<-                           #como lan�ar uma vari�vel
rep(10,5)                      #Repete o 10 cinco vezes
rm(list = "x", "y")           #Remove vari�veis
setwd("c:/econometria")        #Para setar a pasta de econometria como local para salver
getwd()                        #Para verificar qual pasta setamos
rm(list=ls())                # para limpar, depois dar enter e clicar em CTRL+L
install.packages("pwt8.0")     #Instalar o pacote PWT8.0
library(pwt8)                 #carrega o pacote
data("pwt8.0")                #carrega os dados elencados
View(pwt8.0)                  #visualiza os dados
                              # Quando quero digitar um comando que busque valor igual, precisa usar dois sinais de igual ==
subset( )                    #Extraindo dados da tabela. Estrutura: ( x , linhas, colunas  )
subset( x , linhas, colunas  ) #Linha acima. Subset significa subgrupo
br<- subset(pwt8.0, country== "Brazil", select = c(rgdpna,avh,xr))   #Planilha
View(br)                         # br foi a vari�vel. Isso far� com que mostre apenas as colunas selecionadas no programa
colnames(br)<- c("PIB", "Trabalho", "Cambio")                    #Mudar o nome das colunas 
plot(Variavel$Variavel da variavel)          #Para criar gr�fico, usar comando em quest�o. Exemplo plot(br$PIB) ele mostrar� s� o pib.
dados <- ts (br, start=1950, freq=1)   #mudar eixo x para datas usar comando: ts ( data set , data de inicio, periodicidade dos dados  ) e fazer o plot da nova vari�vel criada
plot(dados, col= "blue", main= "Dados Brasileiros", xlab="Ano", plot.type = "single")    #Para mudar de cor e dar t�tulo: plot(dados, col="purple", main="Dados Brasileiros", xlab="Ano")
library(readr)
br <- read.csv("c:/Econometria B/br.csv")
View(br)                       #Tr�s �ltimas linhas: setar item, definir vari�vel e visualizar (br)
br <- br[,-1]                 #para apagar coluna colocar variavel <- variavel [, - numero da coluna]. Se eu quisesse apagar linha era s� digitar algo antes da v�rgula.
colnames(br)[3] <- "CAMBIO"    #comando para alterar nome
PIB <- ts(br$PIB, start = 1950, frequency = 1) / plot(PIB)      #setar variavel do grafico e plotar (plotar e fazer gr�fico)











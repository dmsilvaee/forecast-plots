#Data invertida co arquivo de previs?o

ini_day<-20190512
ini_day2<-20190512
#data para nomear os g?raficos - tentar automatizar
day_name<-"12-05-2019"
#Limites do eixo Y
limy_sup <- 7000
limy_inf <- 500
#Automatiza o nome da pasta principal
f_name<-paste("Deck","Previsao",ini_day,sep = "_")
#Concatenando o nome da pasta principal com os dados da gera??o e?lica
teste<-paste("/home/diego/Downloads",f_name,"Previsoes por Usinas/Previsao combinada",sep = "/")
#Selecionando o diret?rio de trabalho
setwd(teste)
#Importa??o do banco de dados
library(readr)
#subplot
#library(plotly)

#Concatenando o nome dos arquivos com a previs?o de gera??o
t0<-paste("Previsoes","NE",ini_day,ini_day,sep = "_")
t1<-paste("Previsoes","NE",ini_day,ini_day+1,sep = "_")
t2<-paste("Previsoes","NE",ini_day,ini_day+2,sep = "_")
t3<-paste("Previsoes","NE",ini_day,ini_day+3,sep = "_")
t4<-paste("Previsoes","NE",ini_day,ini_day+4,sep = "_")
t5<-paste("Previsoes","NE",ini_day,ini_day+5,sep = "_")
t6<-paste("Previsoes","NE",ini_day,ini_day+6,sep = "_")
t7<-paste("Previsoes","NE",ini_day,ini_day+7,sep = "_")
t8<-paste("Previsoes","NE",ini_day,ini_day+8,sep = "_")
t9<-paste("Previsoes","NE",ini_day,ini_day+9,sep = "_")
#concatenando o nome dos arquivos com o formato .txt
t0txt<-paste(t0,"txt",sep = ".")
t1txt<-paste(t1,"txt",sep = ".")
t2txt<-paste(t2,"txt",sep = ".")
t3txt<-paste(t3,"txt",sep = ".")
t4txt<-paste(t4,"txt",sep = ".")
t5txt<-paste(t5,"txt",sep = ".")
t6txt<-paste(t6,"txt",sep = ".")
t7txt<-paste(t7,"txt",sep = ".")
t8txt<-paste(t8,"txt",sep = ".")
t9txt<-paste(t9,"txt",sep = ".")

#Arquivos de entrada
d0 <- read.delim(t0txt,header = FALSE , row.names = 1, sep=";",dec = ".", na="NA")
d1 <- read.delim(t1txt,header = FALSE , row.names = 1, sep=";",dec = ".", na="NA")
d2 <- read.delim(t2txt,header = FALSE , row.names = 1, sep=";",dec = ".", na="NA")
d3 <- read.delim(t3txt,header = FALSE , row.names = 1, sep=";",dec = ".", na="NA")
d4 <- read.delim(t4txt,header = FALSE , row.names = 1, sep=";",dec = ".", na="NA")
d5 <- read.delim(t5txt,header = FALSE , row.names = 1, sep=";",dec = ".", na="NA")
d6 <- read.delim(t6txt,header = FALSE , row.names = 1, sep=";",dec = ".", na="NA")
d7 <- read.delim(t7txt,header = FALSE , row.names = 1, sep=";",dec = ".", na="NA")
d8 <- read.delim(t8txt,header = FALSE , row.names = 1, sep=";",dec = ".", na="NA")
#d9 <- read.delim("d9.txt",header = FALSE , row.names = 1, sep=";",dec = ".", na="NA")

#z<-t(d0)
#Soma todas as colunas linha a linha "1"
#y<-apply(z,1,sum)
#Soma todas as linhas coluna a coluna "2" para cada arquivo de entrada
yd0<-apply(d0,2,sum)
yd1<-apply(d1,2,sum)
yd2<-apply(d2,2,sum)
yd3<-apply(d3,2,sum)
yd4<-apply(d4,2,sum)
yd5<-apply(d5,2,sum)
yd6<-apply(d6,2,sum)
yd7<-apply(d7,2,sum)
yd8<-apply(d8,2,sum)
#yd9<-apply(x9,2,sum)
x<-seq(0, 23, length.out = 48)
#Subplot
par(mfrow=c(3,3))
plot(yd0~x,type="l",xlab = "t(h)",ylab = "Geração (MW)", main=as.Date(day_name,"%d-%m-%Y"), ylim=range(limy_inf:limy_sup))
plot(yd1~x,type="l",xlab = "t(h)",ylab = "Geração (MW)", main=as.Date(day_name,"%d-%m-%Y")+1, ylim=range(limy_inf:limy_sup))
plot(yd2~x,type="l",xlab = "t(h)",ylab = "Geração (MW)", main=as.Date(day_name,"%d-%m-%Y")+2, ylim=range(limy_inf:limy_sup))
plot(yd3~x,type="l",xlab = "t(h)",ylab = "Geração (MW)", main=as.Date(day_name,"%d-%m-%Y")+3, ylim=range(limy_inf:limy_sup))
plot(yd4~x,type="l",xlab = "t(h)",ylab = "Geração (MW)", main=as.Date(day_name,"%d-%m-%Y")+4, ylim=range(limy_inf:limy_sup))
plot(yd5~x,type="l",xlab = "t(h)",ylab = "Geração (MW)", main=as.Date(day_name,"%d-%m-%Y")+5, ylim=range(limy_inf:limy_sup))
plot(yd6~x,type="l",xlab = "t(h)",ylab = "Geração (MW)", main=as.Date(day_name,"%d-%m-%Y")+6, ylim=range(limy_inf:limy_sup))
plot(yd7~x,type="l",xlab = "t(h)",ylab = "Geração (MW)", main=as.Date(day_name,"%d-%m-%Y")+7, ylim=range(limy_inf:limy_sup))
plot(yd8~x,type="l",xlab = "t(h)",ylab = "Geração (MW)", main=as.Date(day_name,"%d-%m-%Y")+8, ylim=range(limy_inf:limy_sup))
#plot(yd9~x,xlab = "t(h)",ylab = "Gera??o (MW)", sub = "D9")






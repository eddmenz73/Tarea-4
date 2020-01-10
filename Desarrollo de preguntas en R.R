#EJECUTO EL COMANDO
ejemplos=sample(c("positivo","negativo","neutros"),100,replace=TRUE)
list(ejemplos)
#EJERCICIO 1#
#PROGRAMO METODO DE CONTEO
#NUMEROS POSITIVOS
n_positivos<-0
for(i in 100:length(ejemplos)){
  if("positivo"==ejemplos[i]){
    n_positivos<-n_positivos+1
    }
}

list(ejemplos)
length(ejemplos=="positivo")
#NUMEROS NEGATIVOS
n_negativos<-0
for (i in 100:length(ejemplos)){
  if("negativo"==ejemplos[i]){
    n_negativos<-n_negativos+1
  }
}
list(ejemplos)
length(ejemplos=="negativos")
#NUMEROS NEUTROS
n_neutros<-0
for (i in 100:length(ejemplos)) {
  if("negativo"==ejemplos[i]){
    n_neutros<-n_neutros+1
  }
}
#compruebo sumando todo
total<-n_positivos+n_negativos+n_neutros

#ejercicio 2
ejemplos=sample(c("positivo","negativo","neutros"),10,replace = TRUE)
set.seed(10)

#ejercicio 3
ejemplos = sample(c("positivo","negativo","neutros"),100,replace = TRUE)
set.seed(66)
#ejecuto el comando
prop_c_neutros<-c(n_positivos/total,n_negativos/total,n_neutros/total)
prop_sin_nuetros<-c(n_positivos/(total-n_neutros),n_negativos/(total-n_neutros))

#EJERCICIO 4 y 5 #

Cartas_Sacadas=sample(c("A",2:10,"J","Q","K"),31,replace=TRUE)
set.seed(31)
Cuenta<-0
for (i in 1:length(Cartas_Sacadas)){
  if(Cartas_Sacadas[i]==2|Cartas_Sacadas[i]==3|Cartas_Sacadas[i]==4|Cartas_Sacadas[i]==5|Cartas_Sacadas[i]==6) {
    Cuenta<-Cuenta+1 
    } else if (Cartas_Sacadas[i]=="A"|Cartas_Sacadas[i]=="J"|Cartas_Sacadas[i]=="Q"|Cartas_Sacadas[i]=="K"|Cartas_Sacadas[i]==10){
      Cuenta<-Cuenta-1
      } else if (Cartas_Sacadas[i]==7|Cartas_Sacadas[i]==8|Cartas_Sacadas[i]==9){
        Cuenta<-Cuenta+0
      }
}
# Ahora lo realice con 2 for variables.
mas1<-c(2:6)
menos1<-c("A","J","Q","K",10)
neutros<-c(7:9)
cuenta2<-0
variable<-mas1
for (i in 1:length(Cartas_Sacadas)){
  for (n in 1:length(variable)){
  if(Cartas_Sacadas[i]==mas1[n]){cuenta2<-cuenta2+1
  }
    }
  variable<-menos1
  for(n in 1:length(variable)){
    if(Cartas_Sacadas[i]==menos1[n]){cuenta2<-cuenta2-1}
  }
}


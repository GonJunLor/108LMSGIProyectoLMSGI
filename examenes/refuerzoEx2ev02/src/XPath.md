# Xpath Ejercicio 1. Universidad

1. Lista los álbumes que contienen la palabra Vida y con más de 5.000.000 de reproducciones. 
```
//album[contains(name, 'Vida') and playcount > 5000000]
```
2. Número de álbumes publicados por Joaquin Sabina. 
```
count(//album[artist/name="Joaquín Sabina"])
```
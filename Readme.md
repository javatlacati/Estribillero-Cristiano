# Recopilación de Cantos

Este repositorio contiene una colección de cantos y herramientas para generar índices de manera automatizada. **Úsalo únicamente para uso personal.**

## Creación de Índices

### Para usuarios con IntelliJ IDEA en Windows
1. Importa el archivo `./tools/External Tools.xml` a la siguiente ruta:
   `%APPDATA%\JetBrains\IntelliJIdea[tu versión]\tools`

Esto te permitirá utilizar las herramientas externas configuradas en tu IDE, solamente deberás editar las tools para poner tus rutas.

### Para usuarios de Windows sin IntelliJ IDEA
Si no utilizas IntelliJ IDEA, puedes usar el programa `jsongbookindexmaker`, que es un archivo `.jar` y se ubica en la raíz del proyecto. Este programa fue desarrollado por mí específicamente para generar índices.

#### Comandos

Si no tienes java puedes correr manualmente los siguientes comandos

```
C:\lilypond-2.26.0\bin\python.exe C:/lilypond-2.26.0/bin/lilypond-book.py --format=latex --pdf coritos.pdftex
makeindex -s songbook.ist -o coritos.kdx ./auxil/coritos.kIdx
makeindex -s songbook.ist -o coritos.adx ./auxil/coritos.aIdx
makeindex -s songbook.ist -o coritos.tdx ./auxil/coritos.tIdx
C:\Users\scher\AppData\Local\Programs\MiKTeX\miktex\bin\x64\pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=C:/Estribillero/out -aux-directory=C:/Estribillero/auxil coritos.tex
```

### Para usuarios de Linux
Para usuarios de Linux, se incluyen scripts con extensión `.sh` en el repositorio. Ejecuta estos archivos para generar los índices necesarios.


---

## Edición de partiruras
Las partituras de los solos se ubican en `./solos` y están en formato lillypond, puede editarlas mientras las oye en el sitio [hacklily](https://www.hacklily.org/), aunque lillypond deberás instalarse de todas maneras

---

**Nota:** Este proyecto fue desarrollado con el objetivo de facilitar la organización y acceso a los cantos. Asegúrate de seguir las instrucciones según tu sistema operativo y herramientas disponibles.
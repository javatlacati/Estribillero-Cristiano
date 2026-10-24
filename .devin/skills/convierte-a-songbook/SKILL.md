---
name: convierte-a-songbook
description: transcribe the chords of a song to a latex songbook format. Use this skill when you need to convert a song with chords to a latex songbook format.
---

This skill is used to convert a song with chords to a latex songbook format.
The user provides a song with chords in a text format and the output should be a latex file that can be compiled to a pdf file.


## Ejemplos

### Ejemplo 1

**Input:**
```
Cielo y tierra
Conquistando Fronteras
2015

https://open.spotify.com/intl-es/track/03d9JfhlVHutoQhuxIhFGu

Intro: Bm - G - D - A

  Bm                    G
//Cielo y tierra cantan tu nombre

D                      A
la creación exalta tu gloria//


    Bm  G   D A
//Jesús, Jesús//

  Bm                      G
//Nada es más grande que, nada es más fuerte que

   D              A
tu nombre, que tu nombre//
```

**Output:**
```
\begin{song}{Cielo y tierra}{G}
    {2015} %año
    {Conquistando Fronteras} %autor
    {} %pasaje
    {}
    \ifChordBk
    \paragraph{\mbox{}\hfill\protect\href{https://open.spotify.com/intl-es/track/03d9JfhlVHutoQhuxIhFGu}{Escuchar}\mbox{}\hfill}
    \fi

    \SBIntro{Bm - G - D - A}

    \begin{SBOpGroup}
        \Ch{Bm}{Cie}lo y tierra cantan tu \Ch{G}{nom}bre

        \Ch{D}{la} creación exalta tu \Ch{A}{glo}ria//
    \end{SBOpGroup}

    \begin{SBChorus}
        Je\Ch{Bm}{sús}, \Ch{G}{}Je\Ch{D}{sús}\Ch{A}{}
    \end{SBChorus}

    \begin{SBOpGroup}
        \Ch{Bm}{Na}da es más grande que, \Ch{G}{na}da es más fuerte que

        tu \Ch{D}{nom}bre, que tu \Ch{A}{nom}bre//
    \end{SBOpGroup}

    \ifChordBk
    \begin{SBOpGroup}
        Acordes:\break
        \upchord{\Bm}\qquad Si Menor \hfill
        \upchord{\G}\qquad Sol Mayor \hfill\null\break
        \upchord{\D}\qquad Re Mayor \hfill
        \upchord{\A}\qquad La Mayor \hfill\null\break
    \end{SBOpGroup}
    \fi
\end{song}
```

### Ejemplo 2

**Input:**
```
Sublime Gracia
William Walker
Efesios 2:8

https://open.spotify.com/intl-es/track/28M3RasuK7Vjiujri1koHU

SuGblime graF7cia Gmdel E♭SeB♭ñor,
que rescató F7mi B♭ /Dser.
B♭Andaba en la osE♭curiB♭dad:
¡AGmhora B♭ /FpueF7do B♭ver!
Sublime gracia del Señor,
que a un pecador salvó;
fui ciego más hoy veo yo,
perdido y Él me halló.
```

**Output:**
```
\begin{song}{Sublime Gracia}{G}
    {} %año
    {William Walker} %autor
    {Efesios 2:8} %pasaje
    {}
    \ifChordBk
    \paragraph{\mbox{}\hfill\protect\href{https://open.spotify.com/intl-es/track/28M3RasuK7Vjiujri1koHU}{Escuchar}\mbox{}\hfill}
    \fi

    \begin{SBOpGroup}
        Su\Ch{G}{bli}me gra\Ch{D7}{cia} \Ch{Em}{del} \Ch{C}{Se}\Ch{G}{ñor},

        que a un pecador \Ch{D7}{sal}\Ch{G/B}{vó};

        fui \Ch{G}{cie}go más hoy \Ch{C}{ve}o \Ch{G}{yo},

        per\Ch{Em}{di}do y \Ch{G/D}{Él} \Ch{D7}{me} ha\Ch{G}{lló}.
    \end{SBOpGroup}

    \ifChordBk
    \begin{SBOpGroup}
        Acordes:\break
        \upchord{\G}\qquad Sol Mayor \hfill\null\break
        \upchord{\Dseven}\qquad Re S\'eptima \hfill\null\break
        \upchord{\Em}\qquad Mi Menor \hfill
        \upchord{\C}\qquad Do Mayor \hfill\null\break
        \upchord{\GB}\qquad Sol con bajo B \hfill
        \upchord{\GD}\qquad Sol con bajo D \hfill\null\break
    \end{SBOpGroup}
    \fi
\end{song}
```

# considerations

* if you find orthographic errors fix them
* at the chords listing for chords with bass transposed instead of writing \CslashE write \CE
* before the chords listing, instead of writing "\Ch{Fsharpm}{eter}na" write "\Ch{F\#m}{eter}na"
* at the chords listing instead of writing "\upchord{\F\#m}\qquad Fa Sostenido Menor \hfill" write "\upchord{\Fsm}\qquad Fa Sostenido Menor \hfill"
* at the chords listing instead of writing "\upchord{\Eb}\qquad Mi Bemol Mayor \hfill" write "\upchord{\Eflat}\qquad Mi Bemol Mayor \hfill"
* es poco común que haya más de un coro incluso hay cantos que no tienen coro
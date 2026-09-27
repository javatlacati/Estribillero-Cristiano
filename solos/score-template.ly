\version "2.26.0"

scor=\score {
<<
  \chords{\acor}
  \mus
  \new NoteNames {
        \set printNotesLanguage = "english"
        \mus
  }
  \new TabStaff{
   % Forzar que el traste mínimo sea el 5
   \set TabStaff.minimumFret = #5
   % Restringir la búsqueda a las primeras cuerdas si es necesario (opcional)
   \set TabStaff.restrainOpenStrings = ##t
   \mus
  }
  \new Staff{\acor}
  \new TabStaff \transpose c c, {\acor}
>>
  \layout {
    \context {
      \NoteNames

      % Capitalize the note name strings automatically
      noteNameFunction = #(lambda args
        #{
          \markup \with-string-transformer
            #(lambda (layout props str) (string-upcase str))
            #(apply note-name-markup args)
        #})
    }
  }
  \midi {}
}

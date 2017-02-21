      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. InputChar.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 InputChar PIC X VALUE SPACES.
           88 Vowel        VALUE "A", "E", "I", "O", "U".
           88 Consonant    VALUE "B" THRU "D", "F", "G", "H"
                                 "J" THRU "N", "P" THRU "T"
                                 "V" THRU "Z".
           88 Digit        VALUE "0" THRU "9".
           88 Lowercase    VALUE "a" THRU "z".
           88 ValidChar    VALUE "A" THRU "Z", "0" THRU "9".


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM 3 TIMES
            ACCEPT InputChar
            EVALUATE TRUE
               WHEN Vowel      DISPLAY "Vowel"
               WHEN Consonant  DISPLAY "Consonant"
               WHEN Digit      DISPLAY "Digit"
               WHEN Lowercase  DISPLAY "lower"
            END-EVALUATE
            END-PERFORM.
       END PROGRAM InputChar.

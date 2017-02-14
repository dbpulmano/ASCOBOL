      ******************************************************************
      * Author: Michael Coughlan.
      * Date: 01/20/2017
      * Purpose: COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Sequence-Program.


       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  Num1    PIC 9  VALUE ZEROS.
       01  Num2    PIC 9  VALUE ZEROS.
       01  Result  PIC 99 VALUE ZEROS.

       PROCEDURE DIVISION.
       Calc-Result.
           ACCEPT Num1.
           ACCEPT Num2.
           MULTIPLY Num1 BY Num2 GIVING Result.
           DISPLAY "Result is = ", Result.
           DISPLAY "I LOVE COBOL <3"
           STOP RUN.
       END PROGRAM Sequence-Program.

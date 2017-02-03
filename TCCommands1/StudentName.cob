      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. StudentName.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 StudentName.
           02 FirstName PIC X(8)   VALUE "JOHN".
           02 Surname   PIC X(8)   VALUE "POWER".


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "COUGHLAN" TO Surname.
            MOVE "TOM" TO FirstName.
            DISPLAY StudentName.
            MOVE "FITZPATRICK" TO Surname.
            MOVE "ALEXANDER" TO FirstName.
            DISPLAY StudentName.
            MOVE "JOHN    RYAN" TO StudentName.
            DISPLAY StudentName.
            MOVE ALL "X" TO StudentName.
            DISPLAY StudentName.
            STOP RUN.
       END PROGRAM StudentName.

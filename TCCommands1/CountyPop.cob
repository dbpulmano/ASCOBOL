      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CountyPop.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 CountyPop    PIC 9(6) VALUE 111111.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE 987       TO CountyPop.
            DISPLAY CountyPop.
            MOVE 12345678  TO CountyPop.
            DISPLAY CountyPop.
            MOVE 24.56      TO CountyPop.
            DISPLAY CountyPop.
            STOP RUN.
       END PROGRAM CountyPop.

      ******************************************************************
      * Author:
      * Date: Feb. 3, 2017
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PerformVaryingUsingCounter.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Idx1 PIC 99  VALUE 1.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM VARYING Idx1 FROM 1 BY 1 UNTIL Idx1 EQUAL TO 3
            DISPLAY Idx1
            END-PERFORM.
            STOP RUN.
       END PROGRAM PerformVaryingUsingCounter.

      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CityCode.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 CityCode PIC 9 VALUE 8.
           88 DUBLIN           VALUE 1.
           88 LIMERICK         VALUE 2.
           88 CORK             VALUE 3.
           88 GALWAY           VALUE 4.
           88 SLIGO            VALUE 5.
           88 WATERFORD        VALUE 6.
           88 UNIVERSITYCITY   VALUE 1 THRU 4.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 2 TO CityCode
           IF LIMERICK
            DISPLAY "Hey, we're home"
           END-IF
           IF UNIVERSITYCITY
               PERFORM CalcRentSurcharge
           END-IF
           MOVE 6 TO CityCode
           SET Cork TO TRUE
           STOP RUN.
       END PROGRAM CityCode.

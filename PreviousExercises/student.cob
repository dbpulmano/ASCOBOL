      ******************************************************************
      * Author:
      * Date: Jan. 24, 2017
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STUDENT.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  StudentName PIC X(6)    VALUE ZEROS.
       01  OtherName   PIC X(3)    VALUE "Tom".
       01  ShopTotal   PIC 9(5)V99 VALUE 534.75.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "StudentName: ", StudentName.
           DISPLAY "OtherName: ", OtherName.
           DISPLAY "ShopTotal: ", ShopTotal.

            MOVE "John" TO StudentName.
            DISPLAY "My name is ", StudentName.

            MOVE OtherName TO StudentName.
            DISPLAY "StudentName ", StudentName.

            MOVE ZEROS TO ShopTotal.
            DISPLAY "ShopTotal: ", ShopTotal.

            MOVE ALL "-" TO StudentName.
            DISPLAY "StudentName: ", StudentName.
            STOP RUN.
       END PROGRAM STUDENT.

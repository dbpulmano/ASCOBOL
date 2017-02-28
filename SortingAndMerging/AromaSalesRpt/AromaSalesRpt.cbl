      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. AromaSalesRpt.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT Sales-File ASSIGN TO "SALES.DAT"
                 ORGANIZATION IS LINE SEQUENTIAL.
           SELECT Work-File ASSIGN TO "SORT.TMP".
           SELECT Summary-Report ASSIGN TO "AROMASALES.RPT"
                 ORGANIZATION IS LINE SEQUENTIAL.
           SELECT Sorted-File ASSIGN TO "SORTSALE.DAT"
                 ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  Sales-File.
       01  SalesRecord.
           02 Cus-Id       PIC 9(5).
           02 Cus-Name     PIC X(20).
           02 Unit-Size    PIC 9.
           02 Units-Sold   PIC 999.

       FD  Summary-Report.
       01  Show-Report      PIC X(80).

       FD  Sorted-File.
       01  SortedRecord     PIC X(80).

       SD  Work-File.
       01  WorkRec.
           02 Oil-Id.
               88  EssentialOil    VALUE "E".
               88  BaseOil         VALUE "B".

       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM AromaSalesRpt.

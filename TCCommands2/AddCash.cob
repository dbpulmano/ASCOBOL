      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. AddCash.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  Addition.
           02  Cash    PIC 9(4)    VALUE 123.
           02  Cheques PIC 9(4)    VALUE 1533.
           02  Males   PIC 9(4)    VALUE 611.
           02  Females PIC 9(4)    VALUE 1225.
           02  Total   PIC 9(4).

       01  Subtraction.
           02  Tax         PIC 9(4)    VALUE 250.
           02  Grosspay    PIC 9(4)    VALUE 1000.
           02  PRSI        PIC 9(4)    VALUE 0175.
           02  Pension     PIC 9(4)    VALUE 0125.
           02  Pay         PIC 9(4)    VALUE 2750.
           02  Deductions  PIC 9(4)    VALUE 1050.
           02  NetPay      PIC 9(4).

       01  Multiplication.
           02  Sizee       PIC 9(4)        VALUE 250.
           02  Magnitude   PIC 9(4)V99     VALUE 0123.45.
           02  VatRate     PIC 9(4)V99     VALUE 0.21.
           02  Sales       PIC 9(4)V99     VALUE 1245.50.
           02  VAT         PIC 9(4).
           02  Fees        PIC 9(4)        VALUE 52.
           02  Members     PIC 9(4)        VALUE 1024.
           02  TotalFees   PIC 9(4).

       01  Divisionn.
           02 Amount1  PIC 9(4)    VALUE 2544.
           02 Amount2  PIC 9(4)    VALUE 354.
           02 Qty      PIC 9(5)    VALUE 31255.
           02 Units    PIC 9(4)    VALUE 115.
           02 Average  PIC 9(4).
           02 Quot     PIC 9(4).
           02 Rem      PIC 9(4).

       01  Computee.
           02 Result   PIC 9(4)    VALUE 3333.
           02 Euros    PIC 9(4)V99 VALUE 1234.45.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "ADDITION".
            ADD Cash,20 TO Total.
            DISPLAY "Cash + 20 = " Total.
            ADD Cash, Cheques GIVING Total.
            DISPLAY "Cash + Cheques =" Total.
            ADD Males TO Females GIVING Total.
            DISPLAY "Males + Females =" Total.

            DISPLAY "SUBRACTION".
            SUBTRACT Tax, PRSI, Pension FROM PAY.
            DISPLAY "Tax + PRSI + Pension =" Total.
            SUBTRACT Deductions FROM Pay GIVING NetPay.
            DISPLAY "Pay - Deductions = " Netpay.

            DISPLAY "MULTIPLY".
            MULTIPLY 10 BY Sizee, Magnitude.
            DISPLAY "Sizee = " Sizee.
            DISPLAY "Magnitude =" Magnitude.
            MULTIPLY VatRate BY Sales GIVING VAT.
            DISPLAY "VatRate x Sales = " VAT.
            MULTIPLY Fees BY Members GIVING TotalFees.
            DISPLAY "Fees x Members = " TotalFees.

            DISPLAY "Divide".
            DIVIDE 15 INTO Amount1 ROUNDED, Amount2.
            DISPLAY "Amount1 =" Amount1.
            DISPLAY "Amount2 =" Amount2.
            DIVIDE Qty BY Units GIVING Average ROUNDED.
            DISPLAY "Units / Qty = " Average.
            DIVIDE 215 BY 10 GIVING Quot REMAINDER Rem.
            DISPLAY "215 / 10 =" Quot " rem " Rem.

            DISPLAY "Compute".
            COMPUTE Result = 90 - (7 * 3) + (50 / 2).
            DISPLAY "90 - (7 * 3) + (50 / 2) = " Result.

            STOP RUN.
       END PROGRAM AddCash.

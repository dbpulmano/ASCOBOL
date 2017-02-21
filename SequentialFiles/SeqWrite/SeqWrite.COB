      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SeqWrite.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT StudentFile ASSIGN TO "MYSTUDENTS.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD StudentFile.
       01 StudentDetails.
           88  EndOfStudentFile  VALUE HIGH-VALUES.
           02  StudentId       PIC 9(7).
           02  StudentName.
               03 Surname      PIC X(8).
               03 Initials     PIC XX.
           02  Gender          PIC X.

       PROCEDURE DIVISION.
       Begin.
       * First get the records and write them to the file
           OPEN OUTPUT StudentFile.
           DISPLAY "Please enter the student record using the template
           below."
           DISPLAY "Press the Enter key with no data to stop."
           DISPLAY "nnnnnnnSSSSSSSSiiG"
           ACCEPT StudentDetails
           PERFORM UNTIL StudentDetails = SPACES
               WRITE StudentDetails
               ACCEPT StudentDetails
           END-PERFORM
           CLOSE StudentFile

       * Then read the file and display the records
           OPEN INPUT StudentFile
           DISPLAY "Stud-Id  Student Name Gender"
           READ StudentFile
             AT END SET EndOfStudentFile TO TRUE
           END-READ
           PERFORM UNTIL EndOfStudentFile
             DISPLAY StudentId "  " Surname SPACE Initials "    " Gender
             READ StudentFile
               AT END SET EndOfStudentFile TO TRUE
             END-READ
           END-PERFORM
           CLOSE StudentFile
           STOP RUN.

       END PROGRAM SeqWrite.

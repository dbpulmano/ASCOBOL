      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SeqReadNo88.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT StudentFile ASSIGN TO "STUDENTS.DAT"
		         ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD StudentFile.
       01 StudentDetails.
           02  StudentId       PIC 9(7).
           02  StudentName.
               03 Surname      PIC X(8).
               03 Initials     PIC XX.
           02  DateOfBirth.
               03 YOBirth      PIC 9(4).
               03 MOBirth      PIC 9(2).
               03 DOBirth      PIC 9(2).
           02  CourseCode      PIC X(4).
           02  Gender          PIC X.

       PROCEDURE DIVISION.
       Begin.
           OPEN INPUT StudentFile
           READ StudentFile
               AT END MOVE HIGH-VALUES TO StudentDetails
           END-READ
       * DISPLAY StudentDetails
           PERFORM UNTIL StudentDetails = HIGH-VALUES
               DISPLAY StudentId SPACE StudentName SPACE CourseCode
               SPACE YOBirth
               READ StudentFile
                 AT END MOVE HIGH-VALUES TO StudentDetails
               END-READ
           END-PERFORM
       * DISPLAY StudentDetails
           CLOSE StudentFile
           STOP RUN.

       END PROGRAM SeqReadNo88.

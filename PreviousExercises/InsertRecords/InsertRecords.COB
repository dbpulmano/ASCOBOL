      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. InsertRecords.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT StudentFile ASSIGN "STUDENTS.DAT"
                  ORGANIZATION IS LINE SEQUENTIAL
                  ACCESS MODE IS SEQUENTIAL.

           SELECT TransFile ASSIGN "TRANSINS.DAT"
                  ORGANIZATION IS LINE SEQUENTIAL
                  ACCESS MODE IS SEQUENTIAL.

           SELECT NewStudentFile ASSIGN "STUDENTS.NEW"
                  ORGANIZATION IS LINE SEQUENTIAL
                  ACCESS MODE IS SEQUENTIAL.


       DATA DIVISION.
       FILE SECTION.
       FD  StudentFile.
       01  StudentRecord.
           88 EndOfStudentFile     VALUE ALL "9".
           02 StudentID            PIC 9(7).
           02 FILLER               PIC X(25).

       FD  TransFile.
       01  TransRecord.
           88 EndOfTransFile       VALUE ALL "9".
           02 TransStudentID       PIC 9(7).
           02 FILLER               PIC X(25).

       FD  NewStudentFile.
       01  NewStudentRecord.
           88 EndOfNewStudentFile  VALUE ALL "9".
           02 NewStudentID         PIC 9(7).
           02 NewStudentName       PIC X(10).
           02 FILLER               PIC X(25).



       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       * First merge the files
            OPEN INPUT StudentFile
            OPEN INPUT TransFile
            OPEN OUTPUT NewStudentFile

            READ StudentFile
               AT END SET EndOfStudentFile TO TRUE
            END-READ

            READ TransFile
               AT END SET EndOfTransFile TO TRUE
            END-READ

            PERFORM MergeTheFiles UNTIL (EndOfStudentFile) AND
            (EndOfTransFile)

            CLOSE StudentFile
            CLOSE TransFile
            CLOSE NewStudentFile

       * Then display the contents of the merged file
            PERFORM DisplayNewFile

            STOP RUN.

       MergeTheFiles.
       *     DISPLAY "StudentID = " StudentID
       *     DISPLAY "TransStudentID = " TransStudentID
            IF (StudentID < TransStudentID) THEN
                WRITE NewStudentRecord FROM StudentRecord
                READ StudentFile
                   AT END SET EndOfStudentFile TO TRUE
                END-READ
            ELSE IF (StudentID NOT = TransStudentID) THEN
                     WRITE NewStudentRecord FROM TransRecord
                 END-IF
                 READ TransFile
                      AT END SET EndOfTransFile TO TRUE
                 END-READ
            END-IF.

       DisplayNewFile.
            OPEN INPUT NewStudentFile
            DISPLAY "Stud-Id StudentName"
            READ NewStudentFile
              AT END SET EndOfNewStudentFile TO TRUE
            END-READ
            PERFORM UNTIL EndOfNewStudentFile
              DISPLAY NewStudentID " " NewStudentName
              READ NewStudentFile
                   AT END SET EndOfNewStudentFile TO TRUE
              END-READ
            END-PERFORM
            CLOSE NewStudentFile

            STOP RUN.
       END PROGRAM InsertRecords.

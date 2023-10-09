# Kalindi
Kalindi College Website by the Team TechElites

Instructor and Team Lead : Mr. Kulanshu Sharma

TechElites Team Members -
   (1) Operational Layer : Vasanti
   (2) UI Layer : Akshima, Nidhi, Priya, Riya, Nishita
   (3) Server Layer : Vaishnavi, Aishwarya,Garvita 
   (4) Database Layer : Divya, Anshika

(09/10/2023) SCHEMA…

TIMETABLE : 

Slot_Id   :  INTEGER

Day_Id   :  INTEGER

College_Id        :     INTEGER

Department_Id    :   INTEGER

Course_Id         :    INTEGER

Semester_Id    :    INTEGER
 
Group_id         :    INTEGER

Teacher_id      :    INTEGER

Subject_id      :    INTEGER

LAB_TUT.       :    SHORT INTEGER


(2) SLOT_TBL :  

    Slot_ID.  :       INTEGER
    DURATION  :  VARCHAR(30)

(3) DAY_TBL :

     DAY_ID.   :   INTEGER
     DAY_NAME  :  VARCHAR(20)

(4) COLLEGE_TBL :

     COLLEGE_ID.  :   INTEGER
     COLLEGE_NAME   :    VARCHAR(100)
     ADDRESS. :     VARCHAR(200)
     PRINCIPAL. :    VARCHAR(50)

(5) DEPARTMENT_TBL :

     DEPARTMENT_ID.  :       INTEGER
     DEPARTMENT_NAME :   VARCHAR(100)
     HOD                             :   VARCHAR(50)
     NO_OF_TEACHERS.   :    INTEGER
   NON_TEACHING_STAFF  :   INTEGER
   LOCATION         :                   VARCHAR(200)
  

(6) COURSE_TBL

    COURSE_ID.     :              INTEGER
    DEPARTMENT_ID  :          INTEGER
    COURSE_NAME.  :          VARCHAR(100)
    NO_OF_STUDENTS :       INTEGER

(7) TEACHER_TBL 

     TEACHER_ID.  :            INTEGER
     TEACHER_NAME  :      VARCHAR(50)
     DESIGNATION  :           VARCHAR(50)
     SALUTATION     :           VARCHAR(10)
     DEPARTMENT_ID   :     INTEGER
     EMAIL_ID.               :      VARCHAR(60)
     PHONE_NO            :      CHAR(10)
     QUALIFICATION    :       VARCHAR(150)

(8) SUBJECT_TBL

     SUBJECT_ID   :           INTEGER
     SUBJECT_NAME.    :  VARCHAR(100)
     NO_OF_HOURS.      :  INTEGER
     NO_OF_UNITS.         :  INTEGER

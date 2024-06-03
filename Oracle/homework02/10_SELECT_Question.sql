--1) 학생중에 동명이인을 검색한다
SELECT DISTINCT ST.SNAME
	FROM STUDENT ST
	JOIN STUDENT STM
	  ON ST.SNAME = STM.SNAME
	 AND ST.SNO != STM.SNO;

--2) 전체 교수 명단과 교수가 담당하는 과목의 이름을 학과 순으로 검색한다
SELECT P.PNAME
	 , C.CNAME
	FROM PROFESSOR P
	LEFT JOIN COURSE C
	  ON P.PNO = C.PNO
	ORDER BY P.SECTION;

--3) 이번 학기 등록된 모든 과목 정보와 담당 교수를 학점 순으로 검색한다
SELECT C.*
	 , P.PNAME
	FROM COURSE C
	JOIN PROFESSOR P
	  ON C.PNO = P.PNO
	JOIN SCORE SC
	  ON C.CNO = SC.CNO
	ORDER BY C.ST_NUM DESC;

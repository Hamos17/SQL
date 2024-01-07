# Intro

### 데이터베이스 관리 시스템
- 데이터베이스란 여러 응용 프로그램이나 여러 사용자가 접근할 수 있도록 중앙에서 관리되는 공유 가능한 형태의 통합된 데이터 집합
- 데이터베이스 관리 시스템(DBMS: Database Management System)은 데이터베이스를 관리하는 시스템
- SQL Server는 데이터 구조를 관계형으로 표현하는 관계형 데이터베이스 관리 시스템


### SQL Server 설치
- 인증모드
	- 인증모드에는 2가지가 존재하며 언제든 변경 가능
		- Windows 인증모드: 권한이 있는 Windows 계쩡으로만 접근 가능
		- 혼합모드: Windows 사용자가 아니더라도 관리자인 sa(System Administrator) 계정의 암호 지정 필요
- sa 계정: SQL Server 내에서 어떤 작업이든 수행할 수 있는 가장 강력한 권한을 갖는 계정


### SSMS(SQL Server Manaement Studio)
- SSMS는 SQL Server 도구 중 가장 많이 사용하는 핵심 도구로서 개발과 운영에 사용하는 통합 도구


### 데이터베이스 생성
- 데이터베이스 생성방법
	- 개체 탐색기에서 사용자 인터페이스를 사용하는 방법
	- 쿼리 창에서 직접 CREATE DATABASE문을 입력해서 실행하는 방법
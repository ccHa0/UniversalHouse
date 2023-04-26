此項專案為我與其他組員共同開發，我負責開發的部分是論壇平台的部分，以Eclipse與JAVA EE，使用Spring Boot + JSP開發，JPA 使用 SpringData JPA，資料庫為SQL SERVER，並運行在本機。
我撰寫的程式如下路徑 :
1. tw.forum.*
2. WEB-INF/forum/*

而資料庫有三個，彼此間使用Hibernate定義實體類之間的關係，分別如下 :
1.Article : 文章CRUD，一對多Comment、Status
2.Comment : 留言CRUD，多對一Article
3.Status : 確認使用者與文章的狀態(我的最愛、評價、檢舉......)，多對一Article

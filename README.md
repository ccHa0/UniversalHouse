此項專案為建置網頁平台-「萬事屋」，一個提供使用者接、發案的平台，我與其他5位成員於共同開發。其中我負責的部分是論壇平台，在Eclipse以JavaEE + JDK11，使用Spring Boot / MVC 、 Maven 和SpringData JPA，並運行在本機。
我撰寫的程式如下路徑 :
  1. src/main/java/tw.forum.*，架構使用MVC，分為Model與Controller，Model再細分Repository、Service與Component/Entity。
  2. WEB-INF/forum/*，前端運用JavaScript、jQuery與Ajax配合JSP(EL)。

資料庫為MS SQL Server使用T-SQL，建置有三，彼此以Hibernate定義實體類之間關聯 :
  1. Article : PK為articleId(Identity)，文章CRUD
  2. Comment : PK為commentId(Identity)，留言CRUD
  3. Status  : PK為statusId(Identity)，UQ為memberPk，確認使用者與文章的狀態(我的最愛、評價、檢舉......)

另外運用到框架與套件 : 
  1. BootStrap 5 / icons : 切版、圖形美化。
  2. DataTables : 表格快速製作。
  3. CKEditor 5 : 文章內容編輯。
  4. SweetAlert 2 : 使用者互動。
  5. Line it! : 分享。

<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="assets/src/header.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="icon" href="assets/images/logo.ico" type="image/x-icon" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="assets/css/header.css">
    <link rel="stylesheet" type="text/css" href="assets/css/footer.css">
    <link rel="stylesheet" type="text/css" href="assets/css/bttop.css">
    <link rel="stylesheet" type="text/css" href="assets/css/index.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <title>MEMERY</title>
</head>
<body>
<!--header-->
    <header>
      <%
      int count = 0;
      String countStr;
      try {
      if(con.isClosed())
        out.println("連線建立失敗");
      else{
        sql="select * from count" ;
        ResultSet rs1=con.createStatement().executeQuery(sql);
    
        if (rs1.next()){
          countStr = rs1.getString(1);
          count = Integer.parseInt(countStr);
    
          if (session.isNew())
          {
            count=count + 1;
            countStr = String.valueOf(count);
            //寫回資料庫
            sql="update count set count = '" + countStr + "'";
            con.createStatement().execute(sql);
          }
        }
    
        con.close();
        }
      }
      catch(Exception err)
      {
        out.println(err);
      }
      %>
      <div style="position:absolute; width:130px;left:60%;top:30px;color:white">網站瀏覽人數：<%out.print(count);%></div>
      <a href="index.jsp" class="logo"><span class="Tchange">MEME</span>RY</a>
        <ul>
            <li><a href="aboutus.jsp">About Us</a></li>
            <li><a href="shop.jsp">Shop</a></li>       
            <li><a href="cart.jsp">Cart</a></li>
            <% if(session.getAttribute("ID")!=null){%>
              <li><a href="signout.jsp" style="text-decoration:none;">登出</a></li> 
              <%if(session.getAttribute("ID").equals("admin")){%>	
                <li><a href="Mmember.jsp" style="text-decoration:none;">後臺管理</a></li>
              <%}else{%>
                <li><a href="member.jsp" style="text-decoration:none;">會員專區</a></li>
            <%}}else{%>
              <li><a href="login.jsp">MemberShip</a></li>
            <%}%>
        </ul>

    </header>
    <a href="#Top">
        <img src="assets/images/backtotop.png" width="100px" class="backtotop">
    </a>
    <div id="topimg"><img src="assets/images/hero2.jpg" width="100%" height="100%"></div>
    <section class="bigtitle">
      <span class="Tchange">MEME</span>RY
  </section> 
    <section class="banner"></section>
<!--advertisement-->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner" style="width: 80%; height: 60%; margin-left: 10%;">
    <div class="carousel-item active">
      <img src="assets/images/ad1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="assets/images/ad2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="assets/images/ad3.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    
    <!--Top-->
    <div class="top">
      <div class="hotsale">
        <h1><span class="Tchange">HOT</span> SALE</h1>
      </div>
    <table class="top_product">
      <tr>
        <td>
          <div class="containerr">
            <div class="imageBox">
              <img src="assets/images/product/product2-2.jpg" alt="">
              <div class="textBox">
                <h1>TOP Product</h1>
              </div>
            </div>
          </div>
        </td>
        <td class="Product_name">
          <h1>
            <a href="product.jsp?page=uki-2">凱風快晴 | がいふうかいせい</a>
          </h1>
          <p>葛飾 北斎</p>
          <p>
            凱風快晴的作畫視點是在甲斐國或者駿河國，和《山下白雨》一樣描繪的是日本的富士山，畫面最下方是富士山的樹海，背景是藍天白雲，富士山頂還有殘留的雪渓。而紅色的富士山頂也一樣引人注目。就紅色的富士山而言，它可能描繪的是夏季早晨的赤富士，但有研究表明沒有任何可靠信息能證明畫中的景象發生於早晨。
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <div class="containerr">
            <div class="imageBox">
              <img src="assets/images/product/product1-1.jpg" alt="">
              <div class="textBox">
                <h1>TOP Product</h1>
              </div>
            </div>
          </div>
        </td>
        <td class="Product_name">
          <h1>
            <a href="product.jsp?page=imp-1">星夜 | De sterrennacht</a>
          </h1>
          <p>文森·威廉·梵谷 | Vincent Willem van Gogh</p>
          <p>
            1889年12月23日，梵谷在與高更的一次爭吵之後，因思覺失調症復發而割下了自己的左耳，用手帕包起後送給一名妓女。隔年5月8日自願前往普羅旺斯地區聖雷米的一家精神病院治療，在那駐留了108天。在入住精神病院期間，梵谷創作了大量的繪畫作品，共計一百五十多幅油畫和一百多幅素描。在此階段的繪畫，梵谷的畫風開始趨向於表現主義，作品充滿憂鬱精神和悲劇性幻覺，其中作品《星夜》正是其中代表之一。作品《星夜》是在醫生允許梵谷白天可以外出的條件下所創作，而其作品所描述的風景也正是精神病院所在地聖雷米。
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <div class="containerr">
            <div class="imageBox">
              <img src="assets/images/product/product3-1.jpg" alt="">
              <div class="textBox">
                <h1>TOP Product</h1>
              </div>
            </div>
          </div>
        </td>
        <td class="Product_name">
          <h1>
            <a href="product.jsp?page=the-1">最後的晚餐 | l'ultima cena</a>
          </h1>
          <p>李奧納多·達文西 | Leonardo da Vinci</p>
          <p>
        
            以往《最後的晚餐》刻意渲染哀痛氣氛，眾門徒各自陷入沉思，猶大遠離眾人，彷彿他的罪行已經確定。但達文西獨具匠心，選擇了耶穌用餐時，宣布座中有人要出賣祂、眾門徒大為震驚的那一刻。 在耶穌右邊的一組中，我們看到一個黑暗的面容，他朝後倚著，仿佛從耶穌面前往後退縮似的。
            他的肘部擱在餐桌上，手裏抓著一只錢袋，我們知道他就是那個叛徒猶大。 猶大手中的錢袋是他的象徵，這使我們想起，他就是為耶穌和其他門徒保管錢財的人，錢袋裏裝著出賣耶穌得來的三十塊銀幣的賞錢。即使他沒有拿著那只錢袋，我們也能通過達文西的繪畫方式，辨別出這個罪惡的敵人猶大。
          </p>
        </td>
      </tr>
    </table>
  </div>
    <!--footer-->
    <footer>
      <div class="Copyright">
        <p>Copyright © 2022 , CYCUIM<br>GROUP22</p>
        <div class="contact">
          <a href="mailto:we751015@gmail.com"><img src="assets/images/mail.png"></a>
        </div>
        <p>CONTACT US</p>
      </div>
    </footer>
</body>
</html>
<script src="assets/src/effect.js" charset="utf-8"></script>
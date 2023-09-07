<%@ page import = "java.sql.*, java.util.*,  java.text.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="assets/src/header.js"></script>
    <link rel="icon" href="assets/images/logo.ico" type="image/x-icon" >
    <link rel="stylesheet" type="text/css" href="assets/css/header.css">
    <link rel="stylesheet" type="text/css" href="assets/css/footer.css">
    <link rel="stylesheet" type="text/css" href="assets/css/bttop.css">
    <link rel="stylesheet" type="text/css" href="assets/css/aboutus.css">
    <link rel="stylesheet" type="text/css" href="assets/css/comment.css">
    <title>About MEMERY</title>
</head>

<body>
    <!--header-->
    <header>
      <a href="index.jsp" class="logo"><span class="Tchange">MEME</span>RY</a>
        <ul>
            <li><a href="aboutus.jsp">About Us</a></li>
            <li><a href="shop.jsp">Shop</a></li>       
            <li><a href="cart.jsp">Cart</a></li>
            <% if(session.getAttribute("ID")!=null){%>
              <a href="signout.jsp" style="text-decoration:none;">登出</a>
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
    <div>
        <section class="bigtitle">
            
        </section> 
    </div>
    <section>
    
      
        <div class="boxall">
            <div class="box">
                <img src="assets/images/product/product4-2.jpg">
                <div class="box-hover-text">
                    <p class="box-body">我們是來自中原大學資管系的學生，此為我們所設計的網頁，
                    因為組員都非常熱愛藝術，所以想說藉由這次機會推廣一下世界知名畫作，
                    這些商品都是我們嚴格篩選出來的，當然還有非常多名畫等著大家探索，
                    總而言之，希望各位在參訪網頁時可以盡量點選每個商品，裡面都有介紹關於這幅畫作的由來，藝術是指憑藉技巧、意願、想像力、經驗等綜合人為因素的融合與平衡，以創作隱含美學的器物、環境、影像、動作或聲音的表達模式，也指和他人分享美的感覺或有深意的情感與意識的人類用以表達既有感知且將個人或群體體驗沉澱與展現的過程，在歐洲17世紀到18世紀，是藝術與科學一起進入知識累積與相互啓發而一同發展的關鍵時期，這個過程促使藝術與科學的成品成為西方人文思想及文明展現的重要象徵。歐洲啟蒙運動下發展出的百科全書亦是以藝術與科學所引發的人類群體新狀態而合編的以字典為標題的著作。</p>
                    <p class="box-link">專案組員介紹：</p>
                    <p class="box-link">10944224&nbsp王傑熙</a>、
                        <a >10944226&nbsp黃肇誼</a>、
                        <a>10912172&nbsp黃迦軒 </a>、
                        <a>10823103&nbsp劉兆禹</a>                                  
                    </p>
                </div>
            </div>
        </div>
    </section>

        <!--comments-->
        <div class="comments-app" ng-app="commentsApp" ng-controller="CommentsController as cmntCtrl">
            <!-- From -->
            <div class="comment-form">
            <!-- Comment Avatar -->
            <div class="comment-avatar">
              <img src="assets/images/avatar.png">
            </div>
        
            <form class="form" name="form" ng-submit="form.$valid && cmntCtrl.addComment()" novalidate>
              <div class="form-row">
                <textarea class="input" ng-model="cmntCtrl.comment.text" placeholder="Add comment..." required>
                </textarea>
              </div>
              <div class="form-row">
                <input type="submit" value="Add Comment">
              </div>
            </form>
          </div>
        
          <!-- Comments List -->
          <div class="comments">
            <!-- Comment -->
            <div class="comment" ng-repeat="comment in cmntCtrl.comments | orderBy: '-date'">
              <!-- Comment Avatar -->
              <div class="comment-avatar">
                <img ng-src="{{ comment.avatarSrc }}">
              </div>
        
              <!-- Comment Box -->
              <div class="comment-box">
                <div class="comment-text">{{ comment.text }}</div>
                <div class="comment-footer">
                  <div class="comment-info">
                    <span class="comment-author">
                      <em ng-if="comment.anonymous">Anonymous</em>
                      <a ng-if="!comment.anonymous" href="{{ comment.author }}">{{ comment.author }}</a>
                    </span>
                    <span class="comment-date">{{ comment.date | date: 'medium' }}</span>
                  </div>
        
                  <div class="comment-actions">
                    <a href="#">Reply</a>
                  </div>
                </div>
              </div>
            </div>
        
            <!-- Comment - Dummy -->
            <div class="comment">
              <!-- Comment Avatar -->
              <div class="comment-avatar">
                <img src="assets/images/avatar.png">
              </div>
        
              <!-- Comment Box -->
              <div class="comment-box">
                <div class="comment-text"> 雖然這學期因為疫情影響導致上課方式不得不改為線上授課，但結合線上同步與線下非同步的學習模式，我認為教學品質並未受到太大的影響，因為有TEAMS課程錄製的關係，也讓我可以在課後對課堂上不太懂的地放進行反覆觀看，最後在期末專題我們後端需要與前端合作完成一個具有資料庫的購物網站，雖然在過程中遇到許多bug與挫折，但在組員的合作討論下都一一解決了，總體而言是一次非常棒的經驗。
                  <div class="comment-footer">
                  <div class="comment-info">
                    <span class="comment-author">
                      劉兆禹
                    </span>
                  </div>
                </div>
              </div>
            </div>
        
        <!-- Comment - Dummy -->
          <div class="comment">
          <!-- Comment Avatar -->
          <div class="comment-avatar">
            <img src="assets/images/avatar.png">
          </div>
        
          <!-- Comment Box -->
            <div class="comment-box">
              <div class="comment-text">經過這次的期末專題, 可以令我們學會了如何利用jsp程式碼來與SQL做互動, 不但可以作為練習, 還可以為我們加一些經驗, 雖然過程中會遇到很多的bug, 但有其他組員的幫忙下最後都完成了。</div>
              <div class="comment-footer">
                <div class="comment-info">
                  <span class="comment-author">
                    黃迦軒
                  </span>
                </div>
              </div>
            </div>
          </div>
          </div>
        </div>
   <!--footer-->
   <footer>
    <div class="Copyright">
      <p>Copyright © 2022 , CYCUIM<br>GROUP22</p>
      <div class="contact">
        <a href="mailto:bra987662@gmail.com"><img src="assets/images/mail.png"></a>
      </div>
      <p>CONTACT US</p>
    </div>
  </footer>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script><script  src="assets/src/star.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script><script  src="assets/src/choose.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.14/angular.min.js"></script><script  src="assets/src/comment.js"></script>
</body>
</html>
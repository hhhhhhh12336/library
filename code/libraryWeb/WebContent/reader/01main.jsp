<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>图书馆简介</title>
<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<style>
.showCarousel  .carousel-inner > .item > img {

    display: block;
    width:100%;
    height:430px;
}
.showCarousel{
	margin-top:2%;
}
font{
	font-size:40px;
	color:black;
	font-family:YouYuan;
	font-weight:900;
}
.carousel-caption{
	margin-bottom:10%;
}
</style>
</head>
<body>
<%
	if(session.getAttribute("reader")!=null && session.getAttribute("reader_first")!=null &&session.getAttribute("reader_first").equals("1")){
		session.setAttribute("reader_first", "2");
		//session.setAttribute("reader", session.getAttribute("reader"));
		
%>
		<script>window.parent.location.href = "./04readerFrame.jsp";</script>
		
<%
	}
%>


<div id="carousel-example-generic" class="carousel slide showCarousel" data-ride="carousel" data-interval="2000" style="width:96%;margin-left:2%;">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="../public/image/1.jpg" alt="...">
    </div>
    <div class="item">
      <img src="../public/image/2.jpg" alt="...">      
    </div>
	<div class="item">
      <img src="../public/image/3.jpg" alt="...">     
    </div>
  </div>
 
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<h2 align="center">图书馆简介</h2>
        <div class="art_time"></div>
        <p class="duanluo"><p style="text-align: justify; text-indent: 32px; line-height: 3em;">
        <span style="text-indent: 37px; font-size: 15px; font-family: 宋体, SimSun;">中南民族大学图书馆始建于1951年，坐落于武汉美丽的南湖之滨，由老馆、新馆、南书院和北书院等4部分组成，馆舍面积46217平方米，其中新馆主楼17层，高85米，是一座仿古式南北对称双塔楼，故而新馆又称“双塔楼”。新馆挺拔伟岸的身姿、典雅古朴的风韵与杨柳依依的南湖交相辉映，成为武汉东湖高新技术开发区的标志性建筑和学校校园内亮丽的风景。</span></p>
        <p style="text-align: justify; text-indent: 32px; line-height: 3em;">
        <span style="text-indent: 37px; font-size: 15px; font-family: 宋体, SimSun;">
        <span style="font-family: 宋体, SimSun; font-size: 15px; text-indent: 37px;">图书馆全馆现有88名职工，均为大专以上文化程度，其中博士4人，硕士13人，具有高级职称15人。全馆下设办公室、资源建设部、技术服务部、信息咨询部（信息素养培训部）、读者服务部（阅读推广部）、南方少数民族文献中心（古籍与特藏部）6个工作部门。全馆共有阅览座位5685个，其中南书院自习室自习座位3292个除春节外全年开放。</span></span></p><p style="text-align: justify; text-indent: 32px; line-height: 3em;">       
        <span style="font-family: 宋体, SimSun; font-size: 15px;">截止2018年底，图书馆馆藏总量已达940万余册，其中电子图书631万余册，纸本图书239万余册。采购了包括中国知网、超星读秀、万方数据库、Elsevier、Wiley、Springer Link、EBSCO数据库、WoS( SCIE/SSCI)数据库等60余个中外数据库（平台）供全校师生使用。此外，图书馆还自建了吴泽霖特色数据库、岑家梧特色数据库、严学宭特色数据库、女书文化特色数据库、中南民族大学学位论文库、南方少数民族文献数据库、中南民族大学古籍数字化服务平台等7个特色资源库以及1个土家族摆手舞资源平台。中南民族大学图书馆已基本形成具有本校特色、结构合理、质量较高的馆藏文献资源体系。</span><br/></p><p style="text-indent: 37px; line-height: 3em;">
        <span style="font-size: 15px; font-family: 宋体, SimSun;">2017年，图书馆建设了RFID智能图书馆管理系统，迈入智慧型图书馆建设新时期。实行了全开放阅览、图书自助借还、24小时还书等全新服务，提高了图书流通速度，延长了开放时间，提升了读者体验感。此外，北书院的研讨室、培训室、多媒体视听空间、创意空间等使图书馆的服务更加人性化、个性化、高效化。此外，图书馆发挥图书情报专业人才优势，为全校本科生文献信息检索公选修课，协助学院开设专业信息检索课，走进学院提供嵌入式的学科服务，主动上门为职能部门提供参考咨询与决策咨询服务。</span></p><p style="text-indent: 32px; line-height: 3em;">      
        <span style="font-size: 15px; font-family: 宋体, SimSun;">长期以来，图书馆倡导“全民阅读”，举办各类读书文化活动，并积极向社会开放。注重以“教育”和“服务”促进各民族学子共学共进，以“阅读”和“文化”强化中华民族一家亲，以“开放”和“创新”履行社会职能，打造了中南民族大学读书节、中华民族一家亲文化知识竞赛、中华诗词大赛、学霸帮帮忙学习方法分享午餐会、艺苑书画研习营等活动。培育了中华民族共同体意识，传承了中华各民族优秀传统文化，构建了共学共进书香校园。2019年，图书馆被国家民委命名为“全国民族团结进步教育基地”，获评2018-2019年度“湖北省高校图书馆先进集体”。</span></p><p style="text-indent: 37px; line-height: 3em;">
        <span style="font-size: 15px; font-family: 宋体, SimSun;">前进中的中南民族大学图书馆以其优美的环境、丰富的文献资源、智能化的服务成为各民族学子博览群书、畅游学海、获取知识的殿堂；图书馆员们正以专业的素养、忠诚敬业的精神和热情周到的服务，引导各民族学子度过在中南民族大学美好的求学时光。</span></p><p style="LINE-HEIGHT: 150%; TEXT-INDENT: 32px"><span style="FONT-SIZE: 15px; FONT-FAMILY: 宋体; LINE-HEIGHT: 150%"></span><br/></p><p style="TEXT-ALIGN: center; LINE-HEIGHT: 150%">
        <span style="FONT-SIZE: 15px; FONT-FAMILY: 宋体; LINE-HEIGHT: 150%"></span></p><p style="LINE-HEIGHT: 150%; TEXT-INDENT: 32px">         
<p style="text-align: right;">（2022年1月更新）</p>
</body>
</html>
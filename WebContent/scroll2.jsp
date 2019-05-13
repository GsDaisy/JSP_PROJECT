<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.box {
    position:relative;

}
.sky {
    position:absolute;
    right:-150px;
    margin-top: 50px;
    width: 140px;
    height: 140px;
]
} 
</style>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(function () {
    $(window).scroll(function () { //브라우저에 스크롤이 발생하는 순간부터
        var curpos = $(window).scrollTop()+70; //스크롤바의 상단 위치값+20 보관
        $(".sky").stop().animate({"top":curpos}); //스카이메뉴의 상단위치값 애니
    });
});

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="box">
    <div class="sky"><a href="mailto:s2017s12@e-mirim.hs.kr"><img alt="" src="scroll2.gif"></a></div>
</div>
</body>
</html>
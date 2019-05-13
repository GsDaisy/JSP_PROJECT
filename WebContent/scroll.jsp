<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>


<script type="text/javascript">


 var stmnLEFT = 10; 
 var stmnGAP1 = 0; 
 var stmnGAP2 = 150; 
 var stmnBASE = 150; 
 var stmnActivateSpeed = 35; 
 var stmnScrollSpeed = 20; 
 var stmnTimer; 
 
 function RefreshStaticMenu() { 
  var stmnStartPoint, stmnEndPoint; 
  stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
  stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
  if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
  if (stmnStartPoint != stmnEndPoint) { 
   stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
   document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
   stmnRefreshTimer = stmnScrollSpeed; 
   }
  stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
  } 

 function InitializeStaticMenu() {
  document.getElementById('STATICMENU').style.right = "10px"; 
  document.getElementById('STATICMENU').style.top = document.body.scrollTop + 150 + 'px'; 
  RefreshStaticMenu();
  }
</script>

<style type="text/css">
#STATICMENU { margin: 0pt; padding: 0pt;  position: absolute; right: 0px; top: 0px;}
</style>


    
</head>
<body onload="InitializeStaticMenu();">

<div id="STATICMANU">
    <img src="scroll.gif">
    </div>
    
</body>
</html>
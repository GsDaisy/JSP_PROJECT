<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
    <style type="text/css">
    	b{
    		font-size: 30px;
    		color: #8293A1;
    	}
    </style>
        <title>게시판</title>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
            	
            	var reply_count = 0; //원래 DB에 저장하고 저장 아이디 번호를 넘겨줘야 하는데 DB 없이 댓글 소스만 있어 DB 에서 아이디 증가하는것처럼 스크립트에서 순번을 생성
            	var status = false; //수정과 대댓글을 동시에 적용 못하도록
                 
                 
                //댓글 저장
                $("#reply_save").click(function(){
                     
/*                 	if((session.getAttribute("id")==null)|| (session.getAttribute("id").equals(""))){
                		alert("Login is required.");
                		return false;
                	} */

                    //널 검사
                    if($("#reply_writer").val().trim() == "" || $("#reply_writer").val().trim()=="null"){
                        alert("Login is required.");    
                        return false;
                    }
                     
                    if($("#reply_content").val().trim() == ""){
                        alert("Please type your comments.");
                        $("#reply_content").focus();
                        return false;
                    }
                     
                    var reply_content = $("#reply_content").val().replace("\n", "<br>"); //개행처리
                     
                    //값 셋팅
                    var objParams = {
                            board_id        : $("#board_id").val(),
                            parent_id       : "0",  
                            depth           : "0",
                            reply_writer    : $("#reply_writer").val(),
                            reply_password  : $("#reply_password").val(),
                            reply_content   : reply_content
                    };
                     
                    var reply_id;
                     
                    
                    
                    
                    reply_id = reply_count++;//DB에 저장했다 하고 순번을 생성
                    
                    var reply_area = $("#reply_area");
                     
                    var reply = 
                        '<tr reply_type="main">'+
                        '   <td width="820px">'+
                        reply_content+
                        '   </td>'+
                        '   <td width="100px">'+
                        $("#reply_writer").val()+
                        '   </td>'+
/*                         '   <td width="100px">'+
                        '       <input type="password" id="reply_password_'+reply_id+'" style="width:100px;" maxlength="10" placeholder="패스워드"/>'+
                        '   </td>'+ */
                        '   <td align="center">'+
                        /* '       <button name="reply_reply" reply_id = "'+reply_id+'">댓글</button>'+ */
                       /*  '       <button name="reply_modify" r_type = "main" reply_id = "'+reply_id+'">수정</button>      '+ */
                        '       <button name="reply_del" reply_id = "'+reply_id+'">DEL</button>      '+
                        '   </td>'+
                        '</tr>';
                         
                     if($('#reply_area').contents().size()==0){
                         $('#reply_area').append(reply);
                     }else{
                         $('#reply_area tr:last').after(reply);
                     }
 
                    //댓글 초기화
                    
                    $("#reply_password").val("");
                    $("#reply_content").val("");
                     
                });
                 
                //댓글 삭제
                $(document).on("click","button[name='reply_del']", function(){
                     
                    var check = false;
                    var reply_id = $(this).attr("reply_id");
                    var reply_password = "reply_password_"+reply_id;
                     
/*                     if($("#"+reply_password).val().trim() == ""){
                        alert("패스워드을 입력하세요.");
                        $("#"+reply_password).focus();
                        return false;
                    } */
                     
                    //패스워드와 아이디를 넘겨 삭제를 한다.
                    //값 셋팅
                    var objParams = {
                            reply_password  : $("#"+reply_password).val(),
                            reply_id        : reply_id
                    };
                     
                    check = true;//삭제 되면 체크값을 true로 변경
                     
                    if(check){
                        //삭제하면서 하위 댓글도 삭제
                        var prevTr = $(this).parent().parent().next(); //댓글의 다음
                         
                        while(prevTr.attr("reply_type")=="sub"){//댓글의 다음이 sub면 계속 넘어감
                            prevTr = prevTr.next();
                            prevTr.prev().remove();
                        }
                         
                        //마지막 리플 처리
                        if(prevTr.attr("reply_type") == undefined){
                            prevTr = $(this).parent().parent();
                            prevTr.remove();
                        }
                         
                        $(this).parent().parent().remove(); 
                    } 
                     
                });
                
                //댓글 수정 입력
                $(document).on("click","button[name='reply_modify']", function(){
                	
                    var check = false;
                    var reply_id = $(this).attr("reply_id");
                    var r_type = $(this).attr("r_type");
                    var reply_password = "reply_password_"+reply_id;
                     
                    if($("#"+reply_password).val().trim() == ""){
                        alert("패스워드을 입력하세요.");
                        $("#"+reply_password).focus();
                        return false;
                    }
                     
                    //패스워드와 아이디를 넘겨 패스워드 확인
                    //값 셋팅
                    var objParams = {
                            reply_password  : $("#"+reply_password).val(),
                            reply_id        : reply_id
                    };
                     

                    
                    check = true;//패스워드가 맞으면 체크값을 true로 변경
                    
                    if(status){
                		alert("수정과 대댓글은 동시에 불가합니다.");
                		return false;
                	}
                	
                	status = true;
                    
                    if(check){
                    	//자기 위에 댓글 수정창 입력하고 기존값을 채우고 자기 자신 삭제
                    	var txt_reply_content = $(this).parent().prev().prev().prev().html().trim(); //댓글내용 가져오기
                    	if(r_type=="sub"){
                    		txt_reply_content = txt_reply_content.replace("→ ","");//대댓글의 뎁스표시(화살표) 없애기
                    	}
                    	
                    	var txt_reply_writer = $(this).parent().prev().prev().html().trim(); //댓글작성자 가져오기
                    	
                    	//입력받는 창 등록
                        var replyEditor = 
                           '<tr id="reply_add" class="reply_modify">'+
                           '   <td width="820px">'+
                           '       <textarea name="reply_modify_content_'+reply_id+'" id="reply_modify_content_'+reply_id+'" rows="3" cols="50">'+txt_reply_content+'</textarea>'+ //기존 내용 넣기
                           '   </td>'+
                           '   <td width="100px">'+
                           '       <input type="text" name="reply_modify_writer_'+reply_id+'" id="reply_modify_writer_'+reply_id+'" style="width:100%;" maxlength="10" placeholder="작성자" value="'+txt_reply_writer+'"/>'+ //기존 작성자 넣기
                           '   </td>'+
                           '   <td width="100px">'+
                           '       <input type="password" name="reply_modify_password_'+reply_id+'" id="reply_modify_password_'+reply_id+'" style="width:100%;" maxlength="10" placeholder="패스워드"/>'+
                           '   </td>'+
                           '   <td align="center">'+
                           '       <button name="reply_modify_save" r_type = "'+r_type+'" reply_id="'+reply_id+'">등록</button>'+
                           '       <button name="reply_modify_cancel" r_type = "'+r_type+'" r_content = "'+txt_reply_content+'" r_writer = "'+txt_reply_writer+'" reply_id="'+reply_id+'">취소</button>'+
                           '   </td>'+
                           '</tr>';
                        var prevTr = $(this).parent().parent();
                       	//자기 위에 붙이기
                        prevTr.after(replyEditor);
                        
                        //자기 자신 삭제
                        $(this).parent().parent().remove(); 
                    }
                     
                });

                 
            });
        </script>
    </head>
    <style>
        textarea{
              width:100%;
            }
             
        .reply_reply {
                border: 2px solid #FF50CF;
            }
        .reply_modify {
                border: 2px solid #FFBB00;
            }
    </style>
    <body>
        <input type="hidden" id="board_id" name="board_id" value="${boardView.id}" />
        <div align="center">
            <br>
            <br>
            <table width="700px" >
<!--                 <tr>
                    <td colspan="2" align="right">
                        <input type="password" id="password" name="password" style="width:200px;" maxlength="10" placeholder="패스워드"/>
                        <button id="modify" name="modify">글 수정</button>
                        <button id="delete" name="delete">글 삭제</button>
                    </td>
                </tr> -->
                <tr>
                    <td width="900px">
                    <b>How was "Silver Now" for you?</b>
                    </td>
                </tr>
                <tr height="200px">
                    <td colspan="2" valign="top">
                        <b>Tell me in the comments!</b>
                    </td>
                </tr>
            </table>
            <table width="700px" id="reply_area">
                <tr reply_type="all"><!-- 뒤에 댓글 붙이기 쉽게 선언 -->
                    <td colspan="4"></td>
                </tr>
                <!-- 댓글이 들어갈 공간 -->
                
                
                
            </table>
            <table width="700px" color="#46AA46">
                <tr>
                    <td width="500px">
           NAME : <input type="text" id="reply_writer" name="reply_writer" style="width:170px;" maxlength="10" value="<%=session.getAttribute("name")%>" readonly="readonly"/>
                       <!--  패스워드: <input type="password" id="reply_password" name="reply_password" style="width:170px;" maxlength="10" placeholder="패스워드"/> -->
                        

                        
                        <button id="reply_save" name="reply_save">Register comments</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <textarea id="reply_content" name="reply_content" rows="4" cols="50"></textarea>
                    </td>
                </tr>
            </table>

        </div>
    </body>
</html>
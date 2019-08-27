<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>パスワード再設定</title>

<style type="text/css">
body{
       margin:0;
       padding:0;
       line-height:1.6;
       letter-spacing:1px;
       font-family:Verdana,Helvetica,sans-serif;
       font-size:12px;
       color:#333;
       background:#fff;"
     }

     table{
       text-align:center;
       margin:0 auto;
     }

     #top{
       width:780px;
       margin:30px auto;
       border:1px solid #333;
     }

     #header{
       width:100%;
       height:80px;
       background-color:black;
     }

     #main{
       width:100%;
       height:500px;
       text-align:center;
     }

     #footer{
       width:100%;
       height:80px;
       background-color:black;
       clear:both;
     }

     #text-right{
       display: inline-block;
       text-align: right;
     }
     </style>
</head>
<body>
     <div id="header">
          <div id="pr">
          </div>
     </div>
     <div id="main">
          <div id="top">
               <p>resetpassword</p>
          </div>
<s:if test="userIdErrorMessageList!=null && userIdErrorMessageList.size()>0">
	<div class="error">
	<div class="error-message">
		<s:iterator value="userIdErrorMessageList"><s:property />
		<br></s:iterator>
		</div>
		</div>
	</s:if>

	<s:if test="passwordErrorMessageList!=null && passwordErrorMessageList.size()>0">
	<div class="error">
	<div class="error-message">
		<s:iterator value="passwordErrorMessageList"><s:property />
		<br></s:iterator>
		</div>
		</div>
	</s:if>
	<s:if test="newPasswordErrorMessageList!=null && newPasswordErrorMessageList.size()>0">
	<div class="error">
	<div class="error-message">
		<s:iterator value="newPasswordErrorMessageList"><s:property />
		<br></s:iterator>
		</div>
		</div>
	</s:if>

	<s:if test="reConfirmationNewPasswordErrorMessageList!=null && reConfirmationNewPasswordErrorMessageList.size()>0">
	<div class="error">
	<div class="error-message">
		<s:iterator value="reConfirmationNewPasswordErrorMessageList"><s:property />
		<br></s:iterator>
		</div>
		</div>
	</s:if>

	<s:if test="passwordIncorrectErrorMessage!=null && !passwordIncorrectErrorMessage.isEmpty()">
	<div class="error">
	<div class="error-message">
		<s:property value="passwordIncorrectErrorMessage"/>
		<br>
	</div>
	</div>
	</s:if>
	<s:if test="newPasswordIncorrectErrorMessage!=null && !newPasswordIncorrectErrorMessage.isEmpty()">
	<div class="error">
		<div class="error-message">
			<s:property value="newPasswordIncorrectErrorMessage"/>
			<br>
		</div>
	</div>
	</s:if>

<s:form action="ResetPasswordConfirmAction">
	<table class="vertical-list-table">
		<tr>
			<th scope="row"><s:label value="ユーザーID"/></th>
			<td><s:textfield name="userId" value="%{#session.userIdForResetPassword}" placeholder="ユーザーID" class="txt" /></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="現在のパスワード"/></th>
			<td><s:password name="password" value="" placeholder="現在のパスワード" class="txt" /></td>
		</tr>

		<tr>
			<th scope="row"><s:label value="新しいパスワード"/></th>
			<td><s:password name="newPassword" value="" placeholder="新しいパスワード" class="txt" /></td>
		<tr>
			<th scope="row"><s:label value="新しいパスワード（再確認）"/></th>
			<td><s:password name="reConfirmationPassword" value="" placeholder="新しいパスワード（再確認）" class="txt" /></td>
		</tr>
		 <tr>
                         <td><input type="button" value="完了" onclick="submitAction('LoginAction')" /></td>
                    </tr>
	</table>
	<div>
               <p>前画面に戻る場合は<a href='<s:url action="LoginAction"/>'>こちら</a></p>
               <p>マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a></p>
          </div>
</s:form>
</div>
     <div id="footer">
          <div id="pr">
          </div>
     </div>
</body>
</html>
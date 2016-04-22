<?php	
	header("Content-type: text/html; charset=UTF-8");
	$pattern = "/^([0-9A-Za-z\\-_\\.]+)@([0-9a-z]+\\.[a-z]{2,3}(\\.[a-z]{2})?)$/i";
	if ( preg_match( $pattern, $_POST["mail"] ) )
	{
		$mailtitle = "您的申请我们已经成功收到";//邮件主题	
		$mailcontent = sprintf("亲爱的%s<br>感谢您对IBM俱乐部的关注，3个工作日内我们将以邮件或者手机的方式通知您面试的时间与地点，敬请关注。",$_POST["name"]);//邮件内容
		$state = wp_mail($_POST["mail"],$mailtitle,$mailcontent);
		if ($state)
		{
			echo "
			<title>jQuery UI 对话框（Dialog） - 默认功能</title>;        
			<link rel=\"stylesheet\" href=\"http://code.jquery.com/ui/1.11.4/themes/black-tie/jquery-ui.css\"> 
			<script src=\"//code.jquery.com/jquery-1.9.1.js\"></script>
			<script src=\"//code.jquery.com/ui/1.10.4/jquery-ui.js\"></script>
			<link rel=\"stylesheet\" href=\"http://jqueryui.com/resources/demos/style.css\">
			<script>
			  $(function() {
				$( \"#dialog\" ).dialog();
			  });
			</script>        
			<div id=\"dialog\" title=\"亲爱的{$_POST["username"]}同学\">
				 <p>感谢您对IBM学生俱乐部的支持，三个工作日内我们将以短信形式通知你面试的时间，敬请关注</p>
			</div>";		
		}
	}
	else {
		
	}	
?>
<html>
  <head>
    <title></title>
    <style type="text/css">
	<META http-equiv=Content-Type content="text/html; charset=UTF-8">	
<!--
.STYLE2 {font-family: "Microsoft YaHei UI"}
-->
    </style>
  </head>
  <body>
    <form action="" method="post">
      <table width="541" border="0">
        <tr>
          <td width="26%">姓名：</td>
          <td width="74%">
            <input type="text" required="required" name="username" id="username" autocomplete="on" placeholder="请输入您的姓名"/>          </td>
        </tr>
        <tr>
          <td>专业：</td>
          <td>
            <input type="text" required="required" name="specialty" maxlength="10" autocomplete="on" id="specialty" />          </td>
        </tr>
        <tr>
          <td>书院：</td>
          <td>
            <select name="age">
              <option value="仲英书院" autocomplete="on" selected="selected">仲英书院</option>
              <option value="崇实书院">崇实书院</option>
              <option value="彭康书院">彭康书院</option>
              <option value="文治书院">文治书院</option>
              <option value="南洋书院">南洋书院</option>
			  
            </select>          </td>
        </tr>
        <tr>
          <td>邮箱：</td>
          <td>
            <input type="email" required="required" name="mail" autocomplete="on" id = "mail" placeholder="请输入正确的邮箱"/>        
          <td>

        </tr>
		
        <tr>
          <td>
          爱好：</td>
          <td>
		<input name="hobbies" required="required" type="text" autocomplete="on" id="hobbies" placeholder="请输入您的爱好">        </tr>
        <tr>
          <td valign="top" nowrap>
          手机：</td>
          <td>
		<input name="tel" required="required" type="tel" id="tel" autocomplete="on" value="" length="11" placeholder="请输入您的手机号码">        </tr>		
        <tr>
          <td nowrap>希望进入的部门（可多选）：</td>
			<td>
				<input type="checkbox" name="apartment" value="技术部" checked="checked" id="languages[]" /> 技术部 
				<input type="checkbox" name="apartment[]" value="事务部" id="languages[]" /> 事务部
				<input type="checkbox" name="apartment[]" value="美工部" id="languages[]" /> 美工部			</td>
        </tr>
        <tr>
          <td valign="top"><div align="left">自我介绍：</div></td>
          <td>
            <textarea name="intro" required="required" autocomplete="on" rows="25" cols="50" id="intro" placeholder="简介不能为空">请输入您的自我介绍</textarea>          </td>
        </tr>		
        <tr>
          <td valign="top"></td>
          <td>
            <input type="submit" name="btn_submit" value="提交" />
          <input type="reset" name="btn_submit2" value="清空" />          </td>
        </tr>
      </table>
    </form>
  </body>
</html>


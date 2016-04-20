<?php	
	header("Content-type: text/html; charset=UTF-8");

	if($_POST["mail"] != ""){
		$mailtitle = "您的申请我们已经成功收到";//邮件主题	
		$mailcontent = sprintf("亲爱的%s<br>感谢您对IBM俱乐部的关注，3个工作日内我们将以邮件或者手机的方式通知您面试的时间与地点，敬请关注。",$_POST["name"]);//邮件内容
		$state = wp_mail($_POST["mail"],$mailtitle,$mailcontent);
		
		echo "<div style='width:300px; margin:36px auto;'>";		
		if($state==""){
			echo $_POST["mail"];
			exit();
		}
		echo $_POST["name"];
		echo "您好<br>";
		echo "<strong>感谢您对IBM俱乐部的关注，3个工作日内我们将以邮件或者手机的方式通知您面试的时间与地点，敬请关注。</strong></div>";
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
            <input type="text" name="name" value="" id="name" />          </td>
        </tr>
        <tr>
          <td>专业：</td>
          <td>
            <input type="text" name="specialty" maxlength="10" id="specialty" />          </td>
        </tr>
        <tr>
          <td>书院：</td>
          <td>
            <select name="age">
              <option value="仲英书院" selected="selected">仲英书院</option>
              <option value="崇实书院">崇实书院</option>
              <option value="彭康书院">彭康书院</option>
              <option value="文治书院">文治书院</option>
              <option value="南洋书院">南洋书院</option>
			  
            </select>          </td>
        </tr>
        <tr>
          <td>邮箱：</td>
          <td>
            <input type="text" name="mail" id = "mail" />        
          <td>

        </tr>
		
        <tr>
          <td>
          爱好：</td>
          <td>
		<input name="hobbies" type="text" id="hobbies" value="">        </tr>
        <tr>
          <td valign="top" nowrap>
          手机：</td>
          <td>
		<input name="tel" type="text" id="tel" value="" length="11">        </tr>		
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
            <textarea name="intro" rows="25" cols="50" id="intro">请输入您的自我介绍</textarea>          </td>
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


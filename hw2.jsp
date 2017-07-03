<%@ page contentType="text/html;charset=UTF-8"%>

<html>

<head>
	<script type="text/javascript">
	var flag = true;
	var pwdvalue;

	var nameflag = true;
	var pwdflag = true;
	var repwdflag = true;
	var teleflag = true;
	var phoneflag = true;
	var mailflag = true;
	var addressflag = true;

	function username() { // 用户名
		// flag = true;
		var un = document.getElementById('text1').value;
		// alert(un);
		if(!isNaN(un[0]) || un.length<2 || un.length>18){
			alert("username is wrong");
			nameflag = false;
		}
	}

	function pwd() { // 密码

		// alert("p");

		// flag = true;
		var flag1 = false; // 6 -- 18 
		var flag2 = false; // 有数字
		var flag3 = false; // 含特殊字符
		var flag4 = false; // 含大写英文
		var flag5 = false; // 含小写字母
		var p = document.getElementById('text2').value;
		// alert("p");

		if (p.length<6 || p.length>18 ) {
			alert("少于六位或多于18位");
			flag1 = false;

		} else {
			flag1 = true;
			for (var i = 0; i < p.length; i++) {

				// alert("for循环");

				var asc = p[i].charCodeAt(); // asc 为阿斯克码

				if (!isNaN(p[i])) { // 是数字
					
					flag2 = true; 
					// alert("2"+flag2);
				}else if( (asc>=33 && asc<=47) || (asc>=58 && asc<=64) || (asc>=91 && asc<=96) || (asc>=123 && asc<=126) ){ // 含特殊字符
					
					flag3 = true;
					// alert("3"+flag3);
				}else if(asc>=65 && asc<=90) { // 含 大写英文字母
					
					flag4 = true;
					// alert("4"+flag4);
				}else if(asc>=97 && asc<=122) { // 含小写英文字母
					
					flag5 = true;
					// alert("5"+flag5);
				} 
			}
		}

		if (flag1==true && flag2==true && flag3==true && flag4==true && flag5==true) {
			pwdflag = true;
			pwdvalue = p;
			// alert(p);
			// alert(pwdvalue);
		}else {
			pwdflag = false;
			alert("密码输入有误");
		}

	}

	function repwd() { // 确认密码
		var repwdvalue = document.getElementById('text3').value;
		// alert(repwdvalue);
		// alert(pwdvalue);
		if (repwdvalue != pwdvalue) { // 不相等  返回false   !repwdvalue.equals(pwdvalue)   repwdvalue != pwdvalue
			
			repwdflag = false;
			alert("密码不一致");
		} else {
			repwdflag = true;
		}
	}

	function telephone() {
		// flag = true;
		var tele = document.getElementById('text4').value;
		if (tele.length != 11) {
			alert("手机号不等于11位");
			teleflag = false;
		}else { // 等于11位
			var fnum = tele.substring(0,2);
			if ( fnum!="13" && fnum!="15" && fnum!="17" ) {
				alert("手机号不正确");
				teleflag = false;
			}else {
				teleflag = true;
			}
		}
	}

	function phone() {
		// flag = true;
		var ph = document.getElementById('text5').value;
		if (ph.length < 7) { // 小于 7
			phoneflag = false;
			alert("小于 7 位");
		} else if (ph.length == 7 || ph.length == 8) { // 满足 7 或 8
			phoneflag = true;
		} else if (ph.length > 8) { // 超过8位	
			// alert("超过8位");
			var judge = /^[0-9]{3,4}\-[0-9]+$/; // 正则表达式 是否含有 -  
			if ( judge.test(ph) ) { // 含有 - 
				// alert("正确");
				phoneflag = true;
			} else {
				alert("固定电话不正确");
				phoneflag = false;
			}
		}
	}

	function email() {
		// flag = true;
		var em = document.getElementById('text6').value;
		var ejudge = /^[a-z0-9A-Z]+\@([a-z0-9A-Z]+\.)[a-z]+$/;
		// alert("---邮箱---");
		if ( ejudge.test(em) ) { // 满足
			// alert("邮箱满足");
			mailflag = true;
		}else {
			alert("邮箱格式不正确");
			mailflag = false;
		}
	}

	function address() {
		// flag = true;
		var ads = document.getElementById('text7').value;
		if (ads.length>10) { // 大于10
			addressflag = true;
		}else {
			alert("家庭住址小于10位");
			addressflag = false;
		}
	}

	function allvalue() {
		// alert("123123");

		username();
		pwd();
		repwd();
		telephone();
		phone();
		email();
		address();

		if (nameflag==true && pwdflag==true && repwdflag==true && teleflag==true && phoneflag==true && mailflag==true && addressflag==true) {
			return true;
		}else {
			alert("注册失败！");
			return false;
		}


		// if (flag == true) {
		// 	// alert("chenggong");
		// 	return true;
		// } else{
		// 	alert("失败");
		// 	return false;
		// }
	}

	</script>
</head>

<body>
<form action="hw2_1.jsp" method="post" name="form1"><br>
用户名：<input type="text" name="text1" id="text1"><br>
密码：<input type="text" name="text2" id="text2"><br>
确认密码：<input type="text" name="text3" id="text3"><br>
手机号码：<input type="text" name="text4" id="text4"><br>
固定电话：<input type="text" name="text5" id="text5"><br>
电子邮箱：<input type="text" name="text6" id="text6"><br>
家庭住址：<input type="text" name="text7" id="text7"><br> 
<!-- <input type="submit" value="注册" onclick="userName()"> -->
<!-- <input type="submit" value="注册" onclick="getvalue(document.getElementById("textt").value)" > -->
<input type="submit" value="注册" onclick="return allvalue()">
</form>
</body>
</html>

function checkstName() {
	var bool = true;
	var value = $("#stName").val();
	if (!value) {
		$("#stName1").css("display", "");
		$("#stName1").text("用户名不能为空！");
		bool = false;
	} else if (value.length < 3 || value.length > 20) {
		$("#stName1").css("display", "");
		$("#stName1").text("用户名长度为3 ~ 20 之间！");
		bool = false;
	}
	return bool;
}
function clearstName() {
	var bool = false;
	$("#stName1").css("display", "");
	$("#stName1").text("");
	return bool;
}

function checkstSex(obj) {
	var bool = true;
	var i = 0;
	for (i = 0; i < obj.oo.length; i++)
		if (obj.oo[i].checked == true)
			bool = true;
		else{
			bool = false;
		}
	return bool;

}

function checkstAge() {
	var bool = true;
	var value = $("#stAge").val();
	if (!value){
		$("#stAge1").css("display", "");
		$("#stAge1").text("年龄不能为空！");
		bool = false;
	}
	var i;
	for(i = 0; i < value.length; i++) {
		//alert(value.charAt(i) < "0" || value.charAt(i) > "9");
		if(value.charAt(i) < "0" || value.charAt(i) > "9"){
			$("#stAge1").css("display", "");
			$("#stAge1").text("年龄仅为数字！");
			return false;
		}
	};

	return bool;
}

function clearstAge() {
	var bool = false;
	$("#stAge1").css("display", "");
	$("#stAge1").text("");
	return bool;
}

function checkstTel() {
	var bool = true;
	var value = $("#stTel").val();
	if (!value) {
		$("#stTel1").css("display", "");
		$("#stTel1").text("号码不能为空！");
		bool = false;
	} else if (!(/^1[3|5|8][0-9]\d{4,8}$/.test(value)) || value.length < 11) {
		$("#stTel1").css("display", "");
		$("#stTel1").text("号码格式不正确！");
		return false;
	}

	return bool;
}

function clearstTel() {
	var bool = false;
	$("#stTel1").css("display", "");
	$("#stTel1").text("");
	return bool;
}

function checkstDept() {
	var bool = true;
	var value = $("#stDept").val();
	if (!value) {
		$("#stDept1").css("display", "");
		$("#stDept1").text("系别不能为空！");
		bool = false;
	}
	return bool;
}

function clearstDept() {
	var bool = false;
	$("#stDept1").css("display", "");
	$("#stDept1").text("");
	return bool;
}

function checkstAddress() {
	var bool = true;
	var value = $("#stAddress").val();
	if (!value) {
		$("#stAddress1").css("display", "");
		$("#stAddress1").text("地址不能为空！");
		bool = false;
	}
	return bool;
}

function clearstAddress() {
	var bool = false;
	$("#stAddress1").css("display", "");
	$("#stAddress1").text("");
	return bool;
}


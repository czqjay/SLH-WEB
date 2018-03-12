/**
 * 去除前后空格
 */
String.prototype.trim = function() {
	return this.replace(/^\s*|\s*$/g, "");
}
/**
 * 验证是否为数字
 */
String.prototype.isNumber = function() {
	var o = this.trim();
	if (isNaN(Math.round(o)))
		return false;
	else
		return true;

}
/**
 * 验证是否为正整数
 */
String.prototype.integer = function() {
	var o = this.trim();
	var reg0 = /^[1-9]\d*$/;
	return reg0.test(o);
}
/**
 * 验证是否为手机号码
 */
String.prototype.isMobile = function() {
	var o = this.trim();
	var reg0 = /^(\+86)?13\d{9}$/; // 130--139。至少7位
	var reg1 = /^(\+86)?15\d{9}$/; // 联通153。至少7位
	var reg2 = /^(\+86)?18\d{9}$/; // 移动159。至少7位

	return (reg0.test(o) || reg1.test(o) || reg2.test(o));
}

/**
 * 验证混合电话
 */
String.prototype.mixPhone = function() {
	var o = this.trim();
	var reg0 = /^(\+86)?13/; // 130--139。至少7位
	var reg1 = /^(\+86)?15/; // 联通153。至少7位
	var reg2 = /^(\+86)?18/; // 移动159。至少7位

	if (reg0.test(o) || reg1.test(o) || reg2.test(o)) {
		var sreg0 = /^(\+86)?13\d{9}$/; // 130--139。至少7位
		var sreg1 = /^(\+86)?15\d{9}$/; // 联通153。至少7位
		var sreg2 = /^(\+86)?18\d{9}$/; // 移动159。至少7位
		return (sreg0.test(o) || sreg1.test(o) || sreg2.test(o));
	} else {
		if (/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(o))
			return true;
		else
			return false;
	}
}
/**
 * 验证是否为电话号码
 */
//
String.prototype.isPhone = function() {
	var o = this.trim();
	if (/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(o))
		return true;
	else
		return false;
}
/**
 * 将string转换为number，正负皆可 (如果字符串是浮点数，则小数点后建议控制在7位以内，第8位通常不能正确的四舍五入，具体边界不明)
 */
String.prototype.toNumber = function() {
	var o = this.trim();
	if (o.indexOf(".") > -1) {// 浮点数
		var a = o.split(".");
		var j = Math.round(o.replace(".", "")) / Math.pow(10, a[1].length);
		return j;
	} else {// 整数
		return Math.round(o);
	}
}
/**
 * 验证是否全为英文字母(只包含大小写字母，不包括“_”和数字)
 */
String.prototype.isLetter = function() {
	var o = this.trim();
	if (/[^a-zA-Z]/g.test(o))
		return false;
	else
		return true;
}
/**
 * 验证是否为全中文
 */
//
String.prototype.isChinese = function() {
	var o = this.trim();
	if (/[^\u4e00-\u9fa5]/g.test(o))
		return false;
	else
		return true;
}
/**
 * 验证是否为正确的价钱格式 999.99 小数点后两位小数
 */
//
String.prototype.isMoney = function() {
	var o = this.trim();
	if (/-?\d+(\.\d{0,2})?/.test(o))
		return true;
	else
		return false;
}
/**
 * 验证是否为正确的email格式
 */
//
String.prototype.isEmail = function() {
	var o = this.trim();
	if (/^[a-zA-Z0-9]([a-zA-Z0-9]*[-_.]?[a-zA-Z0-9]+)+@([\w-]+\.)+[a-zA-Z]{2,}$/
			.test(o))
		return true;
	else
		return false;
}
/**
 * 验证是否为正确的ip地址
 */
//
String.prototype.isIp = function() {
	var o = this.trim();
	if (/(\d+)\.(\d+)\.(\d+)\.(\d+)/g.test(o)) {
		if (Math.round(RegExp.$1) < 256 && Math.round(RegExp.$2) < 256
				&& Math.round(RegExp.$3) < 256 && Math.round(RegExp.$4) < 256)
			return true;
	}
	return false;
}
/**
 * 验证是否为正确的邮政编码
 */
//
String.prototype.isPostCode = function() {
	var o = this.trim();
	if (/\d{6}/.test(o))
		return true;
	else
		return false;
}
/**
 * 验证是否为正确的身份证格式
 */
//
String.prototype.isIdCard = function() {
	var o = this.trim();
	var area = {
		11 : "北京",
		12 : "天津",
		13 : "河北",
		14 : "山西",
		15 : "内蒙古",
		21 : "辽宁",
		22 : "吉林",
		23 : "黑龙江",
		31 : "上海",
		32 : "江苏",
		33 : "浙江",
		34 : "安徽",
		35 : "福建",
		36 : "江西",
		37 : "山东",
		41 : "河南",
		42 : "湖北",
		43 : "湖南",
		44 : "广东",
		45 : "广西",
		46 : "海南",
		50 : "重庆",
		51 : "四川",
		52 : "贵州",
		53 : "云南",
		54 : "西藏",
		61 : "陕西",
		62 : "甘肃",
		63 : "青海",
		64 : "宁夏",
		65 : "新疆",
		71 : "台湾",
		81 : "香港",
		82 : "澳门",
		91 : "国外"
	}
	var Y, JYM, S, M;
	var a = [];
	a = o.split("");

	if (area[parseInt(o.substr(0, 2))] == null) {
		return false;
	}

	switch (o.length) {
		case 15 :
			if ((parseInt(o.substr(6, 2)) + 1900) % 4 == 0
					|| ((parseInt(o.substr(6, 2)) + 1900) % 100 == 0 && (parseInt(o
							.substr(6, 2)) + 1900)
							% 4 == 0)) {
				// 测试闰年出生日期的合法性
				var reg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;
			} else {
				// 测试平年出生日期的合法性
				var reg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;
			}
			if (reg.test(o)) {
				// 15位身份证验证通过
				return true;
			} else {
				// alert(Errors[2]);
				return false;
			}

		case 18 :
			if (parseInt(o.substr(6, 4)) % 4 == 0
					|| (parseInt(o.substr(6, 4)) % 100 == 0 && parseInt(o
							.substr(6, 4))
							% 4 == 0)) {
				// 闰年出生日期的合法性正则表达式
				var reg = /^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;
			} else {
				// 平年出生日期的合法性正则表达式
				var reg = /^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;
			}
			if (reg.test(o)) {
				S = (parseInt(a[0]) + parseInt(a[10])) * 7
						+ (parseInt(a[1]) + parseInt(a[11])) * 9
						+ (parseInt(a[2]) + parseInt(a[12])) * 10
						+ (parseInt(a[3]) + parseInt(a[13])) * 5
						+ (parseInt(a[4]) + parseInt(a[14])) * 8
						+ (parseInt(a[5]) + parseInt(a[15])) * 4
						+ (parseInt(a[6]) + parseInt(a[16])) * 2
						+ parseInt(a[7]) * 1 + parseInt(a[8]) * 6
						+ parseInt(a[9]) * 3;
				Y = S % 11;
				M = "F";
				JYM = "10X98765432";
				M = JYM.substr(Y, 1);
				if (M == a[17]) {
					// 18位身份证验证通过
					return true;
				} else {
					// alert(Errors[3]);
					return false;
				}
			} else {
				// alert(Errors[2]);
				return false;
			}
		default :
			return false;
	}
}

String.prototype.isIllegal = function() {
	// 先直接return true
	if (1 == 1)
		return true;
	var o = this.trim();
	var pattern1 = /^[\u0391-\uFFE5\w]+$/;
	if (pattern1.test(o)) {
		return true;
	} else {
		return false;
	}

}

/**
 * 验证是否不包含中文和全角字符
 */
//
String.prototype.noFullWidthStr = function() {
	var o = this.trim();
	for (i = 0; i < o.length; i++) {
		var c = o.substr(i, 1);
		var ts = escape(c);
		if (ts.substring(0, 2) == "%u") {
			return false;
		}
	}
	return true;
}

/**
 * 验证是否为日期格式
 */
//
String.prototype.isDate = function() {
	var o = this.trim();
	var time = o.replace(/\D+/g, ",").split(",");
	var s = time[0] + "/" + time[1] + "/" + time[2];
	if (time[3]) {
		s += "\t" + time[3];
	}
	if (time[4]) {
		s += ":" + time[4];
	}
	if (time[5]) {
		s += ":" + time[5];
	}

	var t = new Date(s);
	// 生成时间对象失败
	if (isNaN(t.getTime())) {
		return false;
	} else {
		if ((t.getYear() == Math.round(time[0]) || (t.getYear() + 1900) == Math
				.round(time[0]))// 年份相等
				&& (t.getMonth() + 1) == Math.round(time[1])// 月份相等
				&& t.getDate() == Math.round(time[2])// 日期相等
				&& (time[3] ? t.getHours() == Math.round(time[3]) : true)// 如果有小时且相等
				&& (time[4] ? t.getMinutes() == Math.round(time[4]) : true)// 如果有分钟且相等
				&& (time[5] ? t.getSeconds() == Math.round(time[5]) : true)// 如果有秒数且相等
		)
			return true;
		else
			return false;
	}
}
/**
 * 验证长度是否在限定范围内，中文等双字节文字算2个字符长度
 */
//
String.prototype.isWithin = function(n) {
	var o = this.trim();
	if (o.count() <= n) {
		return true;
	} else {
		return false;
	}
}
/**
 * 计算字符串长度，中文等双字节文字算2个字符
 */
//
String.prototype.count = function() {
	return this.replace(/[^\x00-\xff]/g, "mm").length;
}

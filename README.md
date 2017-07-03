# register-adjust
用户注册时的相关限定。（jsp）

# 注册时的相关限定

## 用户名:
* 不少于2位，不大于18位，可以是汉字
* 如果是字母的话，不能用数字开头

## 密码:
* 不少于6位，不大于18位
* 必须要有数字，必须要有特殊字符

## 确认密码:
* 验证和上面的输入是否一致，如果不一致，给出提示

## 手机号码:
* 手机要验证前三位
* 13x、15x、18x、17x、等，可自行添加
* 必须等于11位

## 固定电话:
* 输入只能是7位或8位
* 如果超出则判断是否有 “ - ” 号。eg：0431-1234567
* “ - ” 前面必须是3位或者4位。 eg：010、0431

## 电子邮箱:
* 必须要有 “ @ ”，必须要有 “ . ”
* 而且 “ @ ”要在 “ . ”之前
* 而且 “ @ ”和 “ . ”之间要有字母

## 家庭住址:
* 必须要大于10位

## 验证:
* 验证以上信息，如果不通过，则提示
* 如果通过，则提交到另外一页，把以上信息，打印出来

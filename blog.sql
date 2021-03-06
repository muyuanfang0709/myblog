/*
 Navicat Premium Data Transfer

 Source Server         : mysql1
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 18/08/2021 12:08:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '正文',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发表时间',
  `hot` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0:非热门 1:热门',
  `hits` int(11) NOT NULL DEFAULT 0 COMMENT '点击量',
  `category_id` int(11) NOT NULL COMMENT '类目编号',
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '缩略图',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 'JavaScript', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#引入JavaScript\" level=\"1\">引入JavaScript</a><ul><li><a class=\"toc-level-2\" href=\"#什么是JavaScript\" level=\"2\">什么是JavaScript</a></li><li><a class=\"toc-level-2\" href=\"#JavaScript的组成部分\" level=\"2\">JavaScript的组成部分</a></li><li><a class=\"toc-level-2\" href=\"#在HTML页面中引入JavaScript\" level=\"2\">在HTML页面中引入JavaScript</a><ul><li><a class=\"toc-level-3\" href=\"#内部引入方式\" level=\"3\">内部引入方式</a></li><li><a class=\"toc-level-3\" href=\"#外部引入方式\" level=\"3\">外部引入方式</a></li><li><a class=\"toc-level-3\" href=\"#嵌入引入方式\" level=\"3\">嵌入引入方式</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#向HTML页面输出内容\" level=\"2\">向HTML页面输出内容</a></li><li><a class=\"toc-level-2\" href=\"#显示警告提示框\" level=\"2\">显示警告提示框</a></li><li><a class=\"toc-level-2\" href=\"#JavaScript的运行原理\" level=\"2\">JavaScript的运行原理</a></li><li><a class=\"toc-level-2\" href=\"#注释\" level=\"2\">注释</a><ul><li><a class=\"toc-level-3\" href=\"#单行注释\" level=\"3\">单行注释</a></li><li><a class=\"toc-level-3\" href=\"#多行注释\" level=\"3\">多行注释</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#指令结束符\" level=\"2\">指令结束符</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#变量的声明、赋值和使用\" level=\"1\">变量的声明、赋值和使用</a><ul><li><a class=\"toc-level-2\" href=\"#变量名的命名规范\" level=\"2\">变量名的命名规范</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#变量的数据类型\" level=\"1\">变量的数据类型</a><ul><li><a class=\"toc-level-2\" href=\"#查看某个变量或值的数据类型\" level=\"2\">查看某个变量或值的数据类型</a></li><li><a class=\"toc-level-2\" href=\"#undefined与null的区别\" level=\"2\">undefined与null的区别</a></li><li><a class=\"toc-level-2\" href=\"#判断变量是否为数值(number)类型\" level=\"2\">判断变量是否为数值(number)类型</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#数据类型转换\" level=\"1\">数据类型转换</a><ul><li><a class=\"toc-level-2\" href=\"#变量的数据类型\" level=\"2\">变量的数据类型</a></li><li><a class=\"toc-level-2\" href=\"#隐式类型转换\" level=\"2\">隐式类型转换</a></li><li><a class=\"toc-level-2\" href=\"#强制类型转换\" level=\"2\">强制类型转换</a><ul><li><a class=\"toc-level-3\" href=\"#任意类型转number\" level=\"3\">任意类型转number</a></li><li><a class=\"toc-level-3\" href=\"#任意类型转string\" level=\"3\">任意类型转string</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#表达式与运算符\" level=\"1\">表达式与运算符</a><ul><li><a class=\"toc-level-2\" href=\"#什么是表达式\" level=\"2\">什么是表达式</a></li><li><a class=\"toc-level-2\" href=\"#运算符\" level=\"2\">运算符</a></li><li><a class=\"toc-level-2\" href=\"#算术运算的特殊结果NaN和Infinity\" level=\"2\">算术运算的特殊结果NaN和Infinity</a></li><li><a class=\"toc-level-2\" href=\"#== 与 === 的区别\" level=\"2\">== 与 === 的区别</a></li><li><a class=\"toc-level-2\" href=\"#逻辑运算符口诀\" level=\"2\">逻辑运算符口诀</a></li><li><a class=\"toc-level-2\" href=\"#不同类型之间的加法运算\" level=\"2\">不同类型之间的加法运算</a></li><li><a class=\"toc-level-2\" href=\"#三元运算符\" level=\"2\">三元运算符</a></li><li><a class=\"toc-level-2\" href=\"#运算符优先级\" level=\"2\">运算符优先级</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#逻辑控制语句\" level=\"1\">逻辑控制语句</a><ul><li><a class=\"toc-level-2\" href=\"#分支结构\" level=\"2\">分支结构</a><ul><li><a class=\"toc-level-3\" href=\"#if\" level=\"3\">if</a></li><li><a class=\"toc-level-3\" href=\"#switch\" level=\"3\">switch</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#循环结构\" level=\"2\">循环结构</a><ul><li><a class=\"toc-level-3\" href=\"#for\" level=\"3\">for</a></li><li><a class=\"toc-level-3\" href=\"#for-in\" level=\"3\">for-in</a></li><li><a class=\"toc-level-3\" href=\"#while\" level=\"3\">while</a></li><li><a class=\"toc-level-3\" href=\"#do-while\" level=\"3\">do-while</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#控制语句\" level=\"2\">控制语句</a><ul><li><a class=\"toc-level-3\" href=\"#break\" level=\"3\">break</a></li><li><a class=\"toc-level-3\" href=\"#continue\" level=\"3\">continue</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#数组\" level=\"1\">数组</a><ul><li><a class=\"toc-level-2\" href=\"#创建数组并给数组中的元素赋值\" level=\"2\">创建数组并给数组中的元素赋值</a><ul><li><a class=\"toc-level-3\" href=\"#方式1：声明后赋值\" level=\"3\">方式1：声明后赋值</a></li><li><a class=\"toc-level-3\" href=\"#方式2：声明并赋值\" level=\"3\">方式2：声明并赋值</a></li><li><a class=\"toc-level-3\" href=\"#方式3：简写形式\" level=\"3\">方式3：简写形式</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#访问数组中的元素\" level=\"2\">访问数组中的元素</a><ul><li><a class=\"toc-level-3\" href=\"#方式一：访问单个元素\" level=\"3\">方式一：访问单个元素</a></li><li><a class=\"toc-level-3\" href=\"#方式二：通过for循环遍历\" level=\"3\">方式二：通过for循环遍历</a></li><li><a class=\"toc-level-3\" href=\"#方式三：通过for-in循环遍历\" level=\"3\">方式三：通过for-in循环遍历</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#修改数组中的元素\" level=\"2\">修改数组中的元素</a></li><li><a class=\"toc-level-2\" href=\"#数组的常用方法和属性\" level=\"2\">数组的常用方法和属性</a><ul><li><a class=\"toc-level-3\" href=\"#length\" level=\"3\">length</a></li><li><a class=\"toc-level-3\" href=\"#join(分隔符)\" level=\"3\">join(分隔符)</a></li><li><a class=\"toc-level-3\" href=\"#sort()\" level=\"3\">sort()</a></li><li><a class=\"toc-level-3\" href=\"#push(x,…,x)\" level=\"3\">push(x,…,x)</a></li><li><a class=\"toc-level-3\" href=\"#pop()\" level=\"3\">pop()</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#数组的长度为动态长度\" level=\"2\">数组的长度为动态长度</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#自定义函数\" level=\"1\">自定义函数</a><ul><li><a class=\"toc-level-2\" href=\"#创建函数\" level=\"2\">创建函数</a><ul><li><a class=\"toc-level-3\" href=\"#无参无返回值\" level=\"3\">无参无返回值</a></li><li><a class=\"toc-level-3\" href=\"#有参无返回值\" level=\"3\">有参无返回值</a></li><li><a class=\"toc-level-3\" href=\"#无参有返回值\" level=\"3\">无参有返回值</a></li><li><a class=\"toc-level-3\" href=\"#有参有返回值\" level=\"3\">有参有返回值</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#调用函数\" level=\"2\">调用函数</a><ul><li><a class=\"toc-level-3\" href=\"#在JS中调用\" level=\"3\">在JS中调用</a></li><li><a class=\"toc-level-3\" href=\"#在HTML标签中调用\" level=\"3\">在HTML标签中调用</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#函数调用注意事项\" level=\"2\">函数调用注意事项</a></li><li><a class=\"toc-level-2\" href=\"#匿名函数创建与调用\" level=\"2\">匿名函数创建与调用</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#常用事件\" level=\"1\">常用事件</a><ul><li><a class=\"toc-level-2\" href=\"#onload\" level=\"2\">onload</a></li><li><a class=\"toc-level-2\" href=\"#onclick\" level=\"2\">onclick</a></li><li><a class=\"toc-level-2\" href=\"#onmouseover，onmouseout，onmousedown\" level=\"2\">onmouseover，onmouseout，onmousedown</a></li><li><a class=\"toc-level-2\" href=\"#onkeydown\" level=\"2\">onkeydown</a></li><li><a class=\"toc-level-2\" href=\"#onchange\" level=\"2\">onchange</a></li><li><a class=\"toc-level-2\" href=\"#动态给元素绑定事件\" level=\"2\">动态给元素绑定事件</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#window对象\" level=\"1\">window对象</a><ul><li><a class=\"toc-level-2\" href=\"#prompt(提示,默认值)\" level=\"2\">prompt(提示,默认值)</a></li><li><a class=\"toc-level-2\" href=\"#alert(信息)\" level=\"2\">alert(信息)</a></li><li><a class=\"toc-level-2\" href=\"#confirm(信息)\" level=\"2\">confirm(信息)</a></li><li><a class=\"toc-level-2\" href=\"#close()\" level=\"2\">close()</a></li><li><a class=\"toc-level-2\" href=\"#open(URL,窗口名,窗口特征，是否替换浏览历史中的当前条目)\" level=\"2\">open(URL,窗口名,窗口特征，是否替换浏览历史中的当前条目)</a></li><li><a class=\"toc-level-2\" href=\"#setTimeout(方法名,毫秒数,参数)\" level=\"2\">setTimeout(方法名,毫秒数,参数)</a></li><li><a class=\"toc-level-2\" href=\"#setInterval(方法名,毫秒数,参数),clearInterval()\" level=\"2\">setInterval(方法名,毫秒数,参数),clearInterval()</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#history对象\" level=\"1\">history对象</a><ul><li><a class=\"toc-level-2\" href=\"#back()\" level=\"2\">back()</a></li><li><a class=\"toc-level-2\" href=\"#forward()\" level=\"2\">forward()</a></li><li><a class=\"toc-level-2\" href=\"#go(n)\" level=\"2\">go(n)</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#location对象\" level=\"1\">location对象</a><ul><li><a class=\"toc-level-2\" href=\"#host\" level=\"2\">host</a></li><li><a class=\"toc-level-2\" href=\"#hostname\" level=\"2\">hostname</a></li><li><a class=\"toc-level-2\" href=\"#href\" level=\"2\">href</a></li><li><a class=\"toc-level-2\" href=\"#reload()\" level=\"2\">reload()</a></li><li><a class=\"toc-level-2\" href=\"#replace(URL地址)\" level=\"2\">replace(URL地址)</a></li><li><a class=\"toc-level-2\" href=\"#replace()和location.href的区别\" level=\"2\">replace()和location.href的区别</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#document对象\" level=\"1\">document对象</a><ul><li><a class=\"toc-level-2\" href=\"#referrer\" level=\"2\">referrer</a></li><li><a class=\"toc-level-2\" href=\"#URL\" level=\"2\">URL</a></li><li><a class=\"toc-level-2\" href=\"#document.URL与locathion.href的区别\" level=\"2\">document.URL与locathion.href的区别</a></li><li><a class=\"toc-level-2\" href=\"#getElementById(id值)\" level=\"2\">getElementById(id值)</a></li><li><a class=\"toc-level-2\" href=\"#getElementsByName(name值)\" level=\"2\">getElementsByName(name值)</a></li><li><a class=\"toc-level-2\" href=\"#getElementsByTagName(标签名)\" level=\"2\">getElementsByTagName(标签名)</a></li><li><a class=\"toc-level-2\" href=\"#getElementsByClassName(class值)\" level=\"2\">getElementsByClassName(class值)</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#element对象\" level=\"1\">element对象</a><ul><li><a class=\"toc-level-2\" href=\"#常用节点信息属性\" level=\"2\">常用节点信息属性</a></li><li><a class=\"toc-level-2\" href=\"#常用节点对象属性\" level=\"2\">常用节点对象属性</a></li><li><a class=\"toc-level-2\" href=\"#解决获取节点元素对象的兼容性问题\" level=\"2\">解决获取节点元素对象的兼容性问题</a></li><li><a class=\"toc-level-2\" href=\"#操作节点的属性\" level=\"2\">操作节点的属性</a></li><li><a class=\"toc-level-2\" href=\"#创建、插入、删除和替换节点\" level=\"2\">创建、插入、删除和替换节点</a></li><li><a class=\"toc-level-2\" href=\"#className\" level=\"2\">className</a></li><li><a class=\"toc-level-2\" href=\"#获取元素的样式\" level=\"2\">获取元素的样式</a></li><li><a class=\"toc-level-2\" href=\"#元素位置属性\" level=\"2\">元素位置属性</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#style对象\" level=\"1\">style对象</a><ul><li><a class=\"toc-level-2\" href=\"#获取某个元素的style对象\" level=\"2\">获取某个元素的style对象</a></li><li><a class=\"toc-level-2\" href=\"#操纵元素的style样式\" level=\"2\">操纵元素的style样式</a><ul><li><a class=\"toc-level-3\" href=\"#backgroundColor\" level=\"3\">backgroundColor</a></li><li><a class=\"toc-level-3\" href=\"#backgroundImage\" level=\"3\">backgroundImage</a></li><li><a class=\"toc-level-3\" href=\"#backgroundRepeat\" level=\"3\">backgroundRepeat</a></li><li><a class=\"toc-level-3\" href=\"#fontSize\" level=\"3\">fontSize</a></li><li><a class=\"toc-level-3\" href=\"#fontWeight\" level=\"3\">fontWeight</a></li><li><a class=\"toc-level-3\" href=\"#textAlign\" level=\"3\">textAlign</a></li><li><a class=\"toc-level-3\" href=\"#textDecoration\" level=\"3\">textDecoration</a></li><li><a class=\"toc-level-3\" href=\"#font\" level=\"3\">font</a></li><li><a class=\"toc-level-3\" href=\"#color\" level=\"3\">color</a></li><li><a class=\"toc-level-3\" href=\"#padding\" level=\"3\">padding</a></li><li><a class=\"toc-level-3\" href=\"#paddingTop，paddingBottom，paddingLeft，paddingRight\" level=\"3\">paddingTop，paddingBottom，paddingLeft，paddingRight</a></li><li><a class=\"toc-level-3\" href=\"#border\" level=\"3\">border</a></li><li><a class=\"toc-level-3\" href=\"#borderTop，borderBottom，borderLeft，borderRight\" level=\"3\">borderTop，borderBottom，borderLeft，borderRight</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#String对象\" level=\"1\">String对象</a><ul><li><a class=\"toc-level-2\" href=\"#length\" level=\"2\">length</a></li><li><a class=\"toc-level-2\" href=\"#indexOf(str,index)\" level=\"2\">indexOf(str,index)</a></li><li><a class=\"toc-level-2\" href=\"#charAt(index)\" level=\"2\">charAt(index)</a></li><li><a class=\"toc-level-2\" href=\"#toLowerCase()\" level=\"2\">toLowerCase()</a></li><li><a class=\"toc-level-2\" href=\"#toUpperCase()\" level=\"2\">toUpperCase()</a></li><li><a class=\"toc-level-2\" href=\"#substring(index1,index2)\" level=\"2\">substring(index1,index2)</a></li><li><a class=\"toc-level-2\" href=\"#split(str)\" level=\"2\">split(str)</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Date对象\" level=\"1\">Date对象</a><ul><li><a class=\"toc-level-2\" href=\"#创建Date对象\" level=\"2\">创建Date对象</a></li><li><a class=\"toc-level-2\" href=\"#getDate()\" level=\"2\">getDate()</a></li><li><a class=\"toc-level-2\" href=\"#getDay()\" level=\"2\">getDay()</a></li><li><a class=\"toc-level-2\" href=\"#getHours()\" level=\"2\">getHours()</a></li><li><a class=\"toc-level-2\" href=\"#getMinutes()\" level=\"2\">getMinutes()</a></li><li><a class=\"toc-level-2\" href=\"#getSeconds()\" level=\"2\">getSeconds()</a></li><li><a class=\"toc-level-2\" href=\"#getMonth()\" level=\"2\">getMonth()</a></li><li><a class=\"toc-level-2\" href=\"#getFullYear()\" level=\"2\">getFullYear()</a></li><li><a class=\"toc-level-2\" href=\"#getTime()\" level=\"2\">getTime()</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Math对象\" level=\"1\">Math对象</a><ul><li><a class=\"toc-level-2\" href=\"#Math.ceil()\" level=\"2\">Math.ceil()</a></li><li><a class=\"toc-level-2\" href=\"#Math.floor()\" level=\"2\">Math.floor()</a></li><li><a class=\"toc-level-2\" href=\"#Math.round()\" level=\"2\">Math.round()</a></li><li><a class=\"toc-level-2\" href=\"#Math.random()\" level=\"2\">Math.random()</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#自定义对象\" level=\"1\">自定义对象</a><ul><li><a class=\"toc-level-2\" href=\"#创建对象\" level=\"2\">创建对象</a></li><li><a class=\"toc-level-2\" href=\"#instanceof\" level=\"2\">instanceof</a></li><li><a class=\"toc-level-2\" href=\"#constructor\" level=\"2\">constructor</a></li><li><a class=\"toc-level-2\" href=\"#对象的继承\" level=\"2\">对象的继承</a><ul><li><a class=\"toc-level-3\" href=\"#通过原型链实现继承\" level=\"3\">通过原型链实现继承</a></li><li><a class=\"toc-level-3\" href=\"#通过调用父类的构造方法实现继承\" level=\"3\">通过调用父类的构造方法实现继承</a></li><li><a class=\"toc-level-3\" href=\"#通过原型链和调用父类构造方法的混合模式实现继承\" level=\"3\">通过原型链和调用父类构造方法的混合模式实现继承</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#正则表达式\" level=\"1\">正则表达式</a><ul><li><a class=\"toc-level-2\" href=\"#创建正则表达式对象\" level=\"2\">创建正则表达式对象</a><ul><li><a class=\"toc-level-3\" href=\"#附加参数\" level=\"3\">附加参数</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#匹配数据\" level=\"2\">匹配数据</a><ul><li><a class=\"toc-level-3\" href=\"#exec()\" level=\"3\">exec()</a></li><li><a class=\"toc-level-3\" href=\"#test()\" level=\"3\">test()</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#正则表达式符号\" level=\"2\">正则表达式符号</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#表单自定义错误信息\" level=\"1\">表单自定义错误信息</a><ul><li><a class=\"toc-level-2\" href=\"#获取validityState对象\" level=\"2\">获取validityState对象</a></li><li><a class=\"toc-level-2\" href=\"#validityState常用属性\" level=\"2\">validityState常用属性</a><ul><li><a class=\"toc-level-3\" href=\"#valueMissing\" level=\"3\">valueMissing</a></li><li><a class=\"toc-level-3\" href=\"#typeMismatch\" level=\"3\">typeMismatch</a></li><li><a class=\"toc-level-3\" href=\"#patternMismatch\" level=\"3\">patternMismatch</a></li><li><a class=\"toc-level-3\" href=\"#tooLong\" level=\"3\">tooLong</a></li><li><a class=\"toc-level-3\" href=\"#rangeUnderflow\" level=\"3\">rangeUnderflow</a></li><li><a class=\"toc-level-3\" href=\"#rangeOverflow\" level=\"3\">rangeOverflow</a></li><li><a class=\"toc-level-3\" href=\"#stepMismatch\" level=\"3\">stepMismatch</a></li><li><a class=\"toc-level-3\" href=\"#customError\" level=\"3\">customError</a><ul></ul></li></ul></li></ul></li></ul>', '2021-06-04 09:28:30', 1, 100, 1, NULL);
INSERT INTO `article` VALUES (2, 'CSS3', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#引入样式的方式\" level=\"1\">引入样式的方式</a></li><li><a class=\"toc-level-1\" href=\"#常用选择器\" level=\"1\">常用选择器</a><ul><li><a class=\"toc-level-2\" href=\"#基础选择器\" level=\"2\">基础选择器</a></li><li><a class=\"toc-level-2\" href=\"#复合选择器\" level=\"2\">复合选择器</a></li><li><a class=\"toc-level-2\" href=\"#属性选择器\" level=\"2\">属性选择器</a></li><li><a class=\"toc-level-2\" href=\"#伪类选择器\" level=\"2\">伪类选择器</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#常用内容样式\" level=\"1\">常用内容样式</a><ul><li><a class=\"toc-level-2\" href=\"#文本\" level=\"2\">文本</a></li><li><a class=\"toc-level-2\" href=\"#盒子\" level=\"2\">盒子</a></li><li><a class=\"toc-level-2\" href=\"#背景\" level=\"2\">背景</a></li><li><a class=\"toc-level-2\" href=\"#列表\" level=\"2\">列表</a></li><li><a class=\"toc-level-2\" href=\"#表格\" level=\"2\">表格</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#常用布局样式\" level=\"1\">常用布局样式</a><ul><li><a class=\"toc-level-2\" href=\"#边距\" level=\"2\">边距</a></li><li><a class=\"toc-level-2\" href=\"#浮动\" level=\"2\">浮动</a></li><li><a class=\"toc-level-2\" href=\"#定位\" level=\"2\">定位</a></li><li><a class=\"toc-level-2\" href=\"#动态盒子\" level=\"2\">动态盒子</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#常用动画样式\" level=\"1\">常用动画样式</a><ul><li><a class=\"toc-level-2\" href=\"#变形\" level=\"2\">变形</a></li><li><a class=\"toc-level-2\" href=\"#过度\" level=\"2\">过度</a></li><li><a class=\"toc-level-2\" href=\"#自定义动画\" level=\"2\">自定义动画</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#FAQ\" level=\"1\">FAQ</a><ul><li><a class=\"toc-level-2\" href=\"#如何解决样式表中的中文乱码\" level=\"2\">如何解决样式表中的中文乱码</a></li><li><a class=\"toc-level-2\" href=\"#如何让块级元素网页水平居中\" level=\"2\">如何让块级元素网页水平居中</a></li><li><a class=\"toc-level-2\" href=\"#如何让文本垂直居中\" level=\"2\">如何让文本垂直居中</a></li><li><a class=\"toc-level-2\" href=\"#取消图片下方的空白行\" level=\"2\">取消图片下方的空白行</a></li><li><a class=\"toc-level-2\" href=\"#图文混排时，图文如何垂直居中\" level=\"2\">图文混排时，图文如何垂直居中</a></li><li><a class=\"toc-level-2\" href=\"#隔行变色\" level=\"2\">隔行变色</a></li><li><a class=\"toc-level-2\" href=\"#元素块在页面居中（水平和垂直）\" level=\"2\">元素块在页面居中（水平和垂直）</a><ul></ul></li></ul></li></ul>', '2020-02-24 18:29:40', 1, 123, 1, NULL);
INSERT INTO `article` VALUES (3, 'HTML5', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#编辑器 VSCode\" level=\"1\">编辑器 VSCode</a><ul><li><a class=\"toc-level-2\" href=\"#常用插件\" level=\"2\">常用插件</a></li><li><a class=\"toc-level-2\" href=\"#常用快捷键\" level=\"2\">常用快捷键</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#常用 HTML 标签\" level=\"1\">常用 HTML 标签</a><ul><li><a class=\"toc-level-2\" href=\"#基础结构标签\" level=\"2\">基础结构标签</a></li><li><a class=\"toc-level-2\" href=\"#文档标签\" level=\"2\">文档标签</a><ul><li><a class=\"toc-level-3\" href=\"#基础内容标签\" level=\"3\">基础内容标签</a></li><li><a class=\"toc-level-3\" href=\"#风格样式标签\" level=\"3\">风格样式标签</a></li><li><a class=\"toc-level-3\" href=\"#列表\" level=\"3\">列表</a></li><li><a class=\"toc-level-3\" href=\"#表格\" level=\"3\">表格</a></li><li><a class=\"toc-level-3\" href=\"#多媒体标签\" level=\"3\">多媒体标签</a></li><li><a class=\"toc-level-3\" href=\"#超链接\" level=\"3\">超链接</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#分区元素\" level=\"2\">分区元素</a><ul><li><a class=\"toc-level-3\" href=\"#内联框架\" level=\"3\">内联框架</a></li><li><a class=\"toc-level-3\" href=\"#通用分区\" level=\"3\">通用分区</a></li><li><a class=\"toc-level-3\" href=\"#页面分区\" level=\"3\">页面分区</a></li><li><a class=\"toc-level-3\" href=\"#内容分区\" level=\"3\">内容分区</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#模板标签\" level=\"2\">模板标签</a></li><li><a class=\"toc-level-2\" href=\"#表单标签\" level=\"2\">表单标签</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#常用实体\" level=\"1\">常用实体</a></li><li><a class=\"toc-level-1\" href=\"#带默认风格的标签\" level=\"1\">带默认风格的标签</a></li><li><a class=\"toc-level-1\" href=\"#FAQ\" level=\"1\">FAQ</a><ul></ul></li></ul>', '2020-02-24 18:29:41', 1, 234, 1, NULL);
INSERT INTO `article` VALUES (4, 'PHP', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#PHP7 基础语法\" level=\"1\">PHP7 基础语法</a><ul><li><a class=\"toc-level-2\" href=\"#开发过程\" level=\"2\">开发过程</a></li><li><a class=\"toc-level-2\" href=\"#PHP文件\" level=\"2\">PHP文件</a></li><li><a class=\"toc-level-2\" href=\"#PHP标记\" level=\"2\">PHP标记</a></li><li><a class=\"toc-level-2\" href=\"#PHP指令分隔符\" level=\"2\">PHP指令分隔符</a></li><li><a class=\"toc-level-2\" href=\"#使用echo向网页中输出内容\" level=\"2\">使用echo向网页中输出内容</a></li><li><a class=\"toc-level-2\" href=\"#PHP注释\" level=\"2\">PHP注释</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 标量类型与NULL\" level=\"1\">PHP7 标量类型与NULL</a><ul><li><a class=\"toc-level-2\" href=\"#boolean（布尔型）\" level=\"2\">boolean（布尔型）</a></li><li><a class=\"toc-level-2\" href=\"#integer（整型）\" level=\"2\">integer（整型）</a></li><li><a class=\"toc-level-2\" href=\"#float（浮点型)\" level=\"2\">float（浮点型)</a></li><li><a class=\"toc-level-2\" href=\"#string（字符串）\" level=\"2\">string（字符串）</a></li><li><a class=\"toc-level-2\" href=\"#NULL类型\" level=\"2\">NULL类型</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 变量\" level=\"1\">PHP7 变量</a><ul><li><a class=\"toc-level-2\" href=\"#变量的命名规则\" level=\"2\">变量的命名规则</a></li><li><a class=\"toc-level-2\" href=\"#创建变量\" level=\"2\">创建变量</a></li><li><a class=\"toc-level-2\" href=\"#使用变量\" level=\"2\">使用变量</a></li><li><a class=\"toc-level-2\" href=\"#删除变量\" level=\"2\">删除变量</a></li><li><a class=\"toc-level-2\" href=\"#检测变量是否存在\" level=\"2\">检测变量是否存在</a></li><li><a class=\"toc-level-2\" href=\"#显示变量的类型及值\" level=\"2\">显示变量的类型及值</a></li><li><a class=\"toc-level-2\" href=\"#检测变量类型\" level=\"2\">检测变量类型</a></li><li><a class=\"toc-level-2\" href=\"#强制类型转换\" level=\"2\">强制类型转换</a></li><li><a class=\"toc-level-2\" href=\"#引用赋值和传值赋值\" level=\"2\">引用赋值和传值赋值</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 常量\" level=\"1\">PHP7 常量</a><ul><li><a class=\"toc-level-2\" href=\"#常量的定义与使用\" level=\"2\">常量的定义与使用</a></li><li><a class=\"toc-level-2\" href=\"#魔术常量\" level=\"2\">魔术常量</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 运算符\" level=\"1\">PHP7 运算符</a><ul><li><a class=\"toc-level-2\" href=\"#字符串运算符\" level=\"2\">字符串运算符</a></li><li><a class=\"toc-level-2\" href=\"#算术运算符\" level=\"2\">算术运算符</a></li><li><a class=\"toc-level-2\" href=\"#递增／递减运算符\" level=\"2\">递增／递减运算符</a></li><li><a class=\"toc-level-2\" href=\"#赋值运算符\" level=\"2\">赋值运算符</a></li><li><a class=\"toc-level-2\" href=\"#比较运算符\" level=\"2\">比较运算符</a></li><li><a class=\"toc-level-2\" href=\"#三元运算符\" level=\"2\">三元运算符</a></li><li><a class=\"toc-level-2\" href=\"#逻辑运算符\" level=\"2\">逻辑运算符</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 数组\" level=\"1\">PHP7 数组</a><ul><li><a class=\"toc-level-2\" href=\"#数组简介\" level=\"2\">数组简介</a></li><li><a class=\"toc-level-2\" href=\"#创建数组\" level=\"2\">创建数组</a></li><li><a class=\"toc-level-2\" href=\"#访问元素\" level=\"2\">访问元素</a></li><li><a class=\"toc-level-2\" href=\"#修改元素\" level=\"2\">修改元素</a></li><li><a class=\"toc-level-2\" href=\"#追加元素\" level=\"2\">追加元素</a></li><li><a class=\"toc-level-2\" href=\"#删除元素\" level=\"2\">删除元素</a></li><li><a class=\"toc-level-2\" href=\"#删除数组\" level=\"2\">删除数组</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 分支流程控制语句\" level=\"1\">PHP7 分支流程控制语句</a><ul><li><a class=\"toc-level-2\" href=\"#if\" level=\"2\">if</a></li><li><a class=\"toc-level-2\" href=\"#if-else\" level=\"2\">if-else</a></li><li><a class=\"toc-level-2\" href=\"#if-elseif-else / if-else if-else\" level=\"2\">if-elseif-else / if-else if-else</a></li><li><a class=\"toc-level-2\" href=\"#switch\" level=\"2\">switch</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 循环流程控制语句\" level=\"1\">PHP7 循环流程控制语句</a><ul><li><a class=\"toc-level-2\" href=\"#while\" level=\"2\">while</a></li><li><a class=\"toc-level-2\" href=\"#do-while\" level=\"2\">do-while</a></li><li><a class=\"toc-level-2\" href=\"#for\" level=\"2\">for</a></li><li><a class=\"toc-level-2\" href=\"#foreach\" level=\"2\">foreach</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 跳转流程控制语句\" level=\"1\">PHP7 跳转流程控制语句</a><ul><li><a class=\"toc-level-2\" href=\"#break\" level=\"2\">break</a></li><li><a class=\"toc-level-2\" href=\"#continue\" level=\"2\">continue</a></li><li><a class=\"toc-level-2\" href=\"#goto\" level=\"2\">goto</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 自定义函数\" level=\"1\">PHP7 自定义函数</a><ul><li><a class=\"toc-level-2\" href=\"#无参无返回值的函数\" level=\"2\">无参无返回值的函数</a></li><li><a class=\"toc-level-2\" href=\"#带参无返回值的函数\" level=\"2\">带参无返回值的函数</a></li><li><a class=\"toc-level-2\" href=\"#无参有返回值的函数\" level=\"2\">无参有返回值的函数</a></li><li><a class=\"toc-level-2\" href=\"#带参有返回值的函数\" level=\"2\">带参有返回值的函数</a></li><li><a class=\"toc-level-2\" href=\"#参数带默认值的函数\" level=\"2\">参数带默认值的函数</a></li><li><a class=\"toc-level-2\" href=\"#参数是严格类型的函数\" level=\"2\">参数是严格类型的函数</a></li><li><a class=\"toc-level-2\" href=\"#嵌套在函数内部的函数\" level=\"2\">嵌套在函数内部的函数</a></li><li><a class=\"toc-level-2\" href=\"#嵌套在条件结构内部的函数\" level=\"2\">嵌套在条件结构内部的函数</a></li><li><a class=\"toc-level-2\" href=\"#递归函数\" level=\"2\">递归函数</a></li><li><a class=\"toc-level-2\" href=\"#可变函数\" level=\"2\">可变函数</a></li><li><a class=\"toc-level-2\" href=\"#匿名函数\" level=\"2\">匿名函数</a></li><li><a class=\"toc-level-2\" href=\"#强制结束函数\" level=\"2\">强制结束函数</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 生成器\" level=\"1\">PHP7 生成器</a><ul><li><a class=\"toc-level-2\" href=\"#生成器的创建和使用\" level=\"2\">生成器的创建和使用</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 类与对象基础\" level=\"1\">PHP7 类与对象基础</a><ul><li><a class=\"toc-level-2\" href=\"#创建类\" level=\"2\">创建类</a></li><li><a class=\"toc-level-2\" href=\"#创建类对象\" level=\"2\">创建类对象</a></li><li><a class=\"toc-level-2\" href=\"#类成员\" level=\"2\">类成员</a><ul><li><a class=\"toc-level-3\" href=\"#添加类成员\" level=\"3\">添加类成员</a></li><li><a class=\"toc-level-3\" href=\"#类外访问类的属性\" level=\"3\">类外访问类的属性</a></li><li><a class=\"toc-level-3\" href=\"#类内访问类成员\" level=\"3\">类内访问类成员</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 类的继承、抽象类和final\" level=\"1\">PHP7 类的继承、抽象类和final</a><ul><li><a class=\"toc-level-2\" href=\"#类的继承\" level=\"2\">类的继承</a></li><li><a class=\"toc-level-2\" href=\"#抽象类\" level=\"2\">抽象类</a></li><li><a class=\"toc-level-2\" href=\"#final\" level=\"2\">final</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 接口\" level=\"1\">PHP7 接口</a><ul><li><a class=\"toc-level-2\" href=\"#创建接口\" level=\"2\">创建接口</a></li><li><a class=\"toc-level-2\" href=\"#实现接口\" level=\"2\">实现接口</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 Trait\" level=\"1\">PHP7 Trait</a><ul><li><a class=\"toc-level-2\" href=\"#创建Trait\" level=\"2\">创建Trait</a></li><li><a class=\"toc-level-2\" href=\"#使用Trait\" level=\"2\">使用Trait</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 文件加载与类的自动加载\" level=\"1\">PHP7 文件加载与类的自动加载</a><ul><li><a class=\"toc-level-2\" href=\"#导入文件\" level=\"2\">导入文件</a><ul><li><a class=\"toc-level-3\" href=\"#include\" level=\"3\">include</a></li><li><a class=\"toc-level-3\" href=\"#include_once\" level=\"3\">include_once</a></li><li><a class=\"toc-level-3\" href=\"#require\" level=\"3\">require</a></li><li><a class=\"toc-level-3\" href=\"#require_once\" level=\"3\">require_once</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#类的自动加载\" level=\"2\">类的自动加载</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 类的魔术方法\" level=\"1\">PHP7 类的魔术方法</a><ul><li><a class=\"toc-level-2\" href=\"#魔术方法与重载\" level=\"2\">魔术方法与重载</a></li><li><a class=\"toc-level-2\" href=\"#属性重载\" level=\"2\">属性重载</a></li><li><a class=\"toc-level-2\" href=\"#方法重载\" level=\"2\">方法重载</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 命名空间\" level=\"1\">PHP7 命名空间</a><ul><li><a class=\"toc-level-2\" href=\"#定义命名空间\" level=\"2\">定义命名空间</a></li><li><a class=\"toc-level-2\" href=\"#定义子命名空间\" level=\"2\">定义子命名空间</a></li><li><a class=\"toc-level-2\" href=\"#在同一个文件中定义多个命名空间\" level=\"2\">在同一个文件中定义多个命名空间</a></li><li><a class=\"toc-level-2\" href=\"#在命名空间内部访问全局类、函数和常量\" level=\"2\">在命名空间内部访问全局类、函数和常量</a></li><li><a class=\"toc-level-2\" href=\"#使用use操作符导入/使用别名\" level=\"2\">使用use操作符导入/使用别名</a></li><li><a class=\"toc-level-2\" href=\"#全局空间\" level=\"2\">全局空间</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 常用时间日期函数\" level=\"1\">PHP7 常用时间日期函数</a><ul><li><a class=\"toc-level-2\" href=\"#date\" level=\"2\">date</a></li><li><a class=\"toc-level-2\" href=\"#date_create\" level=\"2\">date_create</a></li><li><a class=\"toc-level-2\" href=\"#date_format\" level=\"2\">date_format</a></li><li><a class=\"toc-level-2\" href=\"#time\" level=\"2\">time</a></li><li><a class=\"toc-level-2\" href=\"#date_default_timezone_set\" level=\"2\">date_default_timezone_set</a></li><li><a class=\"toc-level-2\" href=\"#日期格式字串表\" level=\"2\">日期格式字串表</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 常用文件系统函数\" level=\"1\">PHP7 常用文件系统函数</a><ul><li><a class=\"toc-level-2\" href=\"#scandir\" level=\"2\">scandir</a></li><li><a class=\"toc-level-2\" href=\"#basename\" level=\"2\">basename</a></li><li><a class=\"toc-level-2\" href=\"#copy\" level=\"2\">copy</a></li><li><a class=\"toc-level-2\" href=\"#unlink\" level=\"2\">unlink</a></li><li><a class=\"toc-level-2\" href=\"#dirname\" level=\"2\">dirname</a></li><li><a class=\"toc-level-2\" href=\"#file_exists\" level=\"2\">file_exists</a></li><li><a class=\"toc-level-2\" href=\"#file_get_contents\" level=\"2\">file_get_contents</a></li><li><a class=\"toc-level-2\" href=\"#file_put_contents\" level=\"2\">file_put_contents</a></li><li><a class=\"toc-level-2\" href=\"#is_dir\" level=\"2\">is_dir</a></li><li><a class=\"toc-level-2\" href=\"#is_file\" level=\"2\">is_file</a></li><li><a class=\"toc-level-2\" href=\"#mkdir\" level=\"2\">mkdir</a></li><li><a class=\"toc-level-2\" href=\"#rmdir\" level=\"2\">rmdir</a></li><li><a class=\"toc-level-2\" href=\"#unlink\" level=\"2\">unlink</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 常用字符串函数\" level=\"1\">PHP7 常用字符串函数</a><ul><li><a class=\"toc-level-2\" href=\"#explode\" level=\"2\">explode</a></li><li><a class=\"toc-level-2\" href=\"#implode\" level=\"2\">implode</a></li><li><a class=\"toc-level-2\" href=\"#md5_file\" level=\"2\">md5_file</a></li><li><a class=\"toc-level-2\" href=\"#md5\" level=\"2\">md5</a></li><li><a class=\"toc-level-2\" href=\"#number_format\" level=\"2\">number_format</a></li><li><a class=\"toc-level-2\" href=\"#str_replace\" level=\"2\">str_replace</a></li><li><a class=\"toc-level-2\" href=\"#str_split\" level=\"2\">str_split</a></li><li><a class=\"toc-level-2\" href=\"#strip_tags\" level=\"2\">strip_tags</a></li><li><a class=\"toc-level-2\" href=\"#stripos\" level=\"2\">stripos</a></li><li><a class=\"toc-level-2\" href=\"#strlen\" level=\"2\">strlen</a></li><li><a class=\"toc-level-2\" href=\"#trim\" level=\"2\">trim</a></li><li><a class=\"toc-level-2\" href=\"#mb_convert_encoding\" level=\"2\">mb_convert_encoding</a></li><li><a class=\"toc-level-2\" href=\"#mb_substr\" level=\"2\">mb_substr</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 常用正则表达式函数\" level=\"1\">PHP7 常用正则表达式函数</a><ul><li><a class=\"toc-level-2\" href=\"#preg_filter/preg_replace\" level=\"2\">preg_filter/preg_replace</a></li><li><a class=\"toc-level-2\" href=\"#preg_match_all\" level=\"2\">preg_match_all</a></li><li><a class=\"toc-level-2\" href=\"#preg_match\" level=\"2\">preg_match</a></li><li><a class=\"toc-level-2\" href=\"#preg_split\" level=\"2\">preg_split</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 常用数组函数\" level=\"1\">PHP7 常用数组函数</a><ul><li><a class=\"toc-level-2\" href=\"#array_key_exists\" level=\"2\">array_key_exists</a></li><li><a class=\"toc-level-2\" href=\"#array_merge\" level=\"2\">array_merge</a></li><li><a class=\"toc-level-2\" href=\"#array_unique\" level=\"2\">array_unique</a></li><li><a class=\"toc-level-2\" href=\"#array_unshift\" level=\"2\">array_unshift</a></li><li><a class=\"toc-level-2\" href=\"#count\" level=\"2\">count</a></li><li><a class=\"toc-level-2\" href=\"#extract\" level=\"2\">extract</a></li><li><a class=\"toc-level-2\" href=\"#in_array\" level=\"2\">in_array</a></li><li><a class=\"toc-level-2\" href=\"#krsort\" level=\"2\">krsort</a></li><li><a class=\"toc-level-2\" href=\"#ksort\" level=\"2\">ksort</a></li><li><a class=\"toc-level-2\" href=\"#list\" level=\"2\">list</a></li><li><a class=\"toc-level-2\" href=\"#shuffle\" level=\"2\">shuffle</a></li><li><a class=\"toc-level-2\" href=\"#sort\" level=\"2\">sort</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 GD库\" level=\"1\">PHP7 GD库</a><ul><li><a class=\"toc-level-2\" href=\"#创建一张图片\" level=\"2\">创建一张图片</a></li><li><a class=\"toc-level-2\" href=\"#向图片中输出一行文字\" level=\"2\">向图片中输出一行文字</a></li><li><a class=\"toc-level-2\" href=\"#向图片中添加背景噪影\" level=\"2\">向图片中添加背景噪影</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 获取请求数据\" level=\"1\">PHP7 获取请求数据</a><ul><li><a class=\"toc-level-2\" href=\"#获取GET请求数据\" level=\"2\">获取GET请求数据</a></li><li><a class=\"toc-level-2\" href=\"#获取POST请求数据\" level=\"2\">获取POST请求数据</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 文件上传\" level=\"1\">PHP7 文件上传</a><ul><li><a class=\"toc-level-2\" href=\"#单文件上传\" level=\"2\">单文件上传</a></li><li><a class=\"toc-level-2\" href=\"#多文件上传\" level=\"2\">多文件上传</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 访问Mysql数据库\" level=\"1\">PHP7 访问Mysql数据库</a><ul><li><a class=\"toc-level-2\" href=\"#执行INSERT语句\" level=\"2\">执行INSERT语句</a></li><li><a class=\"toc-level-2\" href=\"#执行UPDATE语句\" level=\"2\">执行UPDATE语句</a></li><li><a class=\"toc-level-2\" href=\"#执行DELETE语句\" level=\"2\">执行DELETE语句</a></li><li><a class=\"toc-level-2\" href=\"#执行SELECT语句\" level=\"2\">执行SELECT语句</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#PHP7 分页实现\" level=\"1\">PHP7 分页实现</a></li><li><a class=\"toc-level-1\" href=\"#PHP7 在页面上直接播放视频\" level=\"1\">PHP7 在页面上直接播放视频</a><ul></ul></li></ul>', '2020-02-24 18:29:49', 0, 23, 2, NULL);
INSERT INTO `article` VALUES (5, 'jQuery', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#引入jQuery\" level=\"1\">引入jQuery</a><ul><li><a class=\"toc-level-2\" href=\"#什么是jQuery\" level=\"2\">什么是jQuery</a></li><li><a class=\"toc-level-2\" href=\"#下载jQuery\" level=\"2\">下载jQuery</a></li><li><a class=\"toc-level-2\" href=\"#引入jQuery\" level=\"2\">引入jQuery</a></li><li><a class=\"toc-level-2\" href=\"#第一个jQuery程序\" level=\"2\">第一个jQuery程序</a></li><li><a class=\"toc-level-2\" href=\"#工厂函数$()\" level=\"2\">工厂函数$()</a></li><li><a class=\"toc-level-2\" href=\"#DOM对象与jQuery对象互相转换\" level=\"2\">DOM对象与jQuery对象互相转换</a><ul><li><a class=\"toc-level-3\" href=\"#DOM对象转为jQuery对象\" level=\"3\">DOM对象转为jQuery对象</a></li><li><a class=\"toc-level-3\" href=\"#jQuery对象转DOM对象\" level=\"3\">jQuery对象转DOM对象</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#选择器\" level=\"1\">选择器</a><ul><li><a class=\"toc-level-2\" href=\"#基本选择器\" level=\"2\">基本选择器</a><ul><li><a class=\"toc-level-3\" href=\"#标签选择器\" level=\"3\">标签选择器</a></li><li><a class=\"toc-level-3\" href=\"#类选择器\" level=\"3\">类选择器</a></li><li><a class=\"toc-level-3\" href=\"#ID选择器\" level=\"3\">ID选择器</a></li><li><a class=\"toc-level-3\" href=\"#并集选择器\" level=\"3\">并集选择器</a></li><li><a class=\"toc-level-3\" href=\"#交集选择器\" level=\"3\">交集选择器</a></li><li><a class=\"toc-level-3\" href=\"#全局选择器\" level=\"3\">全局选择器</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#层次选择器\" level=\"2\">层次选择器</a><ul><li><a class=\"toc-level-3\" href=\"#后代选择器\" level=\"3\">后代选择器</a></li><li><a class=\"toc-level-3\" href=\"#子选择器\" level=\"3\">子选择器</a></li><li><a class=\"toc-level-3\" href=\"#相邻元素选择器\" level=\"3\">相邻元素选择器</a></li><li><a class=\"toc-level-3\" href=\"#同辈元素选择器\" level=\"3\">同辈元素选择器</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#属性选择器\" level=\"2\">属性选择器</a><ul><li><a class=\"toc-level-3\" href=\"#选择包含某属性的元素\" level=\"3\">选择包含某属性的元素</a></li><li><a class=\"toc-level-3\" href=\"#选择属性值为特定值的元素\" level=\"3\">选择属性值为特定值的元素</a></li><li><a class=\"toc-level-3\" href=\"#选择属性值不为特定值的元素\" level=\"3\">选择属性值不为特定值的元素</a></li><li><a class=\"toc-level-3\" href=\"#选择属性值以特定值开始的元素\" level=\"3\">选择属性值以特定值开始的元素</a></li><li><a class=\"toc-level-3\" href=\"#选择属性值以特定值结尾的元素\" level=\"3\">选择属性值以特定值结尾的元素</a></li><li><a class=\"toc-level-3\" href=\"#选择属性值包含特定值的元素\" level=\"3\">选择属性值包含特定值的元素</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#过滤选择器\" level=\"2\">过滤选择器</a><ul><li><a class=\"toc-level-3\" href=\"#:first\" level=\"3\">:first</a></li><li><a class=\"toc-level-3\" href=\"#:last\" level=\"3\">:last</a></li><li><a class=\"toc-level-3\" href=\"#:not(选择器)\" level=\"3\">:not(选择器)</a></li><li><a class=\"toc-level-3\" href=\"#:even\" level=\"3\">:even</a></li><li><a class=\"toc-level-3\" href=\"#:odd\" level=\"3\">:odd</a></li><li><a class=\"toc-level-3\" href=\"#:eq(index)\" level=\"3\">:eq(index)</a></li><li><a class=\"toc-level-3\" href=\"#:gt(index)\" level=\"3\">:gt(index)</a></li><li><a class=\"toc-level-3\" href=\"#:lt(index)\" level=\"3\">:lt(index)</a></li><li><a class=\"toc-level-3\" href=\"#:header\" level=\"3\">:header</a></li><li><a class=\"toc-level-3\" href=\"#:hidden\" level=\"3\">:hidden</a></li><li><a class=\"toc-level-3\" href=\"#:visible\" level=\"3\">:visible</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#表单选择器\" level=\"2\">表单选择器</a><ul><li><a class=\"toc-level-3\" href=\"#:input\" level=\"3\">:input</a></li><li><a class=\"toc-level-3\" href=\"#:text\" level=\"3\">:text</a></li><li><a class=\"toc-level-3\" href=\"#:password\" level=\"3\">:password</a></li><li><a class=\"toc-level-3\" href=\"#:radio\" level=\"3\">:radio</a></li><li><a class=\"toc-level-3\" href=\"#:checkbox\" level=\"3\">:checkbox</a></li><li><a class=\"toc-level-3\" href=\"#:submit\" level=\"3\">:submit</a></li><li><a class=\"toc-level-3\" href=\"#:image\" level=\"3\">:image</a></li><li><a class=\"toc-level-3\" href=\"#:reset\" level=\"3\">:reset</a></li><li><a class=\"toc-level-3\" href=\"#:button\" level=\"3\">:button</a></li><li><a class=\"toc-level-3\" href=\"#:file\" level=\"3\">:file</a></li><li><a class=\"toc-level-3\" href=\"#:enabled\" level=\"3\">:enabled</a></li><li><a class=\"toc-level-3\" href=\"#:disabled\" level=\"3\">:disabled</a></li><li><a class=\"toc-level-3\" href=\"#:checked\" level=\"3\">:checked</a></li><li><a class=\"toc-level-3\" href=\"#:checked\" level=\"3\">:checked</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#动画函数\" level=\"1\">动画函数</a><ul><li><a class=\"toc-level-2\" href=\"#show()，hide()\" level=\"2\">show()，hide()</a></li><li><a class=\"toc-level-2\" href=\"#toggle()\" level=\"2\">toggle()</a></li><li><a class=\"toc-level-2\" href=\"#fadeIn()，fadeOut()\" level=\"2\">fadeIn()，fadeOut()</a></li><li><a class=\"toc-level-2\" href=\"#slideUp()，slideDown()\" level=\"2\">slideUp()，slideDown()</a></li><li><a class=\"toc-level-2\" href=\"#animate()\" level=\"2\">animate()</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#常用事件函数\" level=\"1\">常用事件函数</a><ul><li><a class=\"toc-level-2\" href=\"#鼠标事件函数\" level=\"2\">鼠标事件函数</a><ul><li><a class=\"toc-level-3\" href=\"#click()\" level=\"3\">click()</a></li><li><a class=\"toc-level-3\" href=\"#mouseover()，mouseout()\" level=\"3\">mouseover()，mouseout()</a></li><li><a class=\"toc-level-3\" href=\"#mouseenter()，mouseleave()\" level=\"3\">mouseenter()，mouseleave()</a></li><li><a class=\"toc-level-3\" href=\"#hover()\" level=\"3\">hover()</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#键盘事件函数\" level=\"2\">键盘事件函数</a><ul><li><a class=\"toc-level-3\" href=\"#keydown()，keyup()，keypress()\" level=\"3\">keydown()，keyup()，keypress()</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#浏览器事件函数\" level=\"2\">浏览器事件函数</a><ul><li><a class=\"toc-level-3\" href=\"#resize()\" level=\"3\">resize()</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#焦点事件\" level=\"2\">焦点事件</a><ul><li><a class=\"toc-level-3\" href=\"#blur()，focus()\" level=\"3\">blur()，focus()</a></li><li><a class=\"toc-level-3\" href=\"#select()\" level=\"3\">select()</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#事件的绑定与移除\" level=\"1\">事件的绑定与移除</a><ul><li><a class=\"toc-level-2\" href=\"#绑定事件：bind()\" level=\"2\">绑定事件：bind()</a><ul><li><a class=\"toc-level-3\" href=\"#绑定单个事件\" level=\"3\">绑定单个事件</a></li><li><a class=\"toc-level-3\" href=\"#绑定多个事件\" level=\"3\">绑定多个事件</a></li><li><a class=\"toc-level-3\" href=\"#event.data\" level=\"3\">event.data</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#解除绑定事件：unbind()\" level=\"2\">解除绑定事件：unbind()</a><ul><li><a class=\"toc-level-3\" href=\"#解除绑定的所有事件\" level=\"3\">解除绑定的所有事件</a></li><li><a class=\"toc-level-3\" href=\"#解除绑定的指定事件\" level=\"3\">解除绑定的指定事件</a></li><li><a class=\"toc-level-3\" href=\"#解除绑定的指定事件的函数\" level=\"3\">解除绑定的指定事件的函数</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#操作DOM元素的样式\" level=\"1\">操作DOM元素的样式</a><ul><li><a class=\"toc-level-2\" href=\"#css()\" level=\"2\">css()</a></li><li><a class=\"toc-level-2\" href=\"#addClass()，removeClass()\" level=\"2\">addClass()，removeClass()</a></li><li><a class=\"toc-level-2\" href=\"#toggleClass()\" level=\"2\">toggleClass()</a></li><li><a class=\"toc-level-2\" href=\"#hasClass()\" level=\"2\">hasClass()</a></li><li><a class=\"toc-level-2\" href=\"#height()，width()\" level=\"2\">height()，width()</a></li><li><a class=\"toc-level-2\" href=\"#offset()\" level=\"2\">offset()</a></li><li><a class=\"toc-level-2\" href=\"#offsetParent()\" level=\"2\">offsetParent()</a></li><li><a class=\"toc-level-2\" href=\"#position()\" level=\"2\">position()</a></li><li><a class=\"toc-level-2\" href=\"#scrollLeft()，scrollTop()\" level=\"2\">scrollLeft()，scrollTop()</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#操作DOM元素\" level=\"1\">操作DOM元素</a><ul><li><a class=\"toc-level-2\" href=\"#html()\" level=\"2\">html()</a></li><li><a class=\"toc-level-2\" href=\"#text()\" level=\"2\">text()</a></li><li><a class=\"toc-level-2\" href=\"#val()\" level=\"2\">val()</a></li><li><a class=\"toc-level-2\" href=\"#创建节点\" level=\"2\">创建节点</a></li><li><a class=\"toc-level-2\" href=\"#append()，appendTo()\" level=\"2\">append()，appendTo()</a></li><li><a class=\"toc-level-2\" href=\"#prepend()，prependTo()\" level=\"2\">prepend()，prependTo()</a></li><li><a class=\"toc-level-2\" href=\"#after()\" level=\"2\">after()</a></li><li><a class=\"toc-level-2\" href=\"#before()\" level=\"2\">before()</a></li><li><a class=\"toc-level-2\" href=\"#remove()\" level=\"2\">remove()</a></li><li><a class=\"toc-level-2\" href=\"#empty()\" level=\"2\">empty()</a></li><li><a class=\"toc-level-2\" href=\"#detach()\" level=\"2\">detach()</a></li><li><a class=\"toc-level-2\" href=\"#replaceWith()\" level=\"2\">replaceWith()</a></li><li><a class=\"toc-level-2\" href=\"#replaceAll()\" level=\"2\">replaceAll()</a></li><li><a class=\"toc-level-2\" href=\"#clone()\" level=\"2\">clone()</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#操作DOM元素属性\" level=\"1\">操作DOM元素属性</a><ul><li><a class=\"toc-level-2\" href=\"#attr()\" level=\"2\">attr()</a></li><li><a class=\"toc-level-2\" href=\"#removeAttr()\" level=\"2\">removeAttr()</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#遍历DOM元素\" level=\"1\">遍历DOM元素</a><ul><li><a class=\"toc-level-2\" href=\"#选择子元素\" level=\"2\">选择子元素</a><ul><li><a class=\"toc-level-3\" href=\"#children()\" level=\"3\">children()</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#选择兄弟级元素\" level=\"2\">选择兄弟级元素</a><ul><li><a class=\"toc-level-3\" href=\"#next()\" level=\"3\">next()</a></li><li><a class=\"toc-level-3\" href=\"#prev()\" level=\"3\">prev()</a></li><li><a class=\"toc-level-3\" href=\"#siblings()\" level=\"3\">siblings()</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#选择父元素\" level=\"2\">选择父元素</a><ul><li><a class=\"toc-level-3\" href=\"#parent()\" level=\"3\">parent()</a></li><li><a class=\"toc-level-3\" href=\"#parents()\" level=\"3\">parents()</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#遍历元素\" level=\"2\">遍历元素</a><ul><li><a class=\"toc-level-3\" href=\"#each()\" level=\"3\">each()</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#JQuery的链式写法\" level=\"1\">JQuery的链式写法</a><ul><li><a class=\"toc-level-2\" href=\"#连续操作\" level=\"2\">连续操作</a></li><li><a class=\"toc-level-2\" href=\"#end()\" level=\"2\">end()</a><ul></ul></li></ul></li></ul>', '2020-02-24 18:29:43', 0, 234, 1, NULL);
INSERT INTO `article` VALUES (6, 'Bootstrap', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#Bootstrap4.4介绍\" level=\"1\">Bootstrap4.4介绍</a></li><li><a class=\"toc-level-1\" href=\"#Bootstrap4.4的安装\" level=\"1\">Bootstrap4.4的安装</a></li><li><a class=\"toc-level-1\" href=\"#栅格系统\" level=\"1\">栅格系统</a><ul><li><a class=\"toc-level-2\" href=\"#视口尺寸划分\" level=\"2\">视口尺寸划分</a></li><li><a class=\"toc-level-2\" href=\"#容器宽度\" level=\"2\">容器宽度</a></li><li><a class=\"toc-level-2\" href=\"#栅格系统\" level=\"2\">栅格系统</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#工具类\" level=\"1\">工具类</a><ul><li><a class=\"toc-level-2\" href=\"#颜色\" level=\"2\">颜色</a></li><li><a class=\"toc-level-2\" href=\"#边框\" level=\"2\">边框</a></li><li><a class=\"toc-level-2\" href=\"#浮动\" level=\"2\">浮动</a></li><li><a class=\"toc-level-2\" href=\"#Display\" level=\"2\">Display</a></li><li><a class=\"toc-level-2\" href=\"#Flex布局类\" level=\"2\">Flex布局类</a></li><li><a class=\"toc-level-2\" href=\"#文本\" level=\"2\">文本</a></li><li><a class=\"toc-level-2\" href=\"#移除处理\" level=\"2\">移除处理</a></li><li><a class=\"toc-level-2\" href=\"#定位\" level=\"2\">定位</a></li><li><a class=\"toc-level-2\" href=\"#阴影\" level=\"2\">阴影</a></li><li><a class=\"toc-level-2\" href=\"#尺寸\" level=\"2\">尺寸</a></li><li><a class=\"toc-level-2\" href=\"#间隔\" level=\"2\">间隔</a></li><li><a class=\"toc-level-2\" href=\"#链接拉伸\" level=\"2\">链接拉伸</a></li><li><a class=\"toc-level-2\" href=\"#垂直对齐\" level=\"2\">垂直对齐</a></li><li><a class=\"toc-level-2\" href=\"#可见性\" level=\"2\">可见性</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#页面内容\" level=\"1\">页面内容</a><ul><li><a class=\"toc-level-2\" href=\"#排版\" level=\"2\">排版</a></li><li><a class=\"toc-level-2\" href=\"#图像\" level=\"2\">图像</a></li><li><a class=\"toc-level-2\" href=\"#表格\" level=\"2\">表格</a></li><li><a class=\"toc-level-2\" href=\"#图片区\" level=\"2\">图片区</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#组件\" level=\"1\">组件</a><ul><li><a class=\"toc-level-2\" href=\"#警告框\" level=\"2\">警告框</a></li><li><a class=\"toc-level-2\" href=\"#徽章\" level=\"2\">徽章</a></li><li><a class=\"toc-level-2\" href=\"#面包屑导航\" level=\"2\">面包屑导航</a></li><li><a class=\"toc-level-2\" href=\"#按钮\" level=\"2\">按钮</a></li><li><a class=\"toc-level-2\" href=\"#下拉菜单\" level=\"2\">下拉菜单</a></li><li><a class=\"toc-level-2\" href=\"#按钮组\" level=\"2\">按钮组</a></li><li><a class=\"toc-level-2\" href=\"#输入组\" level=\"2\">输入组</a></li><li><a class=\"toc-level-2\" href=\"#表单\" level=\"2\">表单</a></li><li><a class=\"toc-level-2\" href=\"#卡片\" level=\"2\">卡片</a></li><li><a class=\"toc-level-2\" href=\"#轮播\" level=\"2\">轮播</a></li><li><a class=\"toc-level-2\" href=\"#折叠(手风琴)\" level=\"2\">折叠(手风琴)</a></li><li><a class=\"toc-level-2\" href=\"#巨幕\" level=\"2\">巨幕</a></li><li><a class=\"toc-level-2\" href=\"#列表组\" level=\"2\">列表组</a></li><li><a class=\"toc-level-2\" href=\"#媒体对象\" level=\"2\">媒体对象</a></li><li><a class=\"toc-level-2\" href=\"#模态框\" level=\"2\">模态框</a></li><li><a class=\"toc-level-2\" href=\"#导航\" level=\"2\">导航</a></li><li><a class=\"toc-level-2\" href=\"#导航条\" level=\"2\">导航条</a></li><li><a class=\"toc-level-2\" href=\"#分页\" level=\"2\">分页</a></li><li><a class=\"toc-level-2\" href=\"#弹出框\" level=\"2\">弹出框</a></li><li><a class=\"toc-level-2\" href=\"#进度条\" level=\"2\">进度条</a></li><li><a class=\"toc-level-2\" href=\"#滚动监听\" level=\"2\">滚动监听</a></li><li><a class=\"toc-level-2\" href=\"#加载图标\" level=\"2\">加载图标</a></li><li><a class=\"toc-level-2\" href=\"#轻量弹窗\" level=\"2\">轻量弹窗</a></li><li><a class=\"toc-level-2\" href=\"#工具提示框\" level=\"2\">工具提示框</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#资源下载\" level=\"1\">资源下载</a><ul></ul></li></ul>', '2020-02-24 18:29:46', 0, 123, 1, NULL);
INSERT INTO `article` VALUES (7, 'Node.js', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#Node12 介绍\" level=\"1\">Node12 介绍</a></li><li><a class=\"toc-level-1\" href=\"#下载 Node12\" level=\"1\">下载 Node12</a></li><li><a class=\"toc-level-1\" href=\"#安装和配置 Node12\" level=\"1\">安装和配置 Node12</a><ul><li><a class=\"toc-level-2\" href=\"#安装 Node12\" level=\"2\">安装 Node12</a></li><li><a class=\"toc-level-2\" href=\"#配置 Node12\" level=\"2\">配置 Node12</a></li><li><a class=\"toc-level-2\" href=\"#验证 Node12\" level=\"2\">验证 Node12</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#在 VSCode 上安装插件\" level=\"1\">在 VSCode 上安装插件</a></li><li><a class=\"toc-level-1\" href=\"#模块\" level=\"1\">模块</a><ul><li><a class=\"toc-level-2\" href=\"#什么是模块\" level=\"2\">什么是模块</a></li><li><a class=\"toc-level-2\" href=\"#创建模块\" level=\"2\">创建模块</a></li><li><a class=\"toc-level-2\" href=\"#引入模块\" level=\"2\">引入模块</a></li><li><a class=\"toc-level-2\" href=\"#执行模块\" level=\"2\">执行模块</a></li><li><a class=\"toc-level-2\" href=\"#常见问题\" level=\"2\">常见问题</a><ul><li><a class=\"toc-level-3\" href=\"#问题一\" level=\"3\">问题一</a></li><li><a class=\"toc-level-3\" href=\"#问题二\" level=\"3\">问题二</a></li><li><a class=\"toc-level-3\" href=\"#问题三\" level=\"3\">问题三</a></li><li><a class=\"toc-level-3\" href=\"#问题四\" level=\"3\">问题四</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#类\" level=\"1\">类</a><ul><li><a class=\"toc-level-2\" href=\"#类的定义和实例化\" level=\"2\">类的定义和实例化</a></li><li><a class=\"toc-level-2\" href=\"#静态成员\" level=\"2\">静态成员</a></li><li><a class=\"toc-level-2\" href=\"#实例化成员\" level=\"2\">实例化成员</a></li><li><a class=\"toc-level-2\" href=\"#构造方法\" level=\"2\">构造方法</a></li><li><a class=\"toc-level-2\" href=\"#类的继承\" level=\"2\">类的继承</a></li><li><a class=\"toc-level-2\" href=\"#导出类模块\" level=\"2\">导出类模块</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Node12 创建服务器\" level=\"1\">Node12 创建服务器</a><ul><li><a class=\"toc-level-2\" href=\"#启动服务器\" level=\"2\">启动服务器</a></li><li><a class=\"toc-level-2\" href=\"#访问服务器\" level=\"2\">访问服务器</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#响应信息\" level=\"1\">响应信息</a><ul><li><a class=\"toc-level-2\" href=\"#设置响应头\" level=\"2\">设置响应头</a></li><li><a class=\"toc-level-2\" href=\"#设置响应内容\" level=\"2\">设置响应内容</a></li><li><a class=\"toc-level-2\" href=\"#加载页面\" level=\"2\">加载页面</a></li><li><a class=\"toc-level-2\" href=\"#常用MIME类型表\" level=\"2\">常用MIME类型表</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#获取请求信息\" level=\"1\">获取请求信息</a><ul><li><a class=\"toc-level-2\" href=\"#获取请求方式和URL\" level=\"2\">获取请求方式和URL</a></li><li><a class=\"toc-level-2\" href=\"#获取GET请求参数\" level=\"2\">获取GET请求参数</a></li><li><a class=\"toc-level-2\" href=\"#获取POST请求参数\" level=\"2\">获取POST请求参数</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#npm\" level=\"1\">npm</a><ul><li><a class=\"toc-level-2\" href=\"#npm简介\" level=\"2\">npm简介</a></li><li><a class=\"toc-level-2\" href=\"#查找依赖项目\" level=\"2\">查找依赖项目</a></li><li><a class=\"toc-level-2\" href=\"#查看npm版本及更新\" level=\"2\">查看npm版本及更新</a></li><li><a class=\"toc-level-2\" href=\"#淘宝镜像\" level=\"2\">淘宝镜像</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#自定义模块\" level=\"1\">自定义模块</a><ul><li><a class=\"toc-level-2\" href=\"#创建模块\" level=\"2\">创建模块</a></li><li><a class=\"toc-level-2\" href=\"#package.json 配置说明\" level=\"2\">package.json 配置说明</a></li><li><a class=\"toc-level-2\" href=\"#依赖项目管理\" level=\"2\">依赖项目管理</a></li><li><a class=\"toc-level-2\" href=\"#安装 package.json 中依赖的项目\" level=\"2\">安装 package.json 中依赖的项目</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#动态获取MIME类型\" level=\"1\">动态获取MIME类型</a><ul><li><a class=\"toc-level-2\" href=\"#安装mime模块\" level=\"2\">安装mime模块</a></li><li><a class=\"toc-level-2\" href=\"#获取MIME类型\" level=\"2\">获取MIME类型</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#EJS嵌入式模板\" level=\"1\">EJS嵌入式模板</a><ul><li><a class=\"toc-level-2\" href=\"#安装EJS模块\" level=\"2\">安装EJS模块</a></li><li><a class=\"toc-level-2\" href=\"#模板渲染\" level=\"2\">模板渲染</a></li><li><a class=\"toc-level-2\" href=\"#模板语法\" level=\"2\">模板语法</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#操作MySQL数据库\" level=\"1\">操作MySQL数据库</a><ul><li><a class=\"toc-level-2\" href=\"#安装MySQL模块\" level=\"2\">安装MySQL模块</a></li><li><a class=\"toc-level-2\" href=\"#连接数据库\" level=\"2\">连接数据库</a></li><li><a class=\"toc-level-2\" href=\"#查询\" level=\"2\">查询</a></li><li><a class=\"toc-level-2\" href=\"#插入\" level=\"2\">插入</a></li><li><a class=\"toc-level-2\" href=\"#删除\" level=\"2\">删除</a></li><li><a class=\"toc-level-2\" href=\"#更新\" level=\"2\">更新</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Express\" level=\"1\">Express</a><ul><li><a class=\"toc-level-2\" href=\"#安装Express模块\" level=\"2\">安装Express模块</a></li><li><a class=\"toc-level-2\" href=\"#创建应用\" level=\"2\">创建应用</a></li><li><a class=\"toc-level-2\" href=\"#路由常用方法\" level=\"2\">路由常用方法</a></li><li><a class=\"toc-level-2\" href=\"#路由匹配路径\" level=\"2\">路由匹配路径</a></li><li><a class=\"toc-level-2\" href=\"#路由处理程序\" level=\"2\">路由处理程序</a></li><li><a class=\"toc-level-2\" href=\"#响应数据\" level=\"2\">响应数据</a></li><li><a class=\"toc-level-2\" href=\"#获取参数\" level=\"2\">获取参数</a></li><li><a class=\"toc-level-2\" href=\"#静态资源加载\" level=\"2\">静态资源加载</a></li><li><a class=\"toc-level-2\" href=\"#EJS模板渲染\" level=\"2\">EJS模板渲染</a></li><li><a class=\"toc-level-2\" href=\"#子应用\" level=\"2\">子应用</a></li><li><a class=\"toc-level-2\" href=\"#cookie\" level=\"2\">cookie</a></li><li><a class=\"toc-level-2\" href=\"#session\" level=\"2\">session</a></li><li><a class=\"toc-level-2\" href=\"#文件上传\" level=\"2\">文件上传</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#资源下载\" level=\"1\">资源下载</a></li><li><a class=\"toc-level-1\" href=\"#视频教程\" level=\"1\">视频教程</a><ul></ul></li></ul>', '2020-02-24 18:29:51', 0, 44, 3, NULL);
INSERT INTO `article` VALUES (8, 'Java', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#格式化日期\" level=\"1\">格式化日期</a></li><li><a class=\"toc-level-1\" href=\"#网络编程\" level=\"1\">网络编程</a><ul><li><a class=\"toc-level-2\" href=\"#UDP模式\" level=\"2\">UDP模式</a></li><li><a class=\"toc-level-2\" href=\"#TCP模式\" level=\"2\">TCP模式</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#多线程\" level=\"1\">多线程</a><ul><li><a class=\"toc-level-2\" href=\"#创建线程的步骤\" level=\"2\">创建线程的步骤</a></li><li><a class=\"toc-level-2\" href=\"#相关的类\" level=\"2\">相关的类</a></li><li><a class=\"toc-level-2\" href=\"#通过Thread类创建子线程\" level=\"2\">通过Thread类创建子线程</a></li><li><a class=\"toc-level-2\" href=\"#通过Runnable接口创建子线程\" level=\"2\">通过Runnable接口创建子线程</a></li><li><a class=\"toc-level-2\" href=\"#让多个子线程共享数据一\" level=\"2\">让多个子线程共享数据一</a></li><li><a class=\"toc-level-2\" href=\"#让多个子线程共享数据二\" level=\"2\">让多个子线程共享数据二</a></li><li><a class=\"toc-level-2\" href=\"#线程同步一\" level=\"2\">线程同步一</a></li><li><a class=\"toc-level-2\" href=\"#线程同步二\" level=\"2\">线程同步二</a></li><li><a class=\"toc-level-2\" href=\"#线程插队\" level=\"2\">线程插队</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#JDBC\" level=\"1\">JDBC</a><ul><li><a class=\"toc-level-2\" href=\"#什么是JDBC\" level=\"2\">什么是JDBC</a></li><li><a class=\"toc-level-2\" href=\"#JDBC API主要功能\" level=\"2\">JDBC API主要功能</a></li><li><a class=\"toc-level-2\" href=\"#JDBC编程步骤\" level=\"2\">JDBC编程步骤</a><ul><li><a class=\"toc-level-3\" href=\"#连接和关闭数据库\" level=\"3\">连接和关闭数据库</a></li><li><a class=\"toc-level-3\" href=\"#执行查询语句\" level=\"3\">执行查询语句</a></li><li><a class=\"toc-level-3\" href=\"#执行增、删、改语句\" level=\"3\">执行增、删、改语句</a></li><li><a class=\"toc-level-3\" href=\"#用PreparedStatement执行SQL语句\" level=\"3\">用PreparedStatement执行SQL语句</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#乱码问题\" level=\"2\">乱码问题</a></li><li><a class=\"toc-level-2\" href=\"#事务处理\" level=\"2\">事务处理</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#properties配置文件\" level=\"1\">properties配置文件</a><ul><li><a class=\"toc-level-2\" href=\"#properties配置文件说明\" level=\"2\">properties配置文件说明</a></li><li><a class=\"toc-level-2\" href=\"#读取配置文件\" level=\"2\">读取配置文件</a></li><li><a class=\"toc-level-2\" href=\"#Properties类常用的方法\" level=\"2\">Properties类常用的方法</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#单元测试实现\" level=\"1\">单元测试实现</a></li><li><a class=\"toc-level-1\" href=\"#文件上传\" level=\"1\">文件上传</a><ul><li><a class=\"toc-level-2\" href=\"#Commons-FileUpload组件的API\" level=\"2\">Commons-FileUpload组件的API</a></li><li><a class=\"toc-level-2\" href=\"#使用步骤\" level=\"2\">使用步骤</a><ul></ul></li></ul></li></ul>', '2020-02-24 22:31:57', 0, 5, 4, NULL);
INSERT INTO `article` VALUES (9, 'MyBatis', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#MyBatis3 开发环境搭建\" level=\"1\">MyBatis3 开发环境搭建</a><ul><li><a class=\"toc-level-2\" href=\"#准备工作\" level=\"2\">准备工作</a></li><li><a class=\"toc-level-2\" href=\"#MyBatis3开发环境搭建\" level=\"2\">MyBatis3开发环境搭建</a></li><li><a class=\"toc-level-2\" href=\"#创建配置文件\" level=\"2\">创建配置文件</a></li><li><a class=\"toc-level-2\" href=\"#创建XML映射文件\" level=\"2\">创建XML映射文件</a></li><li><a class=\"toc-level-2\" href=\"#使用MyBatis3访问数据库\" level=\"2\">使用MyBatis3访问数据库</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 工具封装类\" level=\"1\">MyBatis3 工具封装类</a></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 配置数据源\" level=\"1\">MyBatis3 配置数据源</a><ul><li><a class=\"toc-level-2\" href=\"#静态配置\" level=\"2\">静态配置</a></li><li><a class=\"toc-level-2\" href=\"#动态配置\" level=\"2\">动态配置</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 日志实现\" level=\"1\">MyBatis3 日志实现</a><ul><li><a class=\"toc-level-2\" href=\"#准备工作\" level=\"2\">准备工作</a></li><li><a class=\"toc-level-2\" href=\"#部署Log4j\" level=\"2\">部署Log4j</a></li><li><a class=\"toc-level-2\" href=\"#配置Log4j\" level=\"2\">配置Log4j</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 通过接口进行数据库访问\" level=\"1\">MyBatis3 通过接口进行数据库访问</a><ul><li><a class=\"toc-level-2\" href=\"#创建接口\" level=\"2\">创建接口</a></li><li><a class=\"toc-level-2\" href=\"#修改单元测试文件\" level=\"2\">修改单元测试文件</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 创建POJO类\" level=\"1\">MyBatis3 创建POJO类</a><ul><li><a class=\"toc-level-2\" href=\"#什么是POJO类\" level=\"2\">什么是POJO类</a></li><li><a class=\"toc-level-2\" href=\"#创建POJO类\" level=\"2\">创建POJO类</a></li><li><a class=\"toc-level-2\" href=\"#数据库类型与java类型对照表\" level=\"2\">数据库类型与java类型对照表</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 向SQL语句传参\" level=\"1\">MyBatis3 向SQL语句传参</a><ul><li><a class=\"toc-level-2\" href=\"#传入一个参数\" level=\"2\">传入一个参数</a></li><li><a class=\"toc-level-2\" href=\"#传入多个参数\" level=\"2\">传入多个参数</a><ul><li><a class=\"toc-level-3\" href=\"#POJO对象实现\" level=\"3\">POJO对象实现</a></li><li><a class=\"toc-level-3\" href=\"#Map对象实现\" level=\"3\">Map对象实现</a></li><li><a class=\"toc-level-3\" href=\"#注解实现\" level=\"3\">注解实现</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 获取查询结果\" level=\"1\">MyBatis3 获取查询结果</a><ul><li><a class=\"toc-level-2\" href=\"#单表查询\" level=\"2\">单表查询</a><ul><li><a class=\"toc-level-3\" href=\"#查询单个值\" level=\"3\">查询单个值</a></li><li><a class=\"toc-level-3\" href=\"#查询一行数据\" level=\"3\">查询一行数据</a></li><li><a class=\"toc-level-3\" href=\"#查询多行数据\" level=\"3\">查询多行数据</a></li><li><a class=\"toc-level-3\" href=\"#模糊查询\" level=\"3\">模糊查询</a></li><li><a class=\"toc-level-3\" href=\"#分页查询\" level=\"3\">分页查询</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#多表联合查询\" level=\"2\">多表联合查询</a><ul><li><a class=\"toc-level-3\" href=\"#主表引用附表字段\" level=\"3\">主表引用附表字段</a></li><li><a class=\"toc-level-3\" href=\"#主表引用附表POJO对象\" level=\"3\">主表引用附表POJO对象</a></li><li><a class=\"toc-level-3\" href=\"#主表引用附表POJO对象集合\" level=\"3\">主表引用附表POJO对象集合</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 结果集映射机制\" level=\"1\">MyBatis3 结果集映射机制</a><ul><li><a class=\"toc-level-2\" href=\"#POJO类属性名与数据表字段名不一致的情况\" level=\"2\">POJO类属性名与数据表字段名不一致的情况</a></li><li><a class=\"toc-level-2\" href=\"#自动映射行为\" level=\"2\">自动映射行为</a><ul><li><a class=\"toc-level-3\" href=\"#取消自动映射\" level=\"3\">取消自动映射</a></li><li><a class=\"toc-level-3\" href=\"#完全自动映射\" level=\"3\">完全自动映射</a></li><li><a class=\"toc-level-3\" href=\"#部分自动映射\" level=\"3\">部分自动映射</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 映射器的注册\" level=\"1\">MyBatis3 映射器的注册</a><ul><li><a class=\"toc-level-2\" href=\"#直接注册映射器文件\" level=\"2\">直接注册映射器文件</a></li><li><a class=\"toc-level-2\" href=\"#通过包名自动注册\" level=\"2\">通过包名自动注册</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 类型别名\" level=\"1\">MyBatis3 类型别名</a><ul><li><a class=\"toc-level-2\" href=\"#给具体的类取别名\" level=\"2\">给具体的类取别名</a></li><li><a class=\"toc-level-2\" href=\"#给指定包下的类取别名\" level=\"2\">给指定包下的类取别名</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 动态SQL映射\" level=\"1\">MyBatis3 动态SQL映射</a><ul><li><a class=\"toc-level-2\" href=\"#if\" level=\"2\">if</a></li><li><a class=\"toc-level-2\" href=\"#where-if / trim-if\" level=\"2\">where-if / trim-if</a></li><li><a class=\"toc-level-2\" href=\"#foreach\" level=\"2\">foreach</a></li><li><a class=\"toc-level-2\" href=\"#choose-when-otherwise\" level=\"2\">choose-when-otherwise</a></li><li><a class=\"toc-level-2\" href=\"#set-if / trim-if\" level=\"2\">set-if / trim-if</a><ul></ul></li></ul></li></ul>', '2020-02-24 22:32:59', 0, 1289, 4, NULL);
INSERT INTO `article` VALUES (10, 'Spring', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#Spring3 环境搭建\" level=\"1\">Spring3 环境搭建</a><ul><li><a class=\"toc-level-2\" href=\"#下载相关JAR文件\" level=\"2\">下载相关JAR文件</a></li><li><a class=\"toc-level-2\" href=\"#搭建Spring3环境\" level=\"2\">搭建Spring3环境</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 Ioc依赖注入\" level=\"1\">Spring3 Ioc依赖注入</a><ul><li><a class=\"toc-level-2\" href=\"#注入直接量\" level=\"2\">注入直接量</a></li><li><a class=\"toc-level-2\" href=\"#注入对象\" level=\"2\">注入对象</a></li><li><a class=\"toc-level-2\" href=\"#构造注入\" level=\"2\">构造注入</a></li><li><a class=\"toc-level-2\" href=\"#注入特殊值\" level=\"2\">注入特殊值</a><ul><li><a class=\"toc-level-3\" href=\"#注入null值\" level=\"3\">注入null值</a></li><li><a class=\"toc-level-3\" href=\"#注入空字符串\" level=\"3\">注入空字符串</a></li><li><a class=\"toc-level-3\" href=\"#注入包含特殊字符的值\" level=\"3\">注入包含特殊字符的值</a></li><li><a class=\"toc-level-3\" href=\"#注入List集合\" level=\"3\">注入List集合</a></li><li><a class=\"toc-level-3\" href=\"#注入Set集合\" level=\"3\">注入Set集合</a></li><li><a class=\"toc-level-3\" href=\"#注入Map集合\" level=\"3\">注入Map集合</a></li><li><a class=\"toc-level-3\" href=\"#注入Properties集合\" level=\"3\">注入Properties集合</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#使用注解实现Ioc\" level=\"2\">使用注解实现Ioc</a><ul><li><a class=\"toc-level-3\" href=\"#定义Bean\" level=\"3\">定义Bean</a></li><li><a class=\"toc-level-3\" href=\"#Bean组件装配\" level=\"3\">Bean组件装配</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 AOP实现\" level=\"1\">Spring3 AOP实现</a><ul><li><a class=\"toc-level-2\" href=\"#相关JAR文件\" level=\"2\">相关JAR文件</a></li><li><a class=\"toc-level-2\" href=\"#AOP增强\" level=\"2\">AOP增强</a></li><li><a class=\"toc-level-2\" href=\"#使用注解实现AOP增强\" level=\"2\">使用注解实现AOP增强</a></li><li><a class=\"toc-level-2\" href=\"#切入点表达式匹配规则举例\" level=\"2\">切入点表达式匹配规则举例</a></li><li><a class=\"toc-level-2\" href=\"#JoinPoint 常用方法\" level=\"2\">JoinPoint 常用方法</a></li><li><a class=\"toc-level-2\" href=\"#ProceedingJoinPoint 常用方法\" level=\"2\">ProceedingJoinPoint 常用方法</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 整合MyBatis3\" level=\"1\">Spring3 整合MyBatis3</a><ul><li><a class=\"toc-level-2\" href=\"#相关JAR文件\" level=\"2\">相关JAR文件</a></li><li><a class=\"toc-level-2\" href=\"#整合思路\" level=\"2\">整合思路</a></li><li><a class=\"toc-level-2\" href=\"#整合实现\" level=\"2\">整合实现</a></li><li><a class=\"toc-level-2\" href=\"#将 MyBatis 中的配置转移到 Spring 配置文件中\" level=\"2\">将 MyBatis 中的配置转移到 Spring 配置文件中</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 映射器接口实现\" level=\"1\">Spring3 映射器接口实现</a><ul><li><a class=\"toc-level-2\" href=\"#实现类实现映射器接口\" level=\"2\">实现类实现映射器接口</a><ul><li><a class=\"toc-level-3\" href=\"#普通实现\" level=\"3\">普通实现</a></li><li><a class=\"toc-level-3\" href=\"#通过继承SqlSessionDaoSupport类实现\" level=\"3\">通过继承SqlSessionDaoSupport类实现</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#注入实现映射器接口\" level=\"2\">注入实现映射器接口</a><ul><li><a class=\"toc-level-3\" href=\"#使用 MapperFactoryBean 注入\" level=\"3\">使用 MapperFactoryBean 注入</a></li><li><a class=\"toc-level-3\" href=\"#使用 MapperScannerConfigurer 注入\" level=\"3\">使用 MapperScannerConfigurer 注入</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 声明式事务\" level=\"1\">Spring3 声明式事务</a><ul><li><a class=\"toc-level-2\" href=\"#使用Spring XML实现声明式事务\" level=\"2\">使用Spring XML实现声明式事务</a></li><li><a class=\"toc-level-2\" href=\"#使用注解实现声明式事务处理\" level=\"2\">使用注解实现声明式事务处理</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 数据源配置\" level=\"1\">Spring3 数据源配置</a><ul><li><a class=\"toc-level-2\" href=\"#使用BasicDataSource直接配置数据源\" level=\"2\">使用BasicDataSource直接配置数据源</a></li><li><a class=\"toc-level-2\" href=\"#使用属性文件配置数据源\" level=\"2\">使用属性文件配置数据源</a></li><li><a class=\"toc-level-2\" href=\"#使用JNDI数据源\" level=\"2\">使用JNDI数据源</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 指定Bean的作用域\" level=\"1\">Spring3 指定Bean的作用域</a><ul><li><a class=\"toc-level-2\" href=\"#Bean的作用域说明\" level=\"2\">Bean的作用域说明</a></li><li><a class=\"toc-level-2\" href=\"#设置Bean的作用\" level=\"2\">设置Bean的作用</a><ul><li><a class=\"toc-level-3\" href=\"#xml方式\" level=\"3\">xml方式</a></li><li><a class=\"toc-level-3\" href=\"#注解方式\" level=\"3\">注解方式</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 自动装配\" level=\"1\">Spring3 自动装配</a><ul><li><a class=\"toc-level-2\" href=\"#局部设置\" level=\"2\">局部设置</a><ul><li><a class=\"toc-level-3\" href=\"#不进行自动装配\" level=\"3\">不进行自动装配</a></li><li><a class=\"toc-level-3\" href=\"#按属性名称进行自动装配\" level=\"3\">按属性名称进行自动装配</a></li><li><a class=\"toc-level-3\" href=\"#按属性类型进行自动装配\" level=\"3\">按属性类型进行自动装配</a></li><li><a class=\"toc-level-3\" href=\"#按构造方法的参数类型进行自动装配\" level=\"3\">按构造方法的参数类型进行自动装配</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#全局设置\" level=\"2\">全局设置</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 拆分配置文件\" level=\"1\">Spring3 拆分配置文件</a><ul><li><a class=\"toc-level-2\" href=\"#拆分配置文件\" level=\"2\">拆分配置文件</a></li><li><a class=\"toc-level-2\" href=\"#整合配置文件\" level=\"2\">整合配置文件</a><ul><li><a class=\"toc-level-3\" href=\"#配置文件导入\" level=\"3\">配置文件导入</a></li><li><a class=\"toc-level-3\" href=\"#创建上下文对象时引入所有的配置文件\" level=\"3\">创建上下文对象时引入所有的配置文件</a><ul></ul></li></ul></li></ul></li></ul>', '2020-02-24 22:33:12', 0, 1245, 4, NULL);
INSERT INTO `article` VALUES (11, 'SpringMVC', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#SpringMVC3 环境搭建\" level=\"1\">SpringMVC3 环境搭建</a><ul><li><a class=\"toc-level-2\" href=\"#下载相关JAR包\" level=\"2\">下载相关JAR包</a></li><li><a class=\"toc-level-2\" href=\"#搭建 SpringMVC3 环境\" level=\"2\">搭建 SpringMVC3 环境</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SprintMVC3 使用注解实现控制器类\" level=\"1\">SprintMVC3 使用注解实现控制器类</a><ul><li><a class=\"toc-level-2\" href=\"#支持注解配置\" level=\"2\">支持注解配置</a></li><li><a class=\"toc-level-2\" href=\"#控制器改造\" level=\"2\">控制器改造</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 请求映射映射\" level=\"1\">SpringMVC3 请求映射映射</a><ul><li><a class=\"toc-level-2\" href=\"#单映射\" level=\"2\">单映射</a><ul><li><a class=\"toc-level-3\" href=\"#单级映射\" level=\"3\">单级映射</a></li><li><a class=\"toc-level-3\" href=\"#多级映射\" level=\"3\">多级映射</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#多映射\" level=\"2\">多映射</a></li><li><a class=\"toc-level-2\" href=\"#只允许GET请求\" level=\"2\">只允许GET请求</a></li><li><a class=\"toc-level-2\" href=\"#只允许POST请求\" level=\"2\">只允许POST请求</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 视图向控制器传递参数\" level=\"1\">SpringMVC3 视图向控制器传递参数</a><ul><li><a class=\"toc-level-2\" href=\"#提交单个参数\" level=\"2\">提交单个参数</a></li><li><a class=\"toc-level-2\" href=\"#提交多个参数\" level=\"2\">提交多个参数</a></li><li><a class=\"toc-level-2\" href=\"#非必填参数\" level=\"2\">非必填参数</a></li><li><a class=\"toc-level-2\" href=\"#给参数设置默认值\" level=\"2\">给参数设置默认值</a></li><li><a class=\"toc-level-2\" href=\"#将参数赋值给对象的属性\" level=\"2\">将参数赋值给对象的属性</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 控制器向视图传递参数\" level=\"1\">SpringMVC3 控制器向视图传递参数</a><ul><li><a class=\"toc-level-2\" href=\"#使用 ModelAndView 类实现\" level=\"2\">使用 ModelAndView 类实现</a><ul><li><a class=\"toc-level-3\" href=\"#传入普通类型参数\" level=\"3\">传入普通类型参数</a></li><li><a class=\"toc-level-3\" href=\"#传入Map类型的参数\" level=\"3\">传入Map类型的参数</a></li><li><a class=\"toc-level-3\" href=\"#传入对象类型的参数\" level=\"3\">传入对象类型的参数</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#使用 Model 类实现\" level=\"2\">使用 Model 类实现</a><ul><li><a class=\"toc-level-3\" href=\"#传入普通类型参数\" level=\"3\">传入普通类型参数</a></li><li><a class=\"toc-level-3\" href=\"#传入 Map 类型的参数\" level=\"3\">传入 Map 类型的参数</a></li><li><a class=\"toc-level-3\" href=\"#向页面传递对象参数\" level=\"3\">向页面传递对象参数</a></li><li><a class=\"toc-level-3\" href=\"#接受参数并返回到页面\" level=\"3\">接受参数并返回到页面</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#使用 Map 类型实现\" level=\"2\">使用 Map 类型实现</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 整合Spring与MyBatis\" level=\"1\">SpringMVC3 整合Spring与MyBatis</a><ul><li><a class=\"toc-level-2\" href=\"#创建项目\" level=\"2\">创建项目</a></li><li><a class=\"toc-level-2\" href=\"#配置SSM\" level=\"2\">配置SSM</a></li><li><a class=\"toc-level-2\" href=\"#编写POJO类\" level=\"2\">编写POJO类</a></li><li><a class=\"toc-level-2\" href=\"#编写数据库操作\" level=\"2\">编写数据库操作</a></li><li><a class=\"toc-level-2\" href=\"#编写业务层\" level=\"2\">编写业务层</a></li><li><a class=\"toc-level-2\" href=\"#编写视图层\" level=\"2\">编写视图层</a></li><li><a class=\"toc-level-2\" href=\"#编写控制器\" level=\"2\">编写控制器</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 转发与重定向\" level=\"1\">SpringMVC3 转发与重定向</a><ul><li><a class=\"toc-level-2\" href=\"#转发\" level=\"2\">转发</a></li><li><a class=\"toc-level-2\" href=\"#重定向\" level=\"2\">重定向</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 Session与Reuqrest对象\" level=\"1\">SpringMVC3 Session与Reuqrest对象</a><ul><li><a class=\"toc-level-2\" href=\"#使用 session 对象\" level=\"2\">使用 session 对象</a></li><li><a class=\"toc-level-2\" href=\"#使用 request 对象\" level=\"2\">使用 request 对象</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 加载静态资源\" level=\"1\">SpringMVC3 加载静态资源</a></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 异常处理\" level=\"1\">SpringMVC3 异常处理</a><ul><li><a class=\"toc-level-2\" href=\"#局部异常处理\" level=\"2\">局部异常处理</a></li><li><a class=\"toc-level-2\" href=\"#全局异常处理\" level=\"2\">全局异常处理</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 中文乱码问题\" level=\"1\">SpringMVC3 中文乱码问题</a></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 表单标签\" level=\"1\">SpringMVC3 表单标签</a><ul><li><a class=\"toc-level-2\" href=\"#声明 taglib 指令\" level=\"2\">声明 taglib 指令</a></li><li><a class=\"toc-level-2\" href=\"#form 标签\" level=\"2\">form 标签</a></li><li><a class=\"toc-level-2\" href=\"#常用表单标签\" level=\"2\">常用表单标签</a></li><li><a class=\"toc-level-2\" href=\"#常用属性\" level=\"2\">常用属性</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 JSR303校验框架\" level=\"1\">SpringMVC3 JSR303校验框架</a><ul><li><a class=\"toc-level-2\" href=\"#依赖的JAR文件\" level=\"2\">依赖的JAR文件</a></li><li><a class=\"toc-level-2\" href=\"#JSR 303 约束\" level=\"2\">JSR 303 约束</a></li><li><a class=\"toc-level-2\" href=\"#JSR 303 应用\" level=\"2\">JSR 303 应用</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 REST风格的URL\" level=\"1\">SpringMVC3 REST风格的URL</a></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 文件上传\" level=\"1\">SpringMVC3 文件上传</a><ul><li><a class=\"toc-level-2\" href=\"#依赖的JAR文件\" level=\"2\">依赖的JAR文件</a></li><li><a class=\"toc-level-2\" href=\"#单文件上传\" level=\"2\">单文件上传</a></li><li><a class=\"toc-level-2\" href=\"#多文件上传\" level=\"2\">多文件上传</a></li><li><a class=\"toc-level-2\" href=\"#前后端分离实现文件上传\" level=\"2\">前后端分离实现文件上传</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 响应JSON数据\" level=\"1\">SpringMVC3 响应JSON数据</a><ul><li><a class=\"toc-level-2\" href=\"#依赖的JAR文件\" level=\"2\">依赖的JAR文件</a></li><li><a class=\"toc-level-2\" href=\"#返回JSON数据\" level=\"2\">返回JSON数据</a></li><li><a class=\"toc-level-2\" href=\"#中文乱码解决\" level=\"2\">中文乱码解决</a><ul><li><a class=\"toc-level-3\" href=\"#使用注解解决\" level=\"3\">使用注解解决</a></li><li><a class=\"toc-level-3\" href=\"#使用StringHttpMessageConverter类解决\" level=\"3\">使用StringHttpMessageConverter类解决</a></li><li><a class=\"toc-level-3\" href=\"#使用FastJsonHttpMessageConverter类解决\" level=\"3\">使用FastJsonHttpMessageConverter类解决</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#JSON请求时406错误\" level=\"2\">JSON请求时406错误</a></li><li><a class=\"toc-level-2\" href=\"#日期格式问题\" level=\"2\">日期格式问题</a><ul><li><a class=\"toc-level-3\" href=\"#注解方式解决\" level=\"3\">注解方式解决</a></li><li><a class=\"toc-level-3\" href=\"#配置文件方式解决\" level=\"3\">配置文件方式解决</a></li><li><a class=\"toc-level-3\" href=\"#混合模式\" level=\"3\">混合模式</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 多视图解析器\" level=\"1\">SpringMVC3 多视图解析器</a><ul><li><a class=\"toc-level-2\" href=\"#配置XML文件\" level=\"2\">配置XML文件</a></li><li><a class=\"toc-level-2\" href=\"#编写控制器\" level=\"2\">编写控制器</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 自定义转换器\" level=\"1\">SpringMVC3 自定义转换器</a><ul><li><a class=\"toc-level-2\" href=\"#创建自定义转换器\" level=\"2\">创建自定义转换器</a></li><li><a class=\"toc-level-2\" href=\"#配置自定义转换器\" level=\"2\">配置自定义转换器</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 自定义编辑器\" level=\"1\">SpringMVC3 自定义编辑器</a><ul><li><a class=\"toc-level-2\" href=\"#创建自定义编辑器\" level=\"2\">创建自定义编辑器</a></li><li><a class=\"toc-level-2\" href=\"#使用自定义编辑器\" level=\"2\">使用自定义编辑器</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 自定义拦截器\" level=\"1\">SpringMVC3 自定义拦截器</a><ul><li><a class=\"toc-level-2\" href=\"#创建自定义拦截器\" level=\"2\">创建自定义拦截器</a></li><li><a class=\"toc-level-2\" href=\"#配置自定义拦截器\" level=\"2\">配置自定义拦截器</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 邮箱发送\" level=\"1\">SpringMVC3 邮箱发送</a><ul><li><a class=\"toc-level-2\" href=\"#添加依赖\" level=\"2\">添加依赖</a></li><li><a class=\"toc-level-2\" href=\"#创建配置文件\" level=\"2\">创建配置文件</a></li><li><a class=\"toc-level-2\" href=\"#创建业务层代码\" level=\"2\">创建业务层代码</a></li><li><a class=\"toc-level-2\" href=\"#创建控制器层代码\" level=\"2\">创建控制器层代码</a></li><li><a class=\"toc-level-2\" href=\"#测试\" level=\"2\">测试</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC4 集成Swagger\" level=\"1\">SpringMVC4 集成Swagger</a><ul><li><a class=\"toc-level-2\" href=\"#Swagger简介\" level=\"2\">Swagger简介</a></li><li><a class=\"toc-level-2\" href=\"#环境准备\" level=\"2\">环境准备</a></li><li><a class=\"toc-level-2\" href=\"#集成配置步骤\" level=\"2\">集成配置步骤</a></li><li><a class=\"toc-level-2\" href=\"#Swagger 帮助手册\" level=\"2\">Swagger 帮助手册</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC4 JSON日期格式化\" level=\"1\">SpringMVC4 JSON日期格式化</a><ul></ul></li></ul>', '2021-06-04 09:28:30', 1, 456, 4, NULL);
INSERT INTO `article` VALUES (12, '测试标题1', '<p>测试内容</p><figure class=\"image\"><img src=\"/upload/2ccff36728e6c4abe2b55f68deb44644.png\"></figure>', '2021-06-04 09:28:29', 0, 0, 1, '/upload/30d27b7f1422247c74d1024fb7f01d57.png');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '类目名称',
  `index` int(11) NOT NULL DEFAULT 0 COMMENT '排序，值越大越靠前',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '文章类目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'WEB前端', 3);
INSERT INTO `category` VALUES (2, 'PHP', 2);
INSERT INTO `category` VALUES (3, 'NodeJS', 1);
INSERT INTO `category` VALUES (4, 'Java', 0);
INSERT INTO `category` VALUES (6, '测试类目2', 5);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `handle` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '操作内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '操作时间',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '来源IP',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (1, '登录', '2020-02-27 11:22:46', '114.235.246.154');
INSERT INTO `log` VALUES (2, '添加类目', '2020-02-06 16:11:50', '114.235.246.154');
INSERT INTO `log` VALUES (3, '添加博文', '2020-02-06 16:12:00', '114.235.246.154');
INSERT INTO `log` VALUES (4, '添加博文', '2020-02-27 11:22:21', '114.235.246.154');
INSERT INTO `log` VALUES (5, '登录', '2020-02-27 11:23:10', '49.81.173.95');
INSERT INTO `log` VALUES (6, '编辑博文', '2020-02-27 11:23:29', '49.81.173.95');
INSERT INTO `log` VALUES (7, '添加类目', '2020-02-27 11:23:47', '49.81.173.95');
INSERT INTO `log` VALUES (8, '添加博文', '2020-02-27 11:24:02', '49.81.173.95');
INSERT INTO `log` VALUES (9, '登录', '2020-03-04 01:00:04', '127.0.0.1');
INSERT INTO `log` VALUES (10, '登录', '2020-03-04 01:18:27', '127.0.0.1');
INSERT INTO `log` VALUES (11, '登录', '2020-03-04 01:25:39', '127.0.0.1');
INSERT INTO `log` VALUES (12, '登录', '2021-06-04 09:27:43', NULL);
INSERT INTO `log` VALUES (13, '登录', '2021-06-04 09:27:49', NULL);
INSERT INTO `log` VALUES (14, '登录', '2021-06-04 09:29:44', NULL);

-- ----------------------------
-- Table structure for pv
-- ----------------------------
DROP TABLE IF EXISTS `pv`;
CREATE TABLE `pv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `time` date NOT NULL COMMENT '日期',
  `hits` int(11) NOT NULL DEFAULT 0 COMMENT '点击量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 638 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '访问记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pv
-- ----------------------------
INSERT INTO `pv` VALUES (1, '2018-06-01', 2);
INSERT INTO `pv` VALUES (2, '2018-06-02', 5);
INSERT INTO `pv` VALUES (3, '2018-06-03', 7);
INSERT INTO `pv` VALUES (4, '2018-06-04', 11);
INSERT INTO `pv` VALUES (5, '2018-06-05', 3);
INSERT INTO `pv` VALUES (6, '2018-06-06', 8);
INSERT INTO `pv` VALUES (7, '2018-06-07', 12);
INSERT INTO `pv` VALUES (8, '2018-06-08', 9);
INSERT INTO `pv` VALUES (9, '2018-06-09', 7);
INSERT INTO `pv` VALUES (10, '2018-06-10', 12);
INSERT INTO `pv` VALUES (11, '2018-06-11', 5);
INSERT INTO `pv` VALUES (12, '2018-06-12', 3);
INSERT INTO `pv` VALUES (13, '2018-06-13', 17);
INSERT INTO `pv` VALUES (14, '2018-06-14', 47);
INSERT INTO `pv` VALUES (15, '2018-06-15', 17);
INSERT INTO `pv` VALUES (16, '2018-06-16', 9);
INSERT INTO `pv` VALUES (17, '2018-06-17', 13);
INSERT INTO `pv` VALUES (18, '2018-06-18', 10);
INSERT INTO `pv` VALUES (19, '2018-06-19', 12);
INSERT INTO `pv` VALUES (20, '2018-06-20', 14);
INSERT INTO `pv` VALUES (21, '2018-06-21', 12);
INSERT INTO `pv` VALUES (22, '2018-06-22', 20);
INSERT INTO `pv` VALUES (23, '2018-06-23', 16);
INSERT INTO `pv` VALUES (24, '2018-06-24', 19);
INSERT INTO `pv` VALUES (25, '2018-06-25', 22);
INSERT INTO `pv` VALUES (26, '2018-06-26', 19);
INSERT INTO `pv` VALUES (27, '2018-06-27', 17);
INSERT INTO `pv` VALUES (28, '2018-06-28', 20);
INSERT INTO `pv` VALUES (29, '2018-06-29', 17);
INSERT INTO `pv` VALUES (30, '2018-06-30', 16);
INSERT INTO `pv` VALUES (31, '2018-07-01', 21);
INSERT INTO `pv` VALUES (32, '2018-07-02', 46);
INSERT INTO `pv` VALUES (33, '2018-07-03', 76);
INSERT INTO `pv` VALUES (34, '2018-07-04', 74);
INSERT INTO `pv` VALUES (35, '2018-07-05', 70);
INSERT INTO `pv` VALUES (36, '2018-07-06', 68);
INSERT INTO `pv` VALUES (37, '2018-07-07', 44);
INSERT INTO `pv` VALUES (38, '2018-07-08', 40);
INSERT INTO `pv` VALUES (39, '2018-07-09', 58);
INSERT INTO `pv` VALUES (40, '2018-07-10', 96);
INSERT INTO `pv` VALUES (41, '2018-07-11', 118);
INSERT INTO `pv` VALUES (42, '2018-07-12', 116);
INSERT INTO `pv` VALUES (43, '2018-07-13', 122);
INSERT INTO `pv` VALUES (44, '2018-07-14', 85);
INSERT INTO `pv` VALUES (45, '2018-07-15', 71);
INSERT INTO `pv` VALUES (46, '2018-07-16', 128);
INSERT INTO `pv` VALUES (47, '2018-07-17', 63);
INSERT INTO `pv` VALUES (48, '2018-07-18', 98);
INSERT INTO `pv` VALUES (49, '2018-07-19', 114);
INSERT INTO `pv` VALUES (50, '2018-07-20', 134);
INSERT INTO `pv` VALUES (51, '2018-07-21', 89);
INSERT INTO `pv` VALUES (52, '2018-07-22', 95);
INSERT INTO `pv` VALUES (53, '2018-07-23', 132);
INSERT INTO `pv` VALUES (54, '2018-07-24', 107);
INSERT INTO `pv` VALUES (55, '2018-07-25', 98);
INSERT INTO `pv` VALUES (56, '2018-07-26', 98);
INSERT INTO `pv` VALUES (57, '2018-07-27', 100);
INSERT INTO `pv` VALUES (58, '2018-07-28', 86);
INSERT INTO `pv` VALUES (59, '2018-07-29', 75);
INSERT INTO `pv` VALUES (60, '2018-07-30', 94);
INSERT INTO `pv` VALUES (61, '2018-07-31', 106);
INSERT INTO `pv` VALUES (62, '2018-08-01', 98);
INSERT INTO `pv` VALUES (63, '2018-08-02', 103);
INSERT INTO `pv` VALUES (64, '2018-08-03', 101);
INSERT INTO `pv` VALUES (65, '2018-08-04', 78);
INSERT INTO `pv` VALUES (66, '2018-08-05', 82);
INSERT INTO `pv` VALUES (67, '2018-08-06', 26);
INSERT INTO `pv` VALUES (68, '2018-08-07', 8);
INSERT INTO `pv` VALUES (69, '2018-08-08', 10);
INSERT INTO `pv` VALUES (70, '2018-08-09', 9);
INSERT INTO `pv` VALUES (71, '2018-08-10', 11);
INSERT INTO `pv` VALUES (72, '2018-08-11', 21);
INSERT INTO `pv` VALUES (73, '2018-08-12', 39);
INSERT INTO `pv` VALUES (74, '2018-08-13', 34);
INSERT INTO `pv` VALUES (75, '2018-08-14', 29);
INSERT INTO `pv` VALUES (76, '2018-08-15', 16);
INSERT INTO `pv` VALUES (77, '2018-08-16', 18);
INSERT INTO `pv` VALUES (78, '2018-08-17', 16);
INSERT INTO `pv` VALUES (79, '2018-08-18', 14);
INSERT INTO `pv` VALUES (80, '2018-08-19', 13);
INSERT INTO `pv` VALUES (81, '2018-08-20', 24);
INSERT INTO `pv` VALUES (82, '2018-08-21', 33);
INSERT INTO `pv` VALUES (83, '2018-08-22', 20);
INSERT INTO `pv` VALUES (84, '2018-08-23', 25);
INSERT INTO `pv` VALUES (85, '2018-08-24', 17);
INSERT INTO `pv` VALUES (86, '2018-08-25', 21);
INSERT INTO `pv` VALUES (87, '2018-08-26', 19);
INSERT INTO `pv` VALUES (88, '2018-08-27', 21);
INSERT INTO `pv` VALUES (89, '2018-08-28', 14);
INSERT INTO `pv` VALUES (90, '2018-08-29', 13);
INSERT INTO `pv` VALUES (91, '2018-08-30', 9);
INSERT INTO `pv` VALUES (92, '2018-08-31', 13);
INSERT INTO `pv` VALUES (93, '2018-09-01', 19);
INSERT INTO `pv` VALUES (94, '2018-09-02', 8);
INSERT INTO `pv` VALUES (95, '2018-09-03', 18);
INSERT INTO `pv` VALUES (96, '2018-09-04', 17);
INSERT INTO `pv` VALUES (97, '2018-09-05', 23);
INSERT INTO `pv` VALUES (98, '2018-09-06', 30);
INSERT INTO `pv` VALUES (99, '2018-09-07', 20);
INSERT INTO `pv` VALUES (100, '2018-09-08', 15);
INSERT INTO `pv` VALUES (101, '2018-09-09', 27);
INSERT INTO `pv` VALUES (102, '2018-09-10', 23);
INSERT INTO `pv` VALUES (103, '2018-09-11', 18);
INSERT INTO `pv` VALUES (104, '2018-09-12', 35);
INSERT INTO `pv` VALUES (105, '2018-09-13', 19);
INSERT INTO `pv` VALUES (106, '2018-09-14', 10);
INSERT INTO `pv` VALUES (107, '2018-09-15', 16);
INSERT INTO `pv` VALUES (108, '2018-09-16', 19);
INSERT INTO `pv` VALUES (109, '2018-09-17', 17);
INSERT INTO `pv` VALUES (110, '2018-09-18', 38);
INSERT INTO `pv` VALUES (111, '2018-09-19', 29);
INSERT INTO `pv` VALUES (112, '2018-09-20', 49);
INSERT INTO `pv` VALUES (113, '2018-09-21', 13);
INSERT INTO `pv` VALUES (114, '2018-09-22', 40);
INSERT INTO `pv` VALUES (115, '2018-09-23', 12);
INSERT INTO `pv` VALUES (116, '2018-09-24', 11);
INSERT INTO `pv` VALUES (117, '2018-09-25', 61);
INSERT INTO `pv` VALUES (118, '2018-09-26', 22);
INSERT INTO `pv` VALUES (119, '2018-09-27', 51);
INSERT INTO `pv` VALUES (120, '2018-09-28', 71);
INSERT INTO `pv` VALUES (121, '2018-09-29', 110);
INSERT INTO `pv` VALUES (122, '2018-09-30', 36);
INSERT INTO `pv` VALUES (123, '2018-10-01', 98);
INSERT INTO `pv` VALUES (124, '2018-10-02', 60);
INSERT INTO `pv` VALUES (125, '2018-10-03', 48);
INSERT INTO `pv` VALUES (126, '2018-10-04', 48);
INSERT INTO `pv` VALUES (127, '2018-10-05', 54);
INSERT INTO `pv` VALUES (128, '2018-10-06', 46);
INSERT INTO `pv` VALUES (129, '2018-10-07', 40);
INSERT INTO `pv` VALUES (130, '2018-10-08', 53);
INSERT INTO `pv` VALUES (131, '2018-10-09', 14);
INSERT INTO `pv` VALUES (132, '2018-10-10', 15);
INSERT INTO `pv` VALUES (133, '2018-10-11', 7);
INSERT INTO `pv` VALUES (134, '2018-10-12', 19);
INSERT INTO `pv` VALUES (135, '2018-10-13', 125);
INSERT INTO `pv` VALUES (136, '2018-10-14', 48);
INSERT INTO `pv` VALUES (137, '2018-10-15', 39);
INSERT INTO `pv` VALUES (138, '2018-10-16', 56);
INSERT INTO `pv` VALUES (139, '2018-10-17', 30);
INSERT INTO `pv` VALUES (140, '2018-10-18', 101);
INSERT INTO `pv` VALUES (141, '2018-10-19', 18);
INSERT INTO `pv` VALUES (142, '2018-10-20', 34);
INSERT INTO `pv` VALUES (143, '2018-10-21', 30);
INSERT INTO `pv` VALUES (144, '2018-10-22', 18);
INSERT INTO `pv` VALUES (145, '2018-10-23', 35);
INSERT INTO `pv` VALUES (146, '2018-10-24', 27);
INSERT INTO `pv` VALUES (147, '2018-10-25', 22);
INSERT INTO `pv` VALUES (148, '2018-10-26', 31);
INSERT INTO `pv` VALUES (149, '2018-10-27', 38);
INSERT INTO `pv` VALUES (150, '2018-10-28', 35);
INSERT INTO `pv` VALUES (151, '2018-10-29', 48);
INSERT INTO `pv` VALUES (152, '2018-10-30', 53);
INSERT INTO `pv` VALUES (153, '2018-10-31', 25);
INSERT INTO `pv` VALUES (154, '2018-11-01', 24);
INSERT INTO `pv` VALUES (155, '2018-11-02', 19);
INSERT INTO `pv` VALUES (156, '2018-11-03', 34);
INSERT INTO `pv` VALUES (157, '2018-11-04', 11);
INSERT INTO `pv` VALUES (158, '2018-11-05', 22);
INSERT INTO `pv` VALUES (159, '2018-11-06', 45);
INSERT INTO `pv` VALUES (160, '2018-11-07', 48);
INSERT INTO `pv` VALUES (161, '2018-11-08', 38);
INSERT INTO `pv` VALUES (162, '2018-11-09', 20);
INSERT INTO `pv` VALUES (163, '2018-11-10', 60);
INSERT INTO `pv` VALUES (164, '2018-11-11', 17);
INSERT INTO `pv` VALUES (165, '2018-11-12', 14);
INSERT INTO `pv` VALUES (166, '2018-11-13', 38);
INSERT INTO `pv` VALUES (167, '2018-11-14', 15);
INSERT INTO `pv` VALUES (168, '2018-11-15', 24);
INSERT INTO `pv` VALUES (169, '2018-11-16', 29);
INSERT INTO `pv` VALUES (170, '2018-11-17', 12);
INSERT INTO `pv` VALUES (171, '2018-11-18', 12);
INSERT INTO `pv` VALUES (172, '2018-11-19', 16);
INSERT INTO `pv` VALUES (173, '2018-11-20', 24);
INSERT INTO `pv` VALUES (174, '2018-11-21', 12);
INSERT INTO `pv` VALUES (175, '2018-11-22', 20);
INSERT INTO `pv` VALUES (176, '2018-11-23', 11);
INSERT INTO `pv` VALUES (177, '2018-11-24', 68);
INSERT INTO `pv` VALUES (178, '2018-11-25', 28);
INSERT INTO `pv` VALUES (179, '2018-11-26', 26);
INSERT INTO `pv` VALUES (180, '2018-11-27', 43);
INSERT INTO `pv` VALUES (181, '2018-11-28', 25);
INSERT INTO `pv` VALUES (182, '2018-11-29', 30);
INSERT INTO `pv` VALUES (183, '2018-11-30', 50);
INSERT INTO `pv` VALUES (184, '2018-12-01', 56);
INSERT INTO `pv` VALUES (185, '2018-12-02', 37);
INSERT INTO `pv` VALUES (186, '2018-12-03', 37);
INSERT INTO `pv` VALUES (187, '2018-12-04', 45);
INSERT INTO `pv` VALUES (188, '2018-12-05', 93);
INSERT INTO `pv` VALUES (189, '2018-12-06', 91);
INSERT INTO `pv` VALUES (190, '2018-12-07', 30);
INSERT INTO `pv` VALUES (191, '2018-12-08', 30);
INSERT INTO `pv` VALUES (192, '2018-12-09', 35);
INSERT INTO `pv` VALUES (193, '2018-12-10', 24);
INSERT INTO `pv` VALUES (194, '2018-12-11', 31);
INSERT INTO `pv` VALUES (195, '2018-12-12', 51);
INSERT INTO `pv` VALUES (196, '2018-12-13', 30);
INSERT INTO `pv` VALUES (197, '2018-12-14', 10);
INSERT INTO `pv` VALUES (198, '2018-12-15', 20);
INSERT INTO `pv` VALUES (199, '2018-12-16', 12);
INSERT INTO `pv` VALUES (200, '2018-12-17', 13);
INSERT INTO `pv` VALUES (201, '2018-12-18', 21);
INSERT INTO `pv` VALUES (202, '2018-12-19', 17);
INSERT INTO `pv` VALUES (203, '2018-12-20', 41);
INSERT INTO `pv` VALUES (204, '2018-12-21', 25);
INSERT INTO `pv` VALUES (205, '2018-12-22', 23);
INSERT INTO `pv` VALUES (206, '2018-12-23', 12);
INSERT INTO `pv` VALUES (207, '2018-12-24', 49);
INSERT INTO `pv` VALUES (208, '2018-12-25', 41);
INSERT INTO `pv` VALUES (209, '2018-12-26', 39);
INSERT INTO `pv` VALUES (210, '2018-12-27', 25);
INSERT INTO `pv` VALUES (211, '2018-12-28', 31);
INSERT INTO `pv` VALUES (212, '2018-12-29', 27);
INSERT INTO `pv` VALUES (213, '2018-12-30', 30);
INSERT INTO `pv` VALUES (214, '2018-12-31', 20);
INSERT INTO `pv` VALUES (215, '2019-01-01', 16);
INSERT INTO `pv` VALUES (216, '2019-01-02', 43);
INSERT INTO `pv` VALUES (217, '2019-01-03', 29);
INSERT INTO `pv` VALUES (218, '2019-01-04', 36);
INSERT INTO `pv` VALUES (219, '2019-01-05', 25);
INSERT INTO `pv` VALUES (220, '2019-01-06', 29);
INSERT INTO `pv` VALUES (221, '2019-01-07', 49);
INSERT INTO `pv` VALUES (222, '2019-01-08', 32);
INSERT INTO `pv` VALUES (223, '2019-01-09', 29);
INSERT INTO `pv` VALUES (224, '2019-01-10', 40);
INSERT INTO `pv` VALUES (225, '2019-01-11', 25);
INSERT INTO `pv` VALUES (226, '2019-01-12', 37);
INSERT INTO `pv` VALUES (227, '2019-01-13', 43);
INSERT INTO `pv` VALUES (228, '2019-01-14', 19);
INSERT INTO `pv` VALUES (229, '2019-01-15', 17);
INSERT INTO `pv` VALUES (230, '2019-01-16', 40);
INSERT INTO `pv` VALUES (231, '2019-01-17', 53);
INSERT INTO `pv` VALUES (232, '2019-01-18', 17);
INSERT INTO `pv` VALUES (233, '2019-01-19', 73);
INSERT INTO `pv` VALUES (234, '2019-01-20', 25);
INSERT INTO `pv` VALUES (235, '2019-01-21', 59);
INSERT INTO `pv` VALUES (236, '2019-01-22', 89);
INSERT INTO `pv` VALUES (237, '2019-01-23', 47);
INSERT INTO `pv` VALUES (238, '2019-01-24', 81);
INSERT INTO `pv` VALUES (239, '2019-01-25', 56);
INSERT INTO `pv` VALUES (240, '2019-01-26', 31);
INSERT INTO `pv` VALUES (241, '2019-01-27', 63);
INSERT INTO `pv` VALUES (242, '2019-01-28', 44);
INSERT INTO `pv` VALUES (243, '2019-01-29', 30);
INSERT INTO `pv` VALUES (244, '2019-01-30', 27);
INSERT INTO `pv` VALUES (245, '2019-01-31', 29);
INSERT INTO `pv` VALUES (246, '2019-02-01', 64);
INSERT INTO `pv` VALUES (247, '2019-02-02', 14);
INSERT INTO `pv` VALUES (248, '2019-02-03', 13);
INSERT INTO `pv` VALUES (249, '2019-02-04', 21);
INSERT INTO `pv` VALUES (250, '2019-02-05', 50);
INSERT INTO `pv` VALUES (251, '2019-02-06', 14);
INSERT INTO `pv` VALUES (252, '2019-02-07', 42);
INSERT INTO `pv` VALUES (253, '2019-02-08', 25);
INSERT INTO `pv` VALUES (254, '2019-02-09', 22);
INSERT INTO `pv` VALUES (255, '2019-02-10', 25);
INSERT INTO `pv` VALUES (256, '2019-02-11', 44);
INSERT INTO `pv` VALUES (257, '2019-02-12', 32);
INSERT INTO `pv` VALUES (258, '2019-02-13', 42);
INSERT INTO `pv` VALUES (259, '2019-02-14', 36);
INSERT INTO `pv` VALUES (260, '2019-02-15', 34);
INSERT INTO `pv` VALUES (261, '2019-02-16', 82);
INSERT INTO `pv` VALUES (262, '2019-02-17', 35);
INSERT INTO `pv` VALUES (263, '2019-02-18', 47);
INSERT INTO `pv` VALUES (264, '2019-02-19', 38);
INSERT INTO `pv` VALUES (265, '2019-02-20', 39);
INSERT INTO `pv` VALUES (266, '2019-02-21', 24);
INSERT INTO `pv` VALUES (267, '2019-02-22', 27);
INSERT INTO `pv` VALUES (268, '2019-02-23', 28);
INSERT INTO `pv` VALUES (269, '2019-02-24', 7);
INSERT INTO `pv` VALUES (270, '2019-02-25', 21);
INSERT INTO `pv` VALUES (271, '2019-02-26', 58);
INSERT INTO `pv` VALUES (272, '2019-02-27', 38);
INSERT INTO `pv` VALUES (273, '2019-02-28', 78);
INSERT INTO `pv` VALUES (274, '2019-03-01', 27);
INSERT INTO `pv` VALUES (275, '2019-03-02', 30);
INSERT INTO `pv` VALUES (276, '2019-03-03', 40);
INSERT INTO `pv` VALUES (277, '2019-03-04', 60);
INSERT INTO `pv` VALUES (278, '2019-03-05', 88);
INSERT INTO `pv` VALUES (279, '2019-03-06', 85);
INSERT INTO `pv` VALUES (280, '2019-03-07', 77);
INSERT INTO `pv` VALUES (281, '2019-03-08', 87);
INSERT INTO `pv` VALUES (282, '2019-03-09', 69);
INSERT INTO `pv` VALUES (283, '2019-03-10', 62);
INSERT INTO `pv` VALUES (284, '2019-03-11', 52);
INSERT INTO `pv` VALUES (285, '2019-03-12', 54);
INSERT INTO `pv` VALUES (286, '2019-03-13', 66);
INSERT INTO `pv` VALUES (287, '2019-03-14', 42);
INSERT INTO `pv` VALUES (288, '2019-03-15', 73);
INSERT INTO `pv` VALUES (289, '2019-03-16', 54);
INSERT INTO `pv` VALUES (290, '2019-03-17', 57);
INSERT INTO `pv` VALUES (291, '2019-03-18', 80);
INSERT INTO `pv` VALUES (292, '2019-03-19', 91);
INSERT INTO `pv` VALUES (293, '2019-03-20', 94);
INSERT INTO `pv` VALUES (294, '2019-03-21', 65);
INSERT INTO `pv` VALUES (295, '2019-03-22', 48);
INSERT INTO `pv` VALUES (296, '2019-03-23', 27);
INSERT INTO `pv` VALUES (297, '2019-03-24', 29);
INSERT INTO `pv` VALUES (298, '2019-03-25', 29);
INSERT INTO `pv` VALUES (299, '2019-03-26', 23);
INSERT INTO `pv` VALUES (300, '2019-03-27', 27);
INSERT INTO `pv` VALUES (301, '2019-03-28', 21);
INSERT INTO `pv` VALUES (302, '2019-03-29', 49);
INSERT INTO `pv` VALUES (303, '2019-03-30', 44);
INSERT INTO `pv` VALUES (304, '2019-03-31', 12);
INSERT INTO `pv` VALUES (305, '2019-04-01', 76);
INSERT INTO `pv` VALUES (306, '2019-04-02', 94);
INSERT INTO `pv` VALUES (307, '2019-04-03', 42);
INSERT INTO `pv` VALUES (308, '2019-04-04', 33);
INSERT INTO `pv` VALUES (309, '2019-04-05', 16);
INSERT INTO `pv` VALUES (310, '2019-04-06', 27);
INSERT INTO `pv` VALUES (311, '2019-04-07', 11);
INSERT INTO `pv` VALUES (312, '2019-04-08', 73);
INSERT INTO `pv` VALUES (313, '2019-04-09', 34);
INSERT INTO `pv` VALUES (314, '2019-04-10', 21);
INSERT INTO `pv` VALUES (315, '2019-04-11', 21);
INSERT INTO `pv` VALUES (316, '2019-04-12', 47);
INSERT INTO `pv` VALUES (317, '2019-04-13', 25);
INSERT INTO `pv` VALUES (318, '2019-04-14', 19);
INSERT INTO `pv` VALUES (319, '2019-04-15', 30);
INSERT INTO `pv` VALUES (320, '2019-04-16', 40);
INSERT INTO `pv` VALUES (321, '2019-04-17', 42);
INSERT INTO `pv` VALUES (322, '2019-04-18', 48);
INSERT INTO `pv` VALUES (323, '2019-04-19', 36);
INSERT INTO `pv` VALUES (324, '2019-04-20', 12);
INSERT INTO `pv` VALUES (325, '2019-04-21', 11);
INSERT INTO `pv` VALUES (326, '2019-04-22', 55);
INSERT INTO `pv` VALUES (327, '2019-04-23', 30);
INSERT INTO `pv` VALUES (328, '2019-04-24', 41);
INSERT INTO `pv` VALUES (329, '2019-04-25', 21);
INSERT INTO `pv` VALUES (330, '2019-04-26', 21);
INSERT INTO `pv` VALUES (331, '2019-04-27', 20);
INSERT INTO `pv` VALUES (332, '2019-04-28', 12);
INSERT INTO `pv` VALUES (333, '2019-04-29', 21);
INSERT INTO `pv` VALUES (334, '2019-04-30', 28);
INSERT INTO `pv` VALUES (335, '2019-05-01', 47);
INSERT INTO `pv` VALUES (336, '2019-05-02', 19);
INSERT INTO `pv` VALUES (337, '2019-05-03', 10);
INSERT INTO `pv` VALUES (338, '2019-05-04', 38);
INSERT INTO `pv` VALUES (339, '2019-05-05', 25);
INSERT INTO `pv` VALUES (340, '2019-05-06', 36);
INSERT INTO `pv` VALUES (341, '2019-05-07', 134);
INSERT INTO `pv` VALUES (342, '2019-05-08', 111);
INSERT INTO `pv` VALUES (343, '2019-05-09', 70);
INSERT INTO `pv` VALUES (344, '2019-05-10', 71);
INSERT INTO `pv` VALUES (345, '2019-05-11', 82);
INSERT INTO `pv` VALUES (346, '2019-05-12', 72);
INSERT INTO `pv` VALUES (347, '2019-05-13', 0);
INSERT INTO `pv` VALUES (348, '2019-05-14', 0);
INSERT INTO `pv` VALUES (349, '2019-05-15', 0);
INSERT INTO `pv` VALUES (350, '2019-05-16', 0);
INSERT INTO `pv` VALUES (351, '2019-05-17', 0);
INSERT INTO `pv` VALUES (352, '2019-05-18', 0);
INSERT INTO `pv` VALUES (353, '2019-05-19', 0);
INSERT INTO `pv` VALUES (354, '2019-05-20', 0);
INSERT INTO `pv` VALUES (355, '2019-05-21', 0);
INSERT INTO `pv` VALUES (356, '2019-05-22', 0);
INSERT INTO `pv` VALUES (357, '2019-05-23', 0);
INSERT INTO `pv` VALUES (358, '2019-05-24', 0);
INSERT INTO `pv` VALUES (359, '2019-05-25', 0);
INSERT INTO `pv` VALUES (360, '2019-05-26', 0);
INSERT INTO `pv` VALUES (361, '2019-05-27', 0);
INSERT INTO `pv` VALUES (362, '2019-05-28', 85);
INSERT INTO `pv` VALUES (363, '2019-05-29', 47);
INSERT INTO `pv` VALUES (364, '2019-05-30', 65);
INSERT INTO `pv` VALUES (365, '2019-05-31', 50);
INSERT INTO `pv` VALUES (366, '2019-06-01', 42);
INSERT INTO `pv` VALUES (367, '2019-06-02', 57);
INSERT INTO `pv` VALUES (368, '2019-06-03', 27);
INSERT INTO `pv` VALUES (369, '2019-06-04', 132);
INSERT INTO `pv` VALUES (370, '2019-06-05', 158);
INSERT INTO `pv` VALUES (371, '2019-06-06', 103);
INSERT INTO `pv` VALUES (372, '2019-06-07', 46);
INSERT INTO `pv` VALUES (373, '2019-06-08', 91);
INSERT INTO `pv` VALUES (374, '2019-06-09', 65);
INSERT INTO `pv` VALUES (375, '2019-06-10', 112);
INSERT INTO `pv` VALUES (376, '2019-06-11', 77);
INSERT INTO `pv` VALUES (377, '2019-06-12', 94);
INSERT INTO `pv` VALUES (378, '2019-06-13', 55);
INSERT INTO `pv` VALUES (379, '2019-06-14', 69);
INSERT INTO `pv` VALUES (380, '2019-06-15', 43);
INSERT INTO `pv` VALUES (381, '2019-06-16', 51);
INSERT INTO `pv` VALUES (382, '2019-06-17', 70);
INSERT INTO `pv` VALUES (383, '2019-06-18', 61);
INSERT INTO `pv` VALUES (384, '2019-06-19', 62);
INSERT INTO `pv` VALUES (385, '2019-06-20', 54);
INSERT INTO `pv` VALUES (386, '2019-06-21', 51);
INSERT INTO `pv` VALUES (387, '2019-06-22', 39);
INSERT INTO `pv` VALUES (388, '2019-06-23', 57);
INSERT INTO `pv` VALUES (389, '2019-06-24', 54);
INSERT INTO `pv` VALUES (390, '2019-06-25', 149);
INSERT INTO `pv` VALUES (391, '2019-06-26', 131);
INSERT INTO `pv` VALUES (392, '2019-06-27', 99);
INSERT INTO `pv` VALUES (393, '2019-06-28', 106);
INSERT INTO `pv` VALUES (394, '2019-06-29', 57);
INSERT INTO `pv` VALUES (395, '2019-06-30', 56);
INSERT INTO `pv` VALUES (396, '2019-07-01', 50);
INSERT INTO `pv` VALUES (397, '2019-07-02', 52);
INSERT INTO `pv` VALUES (398, '2019-07-03', 68);
INSERT INTO `pv` VALUES (399, '2019-07-04', 69);
INSERT INTO `pv` VALUES (400, '2019-07-05', 99);
INSERT INTO `pv` VALUES (401, '2019-07-06', 94);
INSERT INTO `pv` VALUES (402, '2019-07-07', 74);
INSERT INTO `pv` VALUES (403, '2019-07-08', 90);
INSERT INTO `pv` VALUES (404, '2019-07-09', 106);
INSERT INTO `pv` VALUES (405, '2019-07-10', 76);
INSERT INTO `pv` VALUES (406, '2019-07-11', 101);
INSERT INTO `pv` VALUES (407, '2019-07-12', 78);
INSERT INTO `pv` VALUES (408, '2019-07-13', 114);
INSERT INTO `pv` VALUES (409, '2019-07-14', 29);
INSERT INTO `pv` VALUES (410, '2019-07-15', 79);
INSERT INTO `pv` VALUES (411, '2019-07-16', 110);
INSERT INTO `pv` VALUES (412, '2019-07-17', 60);
INSERT INTO `pv` VALUES (413, '2019-07-18', 84);
INSERT INTO `pv` VALUES (414, '2019-07-19', 63);
INSERT INTO `pv` VALUES (415, '2019-07-20', 93);
INSERT INTO `pv` VALUES (416, '2019-07-21', 35);
INSERT INTO `pv` VALUES (417, '2019-07-22', 40);
INSERT INTO `pv` VALUES (418, '2019-07-23', 87);
INSERT INTO `pv` VALUES (419, '2019-07-24', 78);
INSERT INTO `pv` VALUES (420, '2019-07-25', 135);
INSERT INTO `pv` VALUES (421, '2019-07-26', 88);
INSERT INTO `pv` VALUES (422, '2019-07-27', 85);
INSERT INTO `pv` VALUES (423, '2019-07-28', 53);
INSERT INTO `pv` VALUES (424, '2019-07-29', 85);
INSERT INTO `pv` VALUES (425, '2019-07-30', 98);
INSERT INTO `pv` VALUES (426, '2019-07-31', 48);
INSERT INTO `pv` VALUES (427, '2019-08-01', 56);
INSERT INTO `pv` VALUES (428, '2019-08-02', 77);
INSERT INTO `pv` VALUES (429, '2019-08-03', 57);
INSERT INTO `pv` VALUES (430, '2019-08-04', 34);
INSERT INTO `pv` VALUES (431, '2019-08-05', 76);
INSERT INTO `pv` VALUES (432, '2019-08-06', 87);
INSERT INTO `pv` VALUES (433, '2019-08-07', 0);
INSERT INTO `pv` VALUES (434, '2019-08-08', 85);
INSERT INTO `pv` VALUES (435, '2019-08-09', 115);
INSERT INTO `pv` VALUES (436, '2019-08-10', 43);
INSERT INTO `pv` VALUES (437, '2019-08-11', 41);
INSERT INTO `pv` VALUES (438, '2019-08-12', 105);
INSERT INTO `pv` VALUES (439, '2019-08-13', 66);
INSERT INTO `pv` VALUES (440, '2019-08-14', 83);
INSERT INTO `pv` VALUES (441, '2019-08-15', 76);
INSERT INTO `pv` VALUES (442, '2019-08-16', 111);
INSERT INTO `pv` VALUES (443, '2019-08-17', 53);
INSERT INTO `pv` VALUES (444, '2019-08-18', 40);
INSERT INTO `pv` VALUES (445, '2019-08-19', 108);
INSERT INTO `pv` VALUES (446, '2019-08-20', 59);
INSERT INTO `pv` VALUES (447, '2019-08-21', 73);
INSERT INTO `pv` VALUES (448, '2019-08-22', 82);
INSERT INTO `pv` VALUES (449, '2019-08-23', 81);
INSERT INTO `pv` VALUES (450, '2019-08-24', 34);
INSERT INTO `pv` VALUES (451, '2019-08-25', 25);
INSERT INTO `pv` VALUES (452, '2019-08-26', 82);
INSERT INTO `pv` VALUES (453, '2019-08-27', 81);
INSERT INTO `pv` VALUES (454, '2019-08-28', 91);
INSERT INTO `pv` VALUES (455, '2019-08-29', 64);
INSERT INTO `pv` VALUES (456, '2019-08-30', 62);
INSERT INTO `pv` VALUES (457, '2019-08-31', 22);
INSERT INTO `pv` VALUES (458, '2019-09-01', 25);
INSERT INTO `pv` VALUES (459, '2019-09-02', 79);
INSERT INTO `pv` VALUES (460, '2019-09-03', 53);
INSERT INTO `pv` VALUES (461, '2019-09-04', 63);
INSERT INTO `pv` VALUES (462, '2019-09-05', 78);
INSERT INTO `pv` VALUES (463, '2019-09-06', 70);
INSERT INTO `pv` VALUES (464, '2019-09-07', 35);
INSERT INTO `pv` VALUES (465, '2019-09-08', 45);
INSERT INTO `pv` VALUES (466, '2019-09-09', 47);
INSERT INTO `pv` VALUES (467, '2019-09-10', 116);
INSERT INTO `pv` VALUES (468, '2019-09-11', 80);
INSERT INTO `pv` VALUES (469, '2019-09-12', 42);
INSERT INTO `pv` VALUES (470, '2019-09-13', 16);
INSERT INTO `pv` VALUES (471, '2019-09-14', 36);
INSERT INTO `pv` VALUES (472, '2019-09-15', 128);
INSERT INTO `pv` VALUES (473, '2019-09-16', 109);
INSERT INTO `pv` VALUES (474, '2019-09-17', 94);
INSERT INTO `pv` VALUES (475, '2019-09-18', 126);
INSERT INTO `pv` VALUES (476, '2019-09-19', 96);
INSERT INTO `pv` VALUES (477, '2019-09-20', 174);
INSERT INTO `pv` VALUES (478, '2019-09-21', 33);
INSERT INTO `pv` VALUES (479, '2019-09-22', 24);
INSERT INTO `pv` VALUES (480, '2019-09-23', 66);
INSERT INTO `pv` VALUES (481, '2019-09-24', 76);
INSERT INTO `pv` VALUES (482, '2019-09-25', 81);
INSERT INTO `pv` VALUES (483, '2019-09-26', 62);
INSERT INTO `pv` VALUES (484, '2019-09-27', 70);
INSERT INTO `pv` VALUES (485, '2019-09-28', 30);
INSERT INTO `pv` VALUES (486, '2019-09-29', 77);
INSERT INTO `pv` VALUES (487, '2019-09-30', 69);
INSERT INTO `pv` VALUES (488, '2019-10-01', 22);
INSERT INTO `pv` VALUES (489, '2019-10-02', 19);
INSERT INTO `pv` VALUES (490, '2019-10-03', 20);
INSERT INTO `pv` VALUES (491, '2019-10-04', 10);
INSERT INTO `pv` VALUES (492, '2019-10-05', 23);
INSERT INTO `pv` VALUES (493, '2019-10-06', 25);
INSERT INTO `pv` VALUES (494, '2019-10-07', 12);
INSERT INTO `pv` VALUES (495, '2019-10-08', 47);
INSERT INTO `pv` VALUES (496, '2019-10-09', 44);
INSERT INTO `pv` VALUES (497, '2019-10-10', 29);
INSERT INTO `pv` VALUES (498, '2019-10-11', 52);
INSERT INTO `pv` VALUES (499, '2019-10-12', 29);
INSERT INTO `pv` VALUES (500, '2019-10-13', 18);
INSERT INTO `pv` VALUES (501, '2019-10-14', 32);
INSERT INTO `pv` VALUES (502, '2019-10-15', 48);
INSERT INTO `pv` VALUES (503, '2019-10-16', 45);
INSERT INTO `pv` VALUES (504, '2019-10-17', 30);
INSERT INTO `pv` VALUES (505, '2019-10-18', 39);
INSERT INTO `pv` VALUES (506, '2019-10-19', 9);
INSERT INTO `pv` VALUES (507, '2019-10-20', 9);
INSERT INTO `pv` VALUES (508, '2019-10-21', 58);
INSERT INTO `pv` VALUES (509, '2019-10-22', 19);
INSERT INTO `pv` VALUES (510, '2019-10-23', 47);
INSERT INTO `pv` VALUES (511, '2019-10-24', 46);
INSERT INTO `pv` VALUES (512, '2019-10-25', 57);
INSERT INTO `pv` VALUES (513, '2019-10-26', 15);
INSERT INTO `pv` VALUES (514, '2019-10-27', 24);
INSERT INTO `pv` VALUES (515, '2019-10-28', 47);
INSERT INTO `pv` VALUES (516, '2019-10-29', 49);
INSERT INTO `pv` VALUES (517, '2019-10-30', 69);
INSERT INTO `pv` VALUES (518, '2019-10-31', 53);
INSERT INTO `pv` VALUES (519, '2019-11-01', 58);
INSERT INTO `pv` VALUES (520, '2019-11-02', 28);
INSERT INTO `pv` VALUES (521, '2019-11-03', 6);
INSERT INTO `pv` VALUES (522, '2019-11-04', 51);
INSERT INTO `pv` VALUES (523, '2019-11-05', 33);
INSERT INTO `pv` VALUES (524, '2019-11-06', 50);
INSERT INTO `pv` VALUES (525, '2019-11-07', 47);
INSERT INTO `pv` VALUES (526, '2019-11-08', 54);
INSERT INTO `pv` VALUES (527, '2019-11-09', 17);
INSERT INTO `pv` VALUES (528, '2019-11-10', 12);
INSERT INTO `pv` VALUES (529, '2019-11-11', 72);
INSERT INTO `pv` VALUES (530, '2019-11-12', 37);
INSERT INTO `pv` VALUES (531, '2019-11-13', 52);
INSERT INTO `pv` VALUES (532, '2019-11-14', 47);
INSERT INTO `pv` VALUES (533, '2019-11-15', 52);
INSERT INTO `pv` VALUES (534, '2019-11-16', 33);
INSERT INTO `pv` VALUES (535, '2019-11-17', 29);
INSERT INTO `pv` VALUES (536, '2019-11-18', 43);
INSERT INTO `pv` VALUES (537, '2019-11-19', 44);
INSERT INTO `pv` VALUES (538, '2019-11-20', 32);
INSERT INTO `pv` VALUES (539, '2019-11-21', 25);
INSERT INTO `pv` VALUES (540, '2019-11-22', 38);
INSERT INTO `pv` VALUES (541, '2019-11-23', 22);
INSERT INTO `pv` VALUES (542, '2019-11-24', 11);
INSERT INTO `pv` VALUES (543, '2019-11-25', 25);
INSERT INTO `pv` VALUES (544, '2019-11-26', 29);
INSERT INTO `pv` VALUES (545, '2019-11-27', 36);
INSERT INTO `pv` VALUES (546, '2019-11-28', 23);
INSERT INTO `pv` VALUES (547, '2019-11-29', 25);
INSERT INTO `pv` VALUES (548, '2019-11-30', 21);
INSERT INTO `pv` VALUES (549, '2019-12-01', 8);
INSERT INTO `pv` VALUES (550, '2019-12-02', 40);
INSERT INTO `pv` VALUES (551, '2019-12-03', 24);
INSERT INTO `pv` VALUES (552, '2019-12-04', 31);
INSERT INTO `pv` VALUES (553, '2019-12-05', 26);
INSERT INTO `pv` VALUES (554, '2019-12-06', 69);
INSERT INTO `pv` VALUES (555, '2019-12-07', 29);
INSERT INTO `pv` VALUES (556, '2019-12-08', 33);
INSERT INTO `pv` VALUES (557, '2019-12-09', 48);
INSERT INTO `pv` VALUES (558, '2019-12-10', 59);
INSERT INTO `pv` VALUES (559, '2019-12-11', 39);
INSERT INTO `pv` VALUES (560, '2019-12-12', 34);
INSERT INTO `pv` VALUES (561, '2019-12-13', 55);
INSERT INTO `pv` VALUES (562, '2019-12-14', 30);
INSERT INTO `pv` VALUES (563, '2019-12-15', 22);
INSERT INTO `pv` VALUES (564, '2019-12-16', 42);
INSERT INTO `pv` VALUES (565, '2019-12-17', 54);
INSERT INTO `pv` VALUES (566, '2019-12-18', 46);
INSERT INTO `pv` VALUES (567, '2019-12-19', 49);
INSERT INTO `pv` VALUES (568, '2019-12-20', 38);
INSERT INTO `pv` VALUES (569, '2019-12-21', 38);
INSERT INTO `pv` VALUES (570, '2019-12-22', 23);
INSERT INTO `pv` VALUES (571, '2019-12-23', 29);
INSERT INTO `pv` VALUES (572, '2019-12-24', 33);
INSERT INTO `pv` VALUES (573, '2019-12-25', 51);
INSERT INTO `pv` VALUES (574, '2019-12-26', 33);
INSERT INTO `pv` VALUES (575, '2019-12-27', 40);
INSERT INTO `pv` VALUES (576, '2019-12-28', 28);
INSERT INTO `pv` VALUES (577, '2019-12-29', 31);
INSERT INTO `pv` VALUES (578, '2019-12-30', 49);
INSERT INTO `pv` VALUES (579, '2019-12-31', 39);
INSERT INTO `pv` VALUES (580, '2020-01-01', 25);
INSERT INTO `pv` VALUES (581, '2020-01-02', 45);
INSERT INTO `pv` VALUES (582, '2020-01-03', 45);
INSERT INTO `pv` VALUES (583, '2020-01-04', 42);
INSERT INTO `pv` VALUES (584, '2020-01-05', 32);
INSERT INTO `pv` VALUES (585, '2020-01-06', 66);
INSERT INTO `pv` VALUES (586, '2020-01-07', 50);
INSERT INTO `pv` VALUES (587, '2020-01-08', 34);
INSERT INTO `pv` VALUES (588, '2020-01-09', 37);
INSERT INTO `pv` VALUES (589, '2020-01-10', 24);
INSERT INTO `pv` VALUES (590, '2020-01-11', 17);
INSERT INTO `pv` VALUES (591, '2020-01-12', 9);
INSERT INTO `pv` VALUES (592, '2020-01-13', 29);
INSERT INTO `pv` VALUES (593, '2020-01-14', 24);
INSERT INTO `pv` VALUES (594, '2020-01-15', 37);
INSERT INTO `pv` VALUES (595, '2020-01-16', 23);
INSERT INTO `pv` VALUES (596, '2020-01-17', 32);
INSERT INTO `pv` VALUES (597, '2020-01-18', 35);
INSERT INTO `pv` VALUES (598, '2020-01-19', 17);
INSERT INTO `pv` VALUES (599, '2020-01-20', 13);
INSERT INTO `pv` VALUES (600, '2020-01-21', 18);
INSERT INTO `pv` VALUES (601, '2020-01-22', 6);
INSERT INTO `pv` VALUES (602, '2020-01-23', 15);
INSERT INTO `pv` VALUES (603, '2020-01-24', 14);
INSERT INTO `pv` VALUES (604, '2020-01-25', 9);
INSERT INTO `pv` VALUES (605, '2020-01-26', 12);
INSERT INTO `pv` VALUES (606, '2020-01-27', 22);
INSERT INTO `pv` VALUES (607, '2020-01-28', 15);
INSERT INTO `pv` VALUES (608, '2020-01-29', 18);
INSERT INTO `pv` VALUES (609, '2020-01-30', 7);
INSERT INTO `pv` VALUES (610, '2020-01-31', 19);
INSERT INTO `pv` VALUES (611, '2020-02-01', 19);
INSERT INTO `pv` VALUES (612, '2020-02-02', 24);
INSERT INTO `pv` VALUES (613, '2020-02-03', 19);
INSERT INTO `pv` VALUES (614, '2020-02-04', 18);
INSERT INTO `pv` VALUES (615, '2020-02-05', 19);
INSERT INTO `pv` VALUES (616, '2020-02-06', 15);
INSERT INTO `pv` VALUES (617, '2020-02-07', 10);
INSERT INTO `pv` VALUES (618, '2020-02-08', 17);
INSERT INTO `pv` VALUES (619, '2020-02-09', 15);
INSERT INTO `pv` VALUES (620, '2020-02-10', 36);
INSERT INTO `pv` VALUES (621, '2020-02-11', 30);
INSERT INTO `pv` VALUES (622, '2020-02-12', 47);
INSERT INTO `pv` VALUES (623, '2020-02-13', 58);
INSERT INTO `pv` VALUES (624, '2020-02-14', 43);
INSERT INTO `pv` VALUES (625, '2020-02-15', 38);
INSERT INTO `pv` VALUES (626, '2020-02-16', 47);
INSERT INTO `pv` VALUES (627, '2020-02-17', 46);
INSERT INTO `pv` VALUES (628, '2020-02-18', 34);
INSERT INTO `pv` VALUES (629, '2020-02-19', 45);
INSERT INTO `pv` VALUES (630, '2020-02-20', 33);
INSERT INTO `pv` VALUES (631, '2020-02-21', 59);
INSERT INTO `pv` VALUES (632, '2020-02-22', 52);
INSERT INTO `pv` VALUES (633, '2020-02-23', 45);
INSERT INTO `pv` VALUES (634, '2020-02-24', 39);
INSERT INTO `pv` VALUES (635, '2020-02-25', 39);
INSERT INTO `pv` VALUES (636, '2020-02-26', 53);
INSERT INTO `pv` VALUES (637, '2020-02-27', 1);

-- ----------------------------
-- Table structure for tabs
-- ----------------------------
DROP TABLE IF EXISTS `tabs`;
CREATE TABLE `tabs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '标签名称',
  `article_id` int(11) NOT NULL COMMENT '所属文章编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tabs
-- ----------------------------
INSERT INTO `tabs` VALUES (1, 'JavaScript', 1);
INSERT INTO `tabs` VALUES (2, 'web前端', 1);
INSERT INTO `tabs` VALUES (3, 'JS脚本', 1);
INSERT INTO `tabs` VALUES (4, 'CSS3', 2);
INSERT INTO `tabs` VALUES (5, 'web前端', 2);
INSERT INTO `tabs` VALUES (6, 'HTML5', 3);
INSERT INTO `tabs` VALUES (7, 'web前端', 3);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456');
INSERT INTO `user` VALUES (2, 'zhangsan', '123456');
INSERT INTO `user` VALUES (3, 'lisi', '0000');

SET FOREIGN_KEY_CHECKS = 1;

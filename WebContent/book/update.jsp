<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>更新图书</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
<script language="JavaScript">

function Dsy()
{
 this.Items = {};
}
Dsy.prototype.add = function(id,iArray)
{
 this.Items[id] = iArray;
}
Dsy.prototype.Exists = function(id)
{
 if(typeof(this.Items[id]) == "undefined") return false;
 return true;
}
function change(v){
 var str="0";
 for(i=0;i<v;i++){ str+=("_"+(document.getElementById(s[i]).selectedIndex-1));};
 var ss=document.getElementById(s[v]);
 with(ss){
  length = 0;
  options[0]=new Option(opt0[v],opt0[v]);
  if(v && document.getElementById(s[v-1]).selectedIndex>0 || !v)
  {
   if(dsy.Exists(str)){
    ar = dsy.Items[str];
    for(i=0;i<ar.length;i++)options[length]=new Option(ar[i],ar[i]);
    if(v)options[1].selected = true;
   }
  }
  if(++v<s.length){change(v);}
 }
}
var dsy = new Dsy();
dsy.add("0",["小说传记","动漫幽默","青春文学","艺术摄影","偶像明星","两性","家庭","旅游","美食","运动","励志/成功","心灵修养","职场","科普读物","计算机网络","工业设计","建筑","自然科学","哲学宗教","历史","政治军事","社会科学","经济","科普/百科","动漫卡通","幼儿启蒙","婴儿读物","少儿期刊"]);
dsy.add("0_0",["热门小说","历史人物","历代帝王","军事人物","科幻小说","武侠小说"]);
dsy.add("0_1",["大陆漫画","港台漫画","日韩漫画","欧美漫画","幽默笑话","其它漫画"]);
dsy.add("0_2",["爱情/情感","校园","娱乐/偶像","古代言情","影视写真","青春文学"]);
dsy.add("0_3",["摄影","设计","音乐","收藏鉴赏","艺术理论","世界艺术"]);
dsy.add("0_4",["娱乐/偶像","青春偶像","成长","励志","校园","情感"]);
dsy.add("0_5",["两性关系","婚姻","恋爱","性"]);
dsy.add("0_6",["家庭/家居","家庭和谐","家庭园艺","家装","家事窍门"]);
dsy.add("0_7",["国内旅游自助指南","国外旅游自助指南","旅游随笔","户外探险","旅游地图"]);
dsy.add("0_8",["烘焙甜品","家常菜谱","茶酒饮料","饮食文化","地方美食","西餐料理"]);
dsy.add("0_9",["户外运动","武术","田径/体操","球类","体育理论与教学","其他运动"]);
dsy.add("0_10",["成功案例","失败总结","励志","成功法则","时间管理","理想与思路"]);
dsy.add("0_11",["心灵/感悟","心智/心态","幸福快乐","品德/修养"]);
dsy.add("0_12",["职场秘籍","职场人际线","职业规划","升职/加薪","职场心态"]);
dsy.add("0_13",["宇宙知识","百科知识","科学世界","生物世界","生态环境","人类故事"]);
dsy.add("0_14",["程序设计","图形图像/多媒体","网络与数据通信","计算机理论","人工智能","信息安全"]);
dsy.add("0_15",["电工技术","化学工业","轻工业/手工业","航空/航天","水利工程","能源与动力"]);
dsy.add("0_16",["宇建筑标准/规范","建筑科学","建筑施工与监理","工程经济与管理","建筑外观设计","建筑文化"]);
dsy.add("0_17",["生物科学","地球科学","化学","力学","物理学","数学"]);
dsy.add("0_18",["哲学人生","宗教理论","哲学理论","佛学","世界哲学","思维科学"]);
dsy.add("0_19",["历史普及读物","历史随笔","史学理论","中国史","世界史","民族史"]);
dsy.add("0_20",["中国政治","世界政治","军事理论","军事技术","国际问题","军事热点"]);
dsy.add("0_21",["社会学","社会科学总论","语言文字","文化人类学","图书馆学/档案学","新闻传播出版"]);
dsy.add("0_22",["经济学理论","中国经济","经济史","贸易政策","保险","经济法"]);
dsy.add("0_23",["科普","生活常识","历史读物","百科","数学"]);
dsy.add("0_24",["卡通","漫画","连环画"]);
dsy.add("0_25",["认知","图画故事","国学启蒙","幼儿园教材","数学","音乐"]);
dsy.add("0_26",["认知书","图画故事","挂图卡片","儿童歌谣","童话故事书","入园准备"]);
dsy.add("0_27",["儿童文学","励志成长","课外辅导","益智游戏"]);
</script>
<script language = JavaScript>
var s=["s1","s2","s3"];
var n1="-图书一级分类-";
var n2="-图书二级分类-";
var opt0 = [n1,n2];
function setup()
{
 for(i=0;i<s.length-1;i++)
  document.getElementById(s[i]).onchange=new Function("change("+(i+1)+")");
 change(0);
}
</script>
	<body onload="setup()">
		<%@include file="/info/adminInfo.jsp"%>
		<h1 align="center">
			<font color="red">更新图书</font>
		</h1>
		<s:form theme="simple" name="frm" action="updateBook">
        <table width="911" height="817" border="1" align="center">
		  <tr>
		    <td width="437" height="370"><table width="438" height="387" border="1">
		      <tr>
		        <td height="328"><img src='../upload/<s:property value="%{book.cover}"/>'></td>
	          </tr>
		      <tr>
		        <td height="51">封面：<s:textfield name="book.cover" value="%{book.cover}"/>注:upload下文件名</td>
	          </tr>
	        </table></td>
		    <td width="458"><table width="459" border="0">
		      <tr>
		      <s:hidden name="book.bookid" value="%{book.bookid}"/>
		        <td height="47">书名:<s:textfield name="book.name" value="%{book.name}"
							label="书名"></s:textfield></td>
	          </tr>
              <tr>
              	<td height="48">作者:<s:textfield name="book.author" value="%{book.author}"
							label="作者"></s:textfield></td>
              </tr>
		      <tr>
		        <td height="47">ISBN:<s:textfield name="book.isbn" value="%{book.isbn}"
							label="ISBN"></s:textfield></td>
	          </tr>
		      <tr>
		        <td height="45">推荐指数:<s:textfield name="book.recommend" value="%{book.recommend}"
							label="推荐指数"></s:textfield></td>
	          </tr>
		      <tr>
		        <td height="45">价格:
	              <s:textfield name="book.price" value="%{book.price}"
							label="价格"></s:textfield></td>
	          </tr>
		      <tr>
		        <td height="46">已出售数量:
                <s:textfield name="book.sellsum" value="%{book.sellsum}"
							label="已出售数"></s:textfield></td>
	          </tr>
              <tr>
		        <td height="50">图书总数:<s:textfield name="book.sum" value="%{book.sum}"
							label="图书总数"></s:textfield></td>
	          </tr>
              <tr>
		        <td height="49">开本:<s:textfield name="book.booksize" value="%{book.booksize}"
							label="开本"></s:textfield></td>
	          </tr>
	        </table></td>
	      </tr>
		  <tr>
		    <td height="44">
		       <label for="s1">图书一级分类:</label><s:property value="book.type"/>
		      <select id="s1" name="book.type"><option>图书一级分类</option></select>
	        </td><td>
		    <label for="s2">图书二级分类</label>:<s:property value="book.type2"/>
            <select id="s2" name="book.type2"><option>图书二级分类</option></select></td>
	      </tr>
          <tr>
		    <td height="44">出版社:
            <s:textfield name="book.press" value="%{book.press}"
							label="出版社"></s:textfield></td>
		    <td>版次:
           <s:textfield name="book.edition" value="%{book.edition}"
							label="版次"></s:textfield></td>
	      </tr>
          <tr>
		    <td height="44">页数:
            <s:textfield name="book.totalpages" value="%{book.totalpages}"
							label="页数"></s:textfield></td>
		    <td>出版时间:
	        <s:textfield name="book.pubdate" value="%{book.pubdate}"
							label="出版时间"></s:textfield></td>
	      </tr>
          <tr>
		    <td height="231"> 目录:
            <s:textarea name="book.catalog" cols="60" rows="15" value="%{book.catalog}"
							label="目录"></s:textarea></td>
		    <td>内容介绍:
	          <s:textarea name="book.content" cols="60" rows="15" value="%{book.content}"
							label="内容介绍"></s:textarea>
	        </td>
          </tr>
          <tr>
          	<td height="42">
            </td>
            <td>
          	<s:submit value="修 改"></s:submit>
            </td>
          </tr>
   		</table>
</s:form>
	</body>
</html>
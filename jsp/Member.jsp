<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">
	#center{
		margin-left: 37%;
	}
	#cancle{
		position : absolute;
		width: 200px;
		height: 50px;
	}
	#join2{
		position : absolute;
		width: 200px;
		height: 50px;
		margin-left: 15%;
	}
	#wndqhr{
		/* margin-left: -75%; */
	}
</style>
</head>
<body>	

	<%@ include file="header.jsp"%>
	
	<div id="center">
	<br/><br/><br/>
	<table>
		<tr>
			<th>���̵�</th>
			<td><input type="text" placeholder="������ �Է����ּ���"/></td>
			<td><input type="button" id="wndqhr"
			value="�ߺ�Ȯ��" style="font-size: 15px; color: rgb(255, 255, 255); text-align: center; 
			background-color: rgb(89, 202, 183); size: "10"; "></td>
		</tr>
		<tr>
			<th>��й�ȣ</th>
			<td><input type="password" placeholder="������ �Է����ּ���"></td>
		</tr>
		<tr>
			<th>��й�ȣ Ȯ��</th>
			<td><input type="password" placeholder="������ �Է����ּ���"></td>
		</tr>
		<tr>
			<th>�̸�</th>
			<td><input type="text" placeholder="������ �Է����ּ���"></td>
		</tr>
		<tr>
			<th>�޴��� ��ȣ</th>
			<td>
			<input type="text" list="phonelist" size="2.5">
			<datalist id="phonelist">
				<option value="010">010</option> <option value="011">011</option>
   				<option value="016">016</option> <option value="017">017</option>
    			<option value="018">018</option> <option value="019">019</option>
			</datalist> - <input type="text" placeholder="������" size="2.5"> - <input type="text" placeholder="�Է����ּ���" size="2.5">
			</td>
			
		</tr>
		<tr>
			<th>�ּ�</th>
			<td><input type="text" placeholder="������ �Է����ּ���"></td>
		</tr>
		<tr>
			<th>�̸���</th>
			<td><input type="email" placeholder="������ �Է����ּ���" size="4">@
			<input type="text" list="emaillist">
			<datalist id="emaillist">
				<option value="naver.com">naver.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="nate.com">nate.com</option>
				<option value="nexon.com">nexon.com</option>
			</datalist>
			</td>
		</tr>
	</table>
	<br/>
	<input type="checkbox"  name="chk" />�̿��� ����(�ʼ�)<br/>
		<textarea rows="10" cols="60">�Ͽ��� ������ ������ ���̴� û��! ���� �μ��� ������ ��� ����� ���� ������ ���� ��� ���� û���� �Ǵ� ���´� ���� �ǿ� �ٳ�� ������ �ż��� ����� ���� ���ִ� �̰��̴� �η��� ���縦 �ٸ� ������ ������ �ٷ� �̰��̴� �̼��� �����ϵ� ������ ������ ������ ��ī�ο쳪 �� �ӿ� �� Į�̴� û���� ���� �ǰ� �ƴϴ��� �ΰ��� �󸶳� �����Ϸ�? ������ ���� ������ ������ ���� ���̴� �׵鿡�� ������ �Ҿ� �ִ� ���� ������ ���ٶ��̴� Ǯ�翡 ���ٳ��� ������ ���� Ʈ�� �� �ǰ� �� ��� ������ õ���� �󸶳� ��ڸ� �󸶳� �Ƹ��ٿ��? �̰��� ���� �ӿ��� �ҷ� ���� ���� ������ ���ٶ��̴� �λ�</textarea><br/>
	<br/>
	<input type="checkbox"  name="chk" />���� ���ϼ��� �������� ����(����)<br/>
		<textarea rows="10" cols="60">�Ͽ��� ������ ������ ���̴� û��! ���� �μ��� ������ ��� ����� ���� ������ ���� ��� ���� û���� �Ǵ� ���´� ���� �ǿ� �ٳ�� ������ �ż��� ����� ���� ���ִ� �̰��̴� �η��� ���縦 �ٸ� ������ ������ �ٷ� �̰��̴� �̼��� �����ϵ� ������ ������ ������ ��ī�ο쳪 �� �ӿ� �� Į�̴� û���� ���� �ǰ� �ƴϴ��� �ΰ��� �󸶳� �����Ϸ�? ������ ���� ������ ������ ���� ���̴� �׵鿡�� ������ �Ҿ� �ִ� ���� ������ ���ٶ��̴� Ǯ�翡 ���ٳ��� ������ ���� Ʈ�� �� �ǰ� �� ��� ������ õ���� �󸶳� ��ڸ� �󸶳� �Ƹ��ٿ��? �̰��� ���� �ӿ��� �ҷ� ���� ���� ������ ���ٶ��̴� �λ�</textarea><br/>
	<input type="checkbox"  name="all" onclick="allchk(this.checked)"/>��ü����
	<br/>
	<div id="cancle" data-text-content="true" onclick="location.href='main.jsp'" style="font-size: 16px; color: rgb(64, 64, 64); text-align: center; line-height: 3.7em; border-radius: 4px; background-color: rgb(224, 224, 224);" >CANCLE</div>
	<div id="join2" data-text-content="true" onclick="location.href=Login.jsp'" style="font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 3.7em; border-radius: 4px; background-color: rgb(89, 202, 183);" >JOIN</div>
	<br/>
	</div>
	
</body>
</html>
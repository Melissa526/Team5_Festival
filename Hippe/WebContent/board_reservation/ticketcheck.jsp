<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#center {
	margin-left: 25%;
}

#button {
	margin-top: 20px;
	margin-bottom: 20px;
}
#radio{
	margin-left: 50%;
}
table{
	border: none;
}
td{
	border-bottom: 1px solid #ccc;
}

    
</style>

</head>
<body>

<jsp:include page="../common/hippe_header.jsp"></jsp:include>

	<br/><br/><br/><br/><br/>
	<div id="center">
		<div
			style="background-color: rgb(255, 255, 255); border-width: 1px; border-style: dotted; border-color: rgb(51, 51, 51); height: 60px; width: 1000px; text-align: center; vertical-align: center;">

			<div style="font-size: 16px; margin: auto;">
				��ȸ�Ⱓ����
				<button id="button"
					style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; background-color: rgb(89, 202, 183); width: 60px; height: 26px;">7��</button>

				<button id="button"
					style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; background-color: rgb(89, 202, 183); width: 60px; height: 26px;">15��</button>

				<button id="button"
					style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; background-color: rgb(89, 202, 183); width: 60px; height: 26px;">1����</button>

				<button id="button"
					style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; background-color: rgb(89, 202, 183); width: 60px; height: 26px;">5����</button>

				<button id="button"
					style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; background-color: rgb(89, 202, 183); width: 60px; height: 26px;">1��</button>

				<label>�ֹ����ں�</label> <input type="text"
					style="width: 100px; height: 30px;"> <input type="text"
					style="width: 100px; height: 30px;"> <input type="text"
					style="width: 100px; height: 30px;">

				<button id="button"
					style="font-size: 14px; color: rgb(255, 255, 255); text-align: center; background-color: rgb(240, 123, 125); width: 60px; height: 26px;">Ȯ��</button>

			</div>
		</div>
	
		<br/>

		<input id="radio" type="radio" style="width: 20px; height: 20px;"> ��ü
		<input type="radio" style="width: 20px; height: 20px;"> ����
		<input type="radio" style="width: 20px; height: 20px;"> ���

		<br/><br/>
		
		<table>
			<tbody>
				<tr align="center" style="background-color: skyblue;">
					<th style="width: 135px; height: 45px;">&nbsp;������</th>
					<th style="width: 135px; height: 45px;">&nbsp;���Ź�ȣ</th>
					<th style="width: 239px; height: 45px;">&nbsp;��ǰ��</th>
					<th style="width: 135px; height: 45px;">&nbsp;�̿���/�ż�</th>
					<th style="width: 136px; height: 45px;">&nbsp;��� ���� ����</th>
					<th style="width: 136px; height: 45px;">&nbsp;�������</th>
				</tr>
				<tr align="center">
					<td style="width: 135px; height: 45px;">&nbsp;������</td>
					<td style="width: 135px; height: 45px;">&nbsp;���Ź�ȣ</td>
					<td style="width: 239px; height: 45px;">&nbsp;��ǰ��</td>
					<td style="width: 135px; height: 45px;">&nbsp;�̿���/�ż�</td>
					<td style="width: 136px; height: 45px;">&nbsp;��� ���� ����</td>
					<td style="width: 136px; height: 45px;">&nbsp;�������</td>
				</tr>
				<tr align="center">
					<td style="width: 135px; height: 45px;">&nbsp;������</td>
					<td style="width: 135px; height: 45px;">&nbsp;���Ź�ȣ</td>
					<td style="width: 239px; height: 45px;">&nbsp;��ǰ��</td>
					<td style="width: 135px; height: 45px;">&nbsp;�̿���/�ż�</td>
					<td style="width: 136px; height: 45px;">&nbsp;��� ���� ����</td>
					<td style="width: 136px; height: 45px;">&nbsp;�������</td>
				</tr>
				<tr align="center">
					<td style="width: 135px; height: 45px;">&nbsp;������</td>
					<td style="width: 135px; height: 45px;">&nbsp;���Ź�ȣ</td>
					<td style="width: 239px; height: 45px;">&nbsp;��ǰ��</td>
					<td style="width: 135px; height: 45px;">&nbsp;�̿���/�ż�</td>
					<td style="width: 136px; height: 45px;">&nbsp;��� ���� ����</td>
					<td style="width: 136px; height: 45px;">&nbsp;�������</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>


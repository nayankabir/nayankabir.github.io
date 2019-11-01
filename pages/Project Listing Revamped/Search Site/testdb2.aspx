<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Untitled 1</title>
</head>

<body>

<form id="form1" runat="server">
	<asp:AccessDataSource id="AccessDataSource1" runat="server" DataFile="Test Database 1.mdb" SelectCommand="SELECT * FROM [Master Project Listing] WHERE (([PV Code ] LIKE '%' + ? + '%') OR ([PV Code ] IS NULL)) AND (([IT Delivery AVP ] LIKE '%' + ? + '%') OR ([IT Delivery AVP ] IS NULL)) AND (([IT Delivery VP ] LIKE '%' + ? + '%') OR ([IT Delivery VP ] IS NULL)) AND (([Actuals (YTD) ] LIKE '%' + ? + '%') OR ([Actuals (YTD) ] IS NULL))">
		<SelectParameters>
			<asp:ControlParameter ControlID="MPLSearchBox" Name="PV_Code_" PropertyName="Text" Type="String" ConvertEmptyStringToNull="False" />
			<asp:ControlParameter ControlID="MPLSearchBoxAVP" ConvertEmptyStringToNull="False" Name="IT_Delivery_AVP_" PropertyName="Text" />
			<asp:ControlParameter ControlID="MPLSearchBoxVP" Name="IT_Delivery_VP_" PropertyName="Text" ConvertEmptyStringToNull="False" />
			<asp:ControlParameter ControlID="MPLSearchBoxActuals" ConvertEmptyStringToNull="False" Name="Actuals_(YTD)_" PropertyName="Text" />
		</SelectParameters>
	</asp:AccessDataSource>
	<asp:Label id="Label1" runat="server" BorderStyle="Ridge" Text="Project Code"></asp:Label>
	<asp:TextBox id="MPLSearchBox" runat="server"></asp:TextBox>
	<asp:Button id="MPLSearchButton" runat="server" Text="Search" />
	<br />
	<asp:Label id="Label2" runat="server" BorderStyle="Ridge" Text="AVP"></asp:Label>
	<asp:TextBox id="MPLSearchBoxAVP" runat="server"></asp:TextBox>
	<br />
	<asp:Label id="Label3" runat="server" BorderStyle="Ridge" Text="VP"></asp:Label>
	<asp:TextBox id="MPLSearchBoxVP" runat="server"></asp:TextBox>
	<br />
	<asp:Label id="Label4" runat="server" BorderStyle="Ridge" Text="Actuals"></asp:Label>
	<asp:TextBox id="MPLSearchBoxActuals" runat="server"></asp:TextBox>
	<asp:GridView id="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#F0F0F0" DataSourceID="AccessDataSource1">
		<AlternatingRowStyle BackColor="White" />
		<Columns>
			<asp:BoundField DataField="PV Code " HeaderText="PV Code " SortExpression="PV Code ">
			</asp:BoundField>
			<asp:BoundField DataField="PV Code (In IA)" HeaderText="PV Code (In IA)" SortExpression="PV Code (In IA)">
			</asp:BoundField>
			<asp:BoundField DataField="Project Name" HeaderText="Project Name" SortExpression="Project Name">
			</asp:BoundField>
			<asp:BoundField DataField="Portfolio" HeaderText="Portfolio" SortExpression="Portfolio">
			</asp:BoundField>
			<asp:BoundField DataField="IT Delivery VP " HeaderText="IT Delivery VP " SortExpression="IT Delivery VP ">
			</asp:BoundField>
			<asp:BoundField DataField="IT Delivery AVP " HeaderText="IT Delivery AVP " SortExpression="IT Delivery AVP ">
			</asp:BoundField>
			<asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category">
			</asp:BoundField>
			<asp:BoundField DataField="Lens" HeaderText="Lens" SortExpression="Lens">
			</asp:BoundField>
			<asp:BoundField DataField="IRR" HeaderText="IRR" SortExpression="IRR">
			</asp:BoundField>
			<asp:BoundField DataField="NPV" HeaderText="NPV" SortExpression="NPV">
			</asp:BoundField>
			<asp:BoundField DataField="Gate" HeaderText="Gate" SortExpression="Gate">
			</asp:BoundField>
			<asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
			</asp:BoundField>
			<asp:BoundField DataField="Start" HeaderText="Start" SortExpression="Start">
			</asp:BoundField>
			<asp:BoundField DataField="Finish" HeaderText="Finish" SortExpression="Finish">
			</asp:BoundField>
			<asp:BoundField DataField="PBP Owner" HeaderText="PBP Owner" SortExpression="PBP Owner">
			</asp:BoundField>
			<asp:BoundField DataField="Exec Sponsor" HeaderText="Exec Sponsor" SortExpression="Exec Sponsor">
			</asp:BoundField>
			<asp:BoundField DataField="PIMC Exec" HeaderText="PIMC Exec" SortExpression="PIMC Exec">
			</asp:BoundField>
			<asp:BoundField DataField="SVP / VP Sponsor" HeaderText="SVP / VP Sponsor" SortExpression="SVP / VP Sponsor">
			</asp:BoundField>
			<asp:BoundField DataField="MGF Fund" HeaderText="MGF Fund" SortExpression="MGF Fund">
			</asp:BoundField>
			<asp:BoundField DataField="Dealer Impact" HeaderText="Dealer Impact" SortExpression="Dealer Impact">
			</asp:BoundField>
			<asp:BoundField DataField="Dealer Shared" HeaderText="Dealer Shared" SortExpression="Dealer Shared">
			</asp:BoundField>
			<asp:BoundField DataField="ITPC / PIMC in Year Approved" HeaderText="ITPC / PIMC in Year Approved" SortExpression="ITPC / PIMC in Year Approved">
			</asp:BoundField>
			<asp:BoundField DataField="FGL Budget" HeaderText="FGL Budget" SortExpression="FGL Budget">
			</asp:BoundField>
			<asp:BoundField DataField="0+12 Budget" HeaderText="0+12 Budget" SortExpression="0+12 Budget">
			</asp:BoundField>
			<asp:BoundField DataField="Capex Ratio" HeaderText="Capex Ratio" SortExpression="Capex Ratio">
			</asp:BoundField>
			<asp:BoundField DataField="Capex" HeaderText="Capex" SortExpression="Capex">
			</asp:BoundField>
			<asp:BoundField DataField="Opex" HeaderText="Opex" SortExpression="Opex">
			</asp:BoundField>
			<asp:BoundField DataField="% of costs Recovered" HeaderText="% of costs Recovered" SortExpression="% of costs Recovered">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries" HeaderText="Recoveries" SortExpression="Recoveries">
			</asp:BoundField>
			<asp:BoundField DataField="Net Opex" HeaderText="Net Opex" SortExpression="Net Opex">
			</asp:BoundField>
			<asp:BoundField DataField="5+7 Forecast" HeaderText="5+7 Forecast" SortExpression="5+7 Forecast">
			</asp:BoundField>
			<asp:BoundField DataField="Capex Ratio1" HeaderText="Capex Ratio1" SortExpression="Capex Ratio1">
			</asp:BoundField>
			<asp:BoundField DataField="Capex1" HeaderText="Capex1" SortExpression="Capex1">
			</asp:BoundField>
			<asp:BoundField DataField="Opex1" HeaderText="Opex1" SortExpression="Opex1">
			</asp:BoundField>
			<asp:BoundField DataField="% of costs Recovered1" HeaderText="% of costs Recovered1" SortExpression="% of costs Recovered1">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries1" HeaderText="Recoveries1" SortExpression="Recoveries1">
			</asp:BoundField>
			<asp:BoundField DataField="Net Opex1" HeaderText="Net Opex1" SortExpression="Net Opex1">
			</asp:BoundField>
			<asp:BoundField DataField="Estimate at Completion (2016)" HeaderText="Estimate at Completion (2016)" SortExpression="Estimate at Completion (2016)">
			</asp:BoundField>
			<asp:BoundField DataField="Capex Ratio2" HeaderText="Capex Ratio2" SortExpression="Capex Ratio2">
			</asp:BoundField>
			<asp:BoundField DataField="Capex2" HeaderText="Capex2" SortExpression="Capex2">
			</asp:BoundField>
			<asp:BoundField DataField="Gross Opex" HeaderText="Gross Opex" SortExpression="Gross Opex">
			</asp:BoundField>
			<asp:BoundField DataField="% of costs Recovered2" HeaderText="% of costs Recovered2" SortExpression="% of costs Recovered2">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries2" HeaderText="Recoveries2" SortExpression="Recoveries2">
			</asp:BoundField>
			<asp:BoundField DataField="Net Opex2" HeaderText="Net Opex2" SortExpression="Net Opex2">
			</asp:BoundField>
			<asp:BoundField DataField="Actuals (YTD)" HeaderText="Actuals (YTD)" SortExpression="Actuals (YTD)">
			</asp:BoundField>
			<asp:BoundField DataField="Capex Ratio3" HeaderText="Capex Ratio3" SortExpression="Capex Ratio3">
			</asp:BoundField>
			<asp:BoundField DataField="Capex3" HeaderText="Capex3" SortExpression="Capex3">
			</asp:BoundField>
			<asp:BoundField DataField="Gross Opex1" HeaderText="Gross Opex1" SortExpression="Gross Opex1">
			</asp:BoundField>
			<asp:BoundField DataField="% of costs Recovered3" HeaderText="% of costs Recovered3" SortExpression="% of costs Recovered3">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries3" HeaderText="Recoveries3" SortExpression="Recoveries3">
			</asp:BoundField>
			<asp:BoundField DataField="Net Opex3" HeaderText="Net Opex3" SortExpression="Net Opex3">
			</asp:BoundField>
			<asp:BoundField DataField="Forecast (BOY)" HeaderText="Forecast (BOY)" SortExpression="Forecast (BOY)">
			</asp:BoundField>
			<asp:BoundField DataField="Capex Ratio4" HeaderText="Capex Ratio4" SortExpression="Capex Ratio4">
			</asp:BoundField>
			<asp:BoundField DataField="Capex4" HeaderText="Capex4" SortExpression="Capex4">
			</asp:BoundField>
			<asp:BoundField DataField="Opex2" HeaderText="Opex2" SortExpression="Opex2">
			</asp:BoundField>
			<asp:BoundField DataField="% of costs Recovered4" HeaderText="% of costs Recovered4" SortExpression="% of costs Recovered4">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries4" HeaderText="Recoveries4" SortExpression="Recoveries4">
			</asp:BoundField>
			<asp:BoundField DataField="Net Opex4" HeaderText="Net Opex4" SortExpression="Net Opex4">
			</asp:BoundField>
			<asp:BoundField DataField="Estimate at Completion (Lifetime)" HeaderText="Estimate at Completion (Lifetime)" SortExpression="Estimate at Completion (Lifetime)">
			</asp:BoundField>
			<asp:BoundField DataField="Total Gross" HeaderText="Total Gross" SortExpression="Total Gross">
			</asp:BoundField>
			<asp:BoundField DataField="Consultants" HeaderText="Consultants" SortExpression="Consultants">
			</asp:BoundField>
			<asp:BoundField DataField="Contingency" HeaderText="Contingency" SortExpression="Contingency">
			</asp:BoundField>
			<asp:BoundField DataField="Hard Capital" HeaderText="Hard Capital" SortExpression="Hard Capital">
			</asp:BoundField>
			<asp:BoundField DataField="IS Costs" HeaderText="IS Costs" SortExpression="IS Costs">
			</asp:BoundField>
			<asp:BoundField DataField="Other" HeaderText="Other" SortExpression="Other">
			</asp:BoundField>
			<asp:BoundField DataField="Labour" HeaderText="Labour" SortExpression="Labour">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries5" HeaderText="Recoveries5" SortExpression="Recoveries5">
			</asp:BoundField>
			<asp:BoundField DataField="Capex5" HeaderText="Capex5" SortExpression="Capex5">
			</asp:BoundField>
			<asp:BoundField DataField="Opex3" HeaderText="Opex3" SortExpression="Opex3">
			</asp:BoundField>
			<asp:BoundField DataField="Total Gross1" HeaderText="Total Gross1" SortExpression="Total Gross1">
			</asp:BoundField>
			<asp:BoundField DataField="Consultants1" HeaderText="Consultants1" SortExpression="Consultants1">
			</asp:BoundField>
			<asp:BoundField DataField="Contingency1" HeaderText="Contingency1" SortExpression="Contingency1">
			</asp:BoundField>
			<asp:BoundField DataField="Hard Capital1" HeaderText="Hard Capital1" SortExpression="Hard Capital1">
			</asp:BoundField>
			<asp:BoundField DataField="IS Costs1" HeaderText="IS Costs1" SortExpression="IS Costs1">
			</asp:BoundField>
			<asp:BoundField DataField="Other1" HeaderText="Other1" SortExpression="Other1">
			</asp:BoundField>
			<asp:BoundField DataField="Labour1" HeaderText="Labour1" SortExpression="Labour1">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries6" HeaderText="Recoveries6" SortExpression="Recoveries6">
			</asp:BoundField>
			<asp:BoundField DataField="Capex6" HeaderText="Capex6" SortExpression="Capex6">
			</asp:BoundField>
			<asp:BoundField DataField="Opex4" HeaderText="Opex4" SortExpression="Opex4">
			</asp:BoundField>
			<asp:BoundField DataField="Total Gross2" HeaderText="Total Gross2" SortExpression="Total Gross2">
			</asp:BoundField>
			<asp:BoundField DataField="Consultants2" HeaderText="Consultants2" SortExpression="Consultants2">
			</asp:BoundField>
			<asp:BoundField DataField="Contingency2" HeaderText="Contingency2" SortExpression="Contingency2">
			</asp:BoundField>
			<asp:BoundField DataField="Hard Capital2" HeaderText="Hard Capital2" SortExpression="Hard Capital2">
			</asp:BoundField>
			<asp:BoundField DataField="IS Costs2" HeaderText="IS Costs2" SortExpression="IS Costs2">
			</asp:BoundField>
			<asp:BoundField DataField="Other2" HeaderText="Other2" SortExpression="Other2">
			</asp:BoundField>
			<asp:BoundField DataField="Labour2" HeaderText="Labour2" SortExpression="Labour2">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries7" HeaderText="Recoveries7" SortExpression="Recoveries7">
			</asp:BoundField>
			<asp:BoundField DataField="Capex7" HeaderText="Capex7" SortExpression="Capex7">
			</asp:BoundField>
			<asp:BoundField DataField="Opex5" HeaderText="Opex5" SortExpression="Opex5">
			</asp:BoundField>
			<asp:BoundField DataField="Total Gross3" HeaderText="Total Gross3" SortExpression="Total Gross3">
			</asp:BoundField>
			<asp:BoundField DataField="Consultants3" HeaderText="Consultants3" SortExpression="Consultants3">
			</asp:BoundField>
			<asp:BoundField DataField="Contingency3" HeaderText="Contingency3" SortExpression="Contingency3">
			</asp:BoundField>
			<asp:BoundField DataField="Hard Capital3" HeaderText="Hard Capital3" SortExpression="Hard Capital3">
			</asp:BoundField>
			<asp:BoundField DataField="IS Costs3" HeaderText="IS Costs3" SortExpression="IS Costs3">
			</asp:BoundField>
			<asp:BoundField DataField="Other3" HeaderText="Other3" SortExpression="Other3">
			</asp:BoundField>
			<asp:BoundField DataField="Labour3" HeaderText="Labour3" SortExpression="Labour3">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries8" HeaderText="Recoveries8" SortExpression="Recoveries8">
			</asp:BoundField>
			<asp:BoundField DataField="Capex8" HeaderText="Capex8" SortExpression="Capex8">
			</asp:BoundField>
			<asp:BoundField DataField="Opex6" HeaderText="Opex6" SortExpression="Opex6">
			</asp:BoundField>
			<asp:BoundField DataField="Total Gross4" HeaderText="Total Gross4" SortExpression="Total Gross4">
			</asp:BoundField>
			<asp:BoundField DataField="Consultants4" HeaderText="Consultants4" SortExpression="Consultants4">
			</asp:BoundField>
			<asp:BoundField DataField="Contingency4" HeaderText="Contingency4" SortExpression="Contingency4">
			</asp:BoundField>
			<asp:BoundField DataField="Hard Capital4" HeaderText="Hard Capital4" SortExpression="Hard Capital4">
			</asp:BoundField>
			<asp:BoundField DataField="IS Costs4" HeaderText="IS Costs4" SortExpression="IS Costs4">
			</asp:BoundField>
			<asp:BoundField DataField="Other4" HeaderText="Other4" SortExpression="Other4">
			</asp:BoundField>
			<asp:BoundField DataField="Labour4" HeaderText="Labour4" SortExpression="Labour4">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries9" HeaderText="Recoveries9" SortExpression="Recoveries9">
			</asp:BoundField>
			<asp:BoundField DataField="Capex9" HeaderText="Capex9" SortExpression="Capex9">
			</asp:BoundField>
			<asp:BoundField DataField="Opex7" HeaderText="Opex7" SortExpression="Opex7">
			</asp:BoundField>
			<asp:BoundField DataField="Total Gross5" HeaderText="Total Gross5" SortExpression="Total Gross5">
			</asp:BoundField>
			<asp:BoundField DataField="Consultants5" HeaderText="Consultants5" SortExpression="Consultants5">
			</asp:BoundField>
			<asp:BoundField DataField="Contingency5" HeaderText="Contingency5" SortExpression="Contingency5">
			</asp:BoundField>
			<asp:BoundField DataField="Hard Capital5" HeaderText="Hard Capital5" SortExpression="Hard Capital5">
			</asp:BoundField>
			<asp:BoundField DataField="IS Costs5" HeaderText="IS Costs5" SortExpression="IS Costs5">
			</asp:BoundField>
			<asp:BoundField DataField="Other5" HeaderText="Other5" SortExpression="Other5">
			</asp:BoundField>
			<asp:BoundField DataField="Labour5" HeaderText="Labour5" SortExpression="Labour5">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries10" HeaderText="Recoveries10" SortExpression="Recoveries10">
			</asp:BoundField>
			<asp:BoundField DataField="Capex10" HeaderText="Capex10" SortExpression="Capex10">
			</asp:BoundField>
			<asp:BoundField DataField="Opex8" HeaderText="Opex8" SortExpression="Opex8">
			</asp:BoundField>
			<asp:BoundField DataField="Total Gross6" HeaderText="Total Gross6" SortExpression="Total Gross6">
			</asp:BoundField>
			<asp:BoundField DataField="Consultants6" HeaderText="Consultants6" SortExpression="Consultants6">
			</asp:BoundField>
			<asp:BoundField DataField="Contingency6" HeaderText="Contingency6" SortExpression="Contingency6">
			</asp:BoundField>
			<asp:BoundField DataField="Hard Capital6" HeaderText="Hard Capital6" SortExpression="Hard Capital6">
			</asp:BoundField>
			<asp:BoundField DataField="IS Costs6" HeaderText="IS Costs6" SortExpression="IS Costs6">
			</asp:BoundField>
			<asp:BoundField DataField="Other6" HeaderText="Other6" SortExpression="Other6">
			</asp:BoundField>
			<asp:BoundField DataField="Labour6" HeaderText="Labour6" SortExpression="Labour6">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries11" HeaderText="Recoveries11" SortExpression="Recoveries11">
			</asp:BoundField>
			<asp:BoundField DataField="Capex11" HeaderText="Capex11" SortExpression="Capex11">
			</asp:BoundField>
			<asp:BoundField DataField="Opex9" HeaderText="Opex9" SortExpression="Opex9">
			</asp:BoundField>
			<asp:BoundField DataField="Total Gross7" HeaderText="Total Gross7" SortExpression="Total Gross7">
			</asp:BoundField>
			<asp:BoundField DataField="Consultants7" HeaderText="Consultants7" SortExpression="Consultants7">
			</asp:BoundField>
			<asp:BoundField DataField="Contingency7" HeaderText="Contingency7" SortExpression="Contingency7">
			</asp:BoundField>
			<asp:BoundField DataField="Hard Capital7" HeaderText="Hard Capital7" SortExpression="Hard Capital7">
			</asp:BoundField>
			<asp:BoundField DataField="IS Costs7" HeaderText="IS Costs7" SortExpression="IS Costs7">
			</asp:BoundField>
			<asp:BoundField DataField="Other7" HeaderText="Other7" SortExpression="Other7">
			</asp:BoundField>
			<asp:BoundField DataField="Labour7" HeaderText="Labour7" SortExpression="Labour7">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries12" HeaderText="Recoveries12" SortExpression="Recoveries12">
			</asp:BoundField>
			<asp:BoundField DataField="Capex12" HeaderText="Capex12" SortExpression="Capex12">
			</asp:BoundField>
			<asp:BoundField DataField="Opex10" HeaderText="Opex10" SortExpression="Opex10">
			</asp:BoundField>
			<asp:BoundField DataField="Total Gross8" HeaderText="Total Gross8" SortExpression="Total Gross8">
			</asp:BoundField>
			<asp:BoundField DataField="Consultants8" HeaderText="Consultants8" SortExpression="Consultants8">
			</asp:BoundField>
			<asp:BoundField DataField="Contingency8" HeaderText="Contingency8" SortExpression="Contingency8">
			</asp:BoundField>
			<asp:BoundField DataField="Hard Capital8" HeaderText="Hard Capital8" SortExpression="Hard Capital8">
			</asp:BoundField>
			<asp:BoundField DataField="IS Costs8" HeaderText="IS Costs8" SortExpression="IS Costs8">
			</asp:BoundField>
			<asp:BoundField DataField="Other8" HeaderText="Other8" SortExpression="Other8">
			</asp:BoundField>
			<asp:BoundField DataField="Labour8" HeaderText="Labour8" SortExpression="Labour8">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries13" HeaderText="Recoveries13" SortExpression="Recoveries13">
			</asp:BoundField>
			<asp:BoundField DataField="Capex13" HeaderText="Capex13" SortExpression="Capex13">
			</asp:BoundField>
			<asp:BoundField DataField="Opex11" HeaderText="Opex11" SortExpression="Opex11">
			</asp:BoundField>
			<asp:BoundField DataField="Total Gross9" HeaderText="Total Gross9" SortExpression="Total Gross9">
			</asp:BoundField>
			<asp:BoundField DataField="Consultants9" HeaderText="Consultants9" SortExpression="Consultants9">
			</asp:BoundField>
			<asp:BoundField DataField="Contingency9" HeaderText="Contingency9" SortExpression="Contingency9">
			</asp:BoundField>
			<asp:BoundField DataField="Hard Capital9" HeaderText="Hard Capital9" SortExpression="Hard Capital9">
			</asp:BoundField>
			<asp:BoundField DataField="IS Costs9" HeaderText="IS Costs9" SortExpression="IS Costs9">
			</asp:BoundField>
			<asp:BoundField DataField="Other9" HeaderText="Other9" SortExpression="Other9">
			</asp:BoundField>
			<asp:BoundField DataField="Labour9" HeaderText="Labour9" SortExpression="Labour9">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries14" HeaderText="Recoveries14" SortExpression="Recoveries14">
			</asp:BoundField>
			<asp:BoundField DataField="Capex14" HeaderText="Capex14" SortExpression="Capex14">
			</asp:BoundField>
			<asp:BoundField DataField="Opex12" HeaderText="Opex12" SortExpression="Opex12">
			</asp:BoundField>
			<asp:BoundField DataField="Total Gross10" HeaderText="Total Gross10" SortExpression="Total Gross10">
			</asp:BoundField>
			<asp:BoundField DataField="Consultants10" HeaderText="Consultants10" SortExpression="Consultants10">
			</asp:BoundField>
			<asp:BoundField DataField="Contingency10" HeaderText="Contingency10" SortExpression="Contingency10">
			</asp:BoundField>
			<asp:BoundField DataField="Hard Capital10" HeaderText="Hard Capital10" SortExpression="Hard Capital10">
			</asp:BoundField>
			<asp:BoundField DataField="IS Costs10" HeaderText="IS Costs10" SortExpression="IS Costs10">
			</asp:BoundField>
			<asp:BoundField DataField="Other10" HeaderText="Other10" SortExpression="Other10">
			</asp:BoundField>
			<asp:BoundField DataField="Labour10" HeaderText="Labour10" SortExpression="Labour10">
			</asp:BoundField>
			<asp:BoundField DataField="Recoveries15" HeaderText="Recoveries15" SortExpression="Recoveries15">
			</asp:BoundField>
			<asp:BoundField DataField="Capex15" HeaderText="Capex15" SortExpression="Capex15">
			</asp:BoundField>
			<asp:BoundField DataField="Opex13" HeaderText="Opex13" SortExpression="Opex13">
			</asp:BoundField>
			<asp:BoundField DataField="Total Gross11" HeaderText="Total Gross11" SortExpression="Total Gross11">
			</asp:BoundField>
		</Columns>
		<SortedAscendingCellStyle BackColor="#F5F7FB" />
		<SortedAscendingHeaderStyle BackColor="#6D95E1" />
		<SortedDescendingCellStyle BackColor="#E9EBEF" />
		<SortedDescendingHeaderStyle BackColor="#4870BE" />
		<HeaderStyle BackColor="#CCFFFF" />

<SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
	</asp:GridView>
</form>

</body>

</html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Untitled 1</title>
<style type="text/css">
.auto-style1 {
	margin-top: 0px;
}
</style>
</head>

<body>

<form id="form1" runat="server">
	<asp:AccessDataSource id="AccessDataSource1" runat="server" DataFile="G:\Google Drive\OneDrive Transfer\Canadian Tire Work Folder\00 IA Datamaster\Financial Analytics Pilot\Project Listing Dump 09-19-20161.mdb" SelectCommand="SELECT * FROM [Master Project Listing] 
WHERE (([Actuals (YTD)]&lt;=?) OR ([Actuals (YTD)] IS NULL))
AND (([Forecast (BOY)]&gt;=?) OR ([Forecast (BOY)] IS NULL))
AND (([ITPC / PIMC in Year Approved]=?))

">
		<SelectParameters>
			<asp:ControlParameter ControlID="MPLSearchBoxActuals" Name="Actuals" PropertyName="Text" DefaultValue="0" />
			<asp:ControlParameter ControlID="MPLSearchBoxForecast" Name="Forecast" PropertyName="Text" DefaultValue="1" />
			<asp:ControlParameter ControlID="PIMCinYrApprovedBox" DefaultValue="0" Name="ITPCPIMC in Year Approved" PropertyName="Text" />
		</SelectParameters>
	</asp:AccessDataSource>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:Button id="BackButton" runat="server" Text="Back" PostBackUrl="testdb10ATWORK.aspx" />
	&nbsp;&nbsp;&nbsp;
	<asp:Button id="MPLSearchButton" runat="server" Text="Search" />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br />
	<asp:Label id="Label4" runat="server" BorderStyle="Ridge" Text="Actuals (Enter Maximum)"></asp:Label>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:TextBox id="MPLSearchBoxActuals" runat="server"></asp:TextBox>
	<br />
	<asp:Label id="Label5" runat="server" BorderStyle="Ridge" Text="Forecast (Enter Minimum)"></asp:Label>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:TextBox id="MPLSearchBoxForecast" runat="server"></asp:TextBox>
	&nbsp;
	<br />
	<asp:Label id="Label6" runat="server" BorderStyle="Ridge" Text="ITPC / PIMC in Year Approved"></asp:Label>
	&nbsp;&nbsp;&nbsp;
	<asp:TextBox id="PIMCinYrApprovedBox" runat="server"></asp:TextBox>
	<br />
	<br />
	<asp:Label id="Label7" runat="server" BorderStyle="Ridge" Text="Total Unstarted ($)"></asp:Label>
	<asp:TextBox id="UnstartedSumText" runat="server" Width="128px"></asp:TextBox>
	<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br />
&nbsp;<asp:GridView id="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#F0F0F0" DataSourceID="AccessDataSource1" DataKeyNames="ID" CssClass="auto-style1">
		<AlternatingRowStyle BackColor="White" />
		<SortedAscendingCellStyle BackColor="#F5F7FB" />
		<SortedAscendingHeaderStyle BackColor="#6D95E1" />
		<SortedDescendingCellStyle BackColor="#E9EBEF" />
		<SortedDescendingHeaderStyle BackColor="#4870BE" />
		<Columns>
			<asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID">
			</asp:BoundField>
			<asp:BoundField DataField="PV Code (In IA)" HeaderText="PV Code (In IA)" SortExpression="PV Code (In IA)">
			</asp:BoundField>
			<asp:BoundField DataField="Project Name" HeaderText="Project Name" SortExpression="Project Name">
			</asp:BoundField>
			<asp:BoundField DataField="Portfolio" HeaderText="Portfolio" SortExpression="Portfolio">
			</asp:BoundField>
			<asp:BoundField DataField="IT Delivery VP" HeaderText="IT Delivery VP" SortExpression="IT Delivery VP">
			</asp:BoundField>
			<asp:BoundField DataField="IT Delivery AVP" HeaderText="IT Delivery AVP" SortExpression="IT Delivery AVP">
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
		</Columns>
		<HeaderStyle BackColor="#CCFFFF" />

<SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
	</asp:GridView>
	<asp:SqlDataSource ID="SqlDataSourceAll" runat="server" ConnectionString="<%$ ConnectionStrings:Project Listing Dump 09-19-20161ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:Project Listing Dump 09-19-20161ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Master Project Listing]">
	</asp:SqlDataSource>
</form>

</body>

</html>

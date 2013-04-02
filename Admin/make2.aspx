<%@ Page Language="VB" AutoEventWireup="false" CodeFile="make2.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_hw5 %>" 
            SelectCommand="SELECT * FROM [car]">
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="CarID" DataSourceID="SqlDataSource1" Width="514px">
            <Columns>
                <asp:BoundField DataField="make" HeaderText="make" SortExpression="make" />
                <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                <asp:HyperLinkField DataNavigateUrlFields="CarID" 
                    DataNavigateUrlFormatString="detailsview2.aspx?CarID={0}" Text="Details">
                </asp:HyperLinkField>
             
            </Columns>
        </asp:GridView>
    
    </div>
    </form>  
     <br />
    <a href="../Default.aspx">Home</a>
</body>
</html>

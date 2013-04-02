<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewCar.aspx.vb" Inherits="Admin_Default" %>

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
            DeleteCommand="DELETE FROM [car] WHERE [CarID] = @CarID" 
            InsertCommand="INSERT INTO [car] ([make], [model], [color], [seats], [seat material]) VALUES (@make, @model, @color, @seats, @seat_material)" 
            SelectCommand="SELECT * FROM [car]" 
            UpdateCommand="UPDATE [car] SET [make] = @make, [model] = @model, [color] = @color, [seats] = @seats, [seat material] = @seat_material WHERE [CarID] = @CarID">
            <DeleteParameters>
                <asp:Parameter Name="CarID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="make" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="seats" Type="String" />
                <asp:Parameter Name="seat_material" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="make" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="seats" Type="String" />
                <asp:Parameter Name="seat_material" Type="String" />
                <asp:Parameter Name="CarID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="CarID" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
            Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="CarID" HeaderText="CarID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="CarID" />
                <asp:BoundField DataField="make" HeaderText="make" SortExpression="make" />
                <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                <asp:BoundField DataField="seats" HeaderText="seats" SortExpression="seats" />
                <asp:BoundField DataField="seat material" HeaderText="seat material" 
                    SortExpression="seat material" />
                <asp:CommandField ShowInsertButton="True" />
        
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
        <br />
            <a href="../Default.aspx">Home</a>
            </body>
</html>

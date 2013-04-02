<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="make.aspx.vb" Inherits="make" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_hw5 %>" 
            SelectCommand="SELECT * FROM [car]"></asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CarID" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="make" HeaderText="make" SortExpression="make" />
            <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
            <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
            <asp:BoundField DataField="seats" HeaderText="seats" SortExpression="seats" />
            <asp:BoundField DataField="seat material" HeaderText="seat material" 
                SortExpression="seat material" />
            <asp:HyperLinkField DataNavigateUrlFields="CarID" 
                DataNavigateUrlFormatString="detailsview.aspx?CarID={0}" Text="Details" />
        </Columns>
    </asp:GridView>
    <br />
   <a href="Default.aspx">Home</a>
</asp:Content>


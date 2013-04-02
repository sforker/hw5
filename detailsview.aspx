<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="detailsview.aspx.vb" Inherits="detailsview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_hw5 %>" 
        SelectCommand="SELECT * FROM [car]"></asp:SqlDataSource>

    <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" DataKeyNames="CarID" DataSourceID="SqlDataSource1" 
        Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="make" HeaderText="make" SortExpression="make" />
            <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
            <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
            <asp:BoundField DataField="seats" HeaderText="seats" SortExpression="seats" />
            <asp:BoundField DataField="seat material" HeaderText="seat material" 
                SortExpression="seat material" />
       </Fields>
    </asp:DetailsView>
<a href="Default.aspx">Home</a>
</asp:Content>


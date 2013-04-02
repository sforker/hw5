<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    
        welcome to the database for cars!<br /><a href="login/default.aspx">Log in</a>
        <br /><a href="make.aspx">View All</a>
        <br />
        <img alt="cars" title="cars" src="./images/car.png"/>
        <br /><a href="Admin/make2.aspx">Admin/make2.aspx</a>
        <br /><a href="Admin/NewCar.aspx">Admin/NewCar.aspx</a>
    </p>
</asp:Content>


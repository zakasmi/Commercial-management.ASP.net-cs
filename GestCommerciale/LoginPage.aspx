<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="GestCommerciale.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 100%;
    }
    .auto-style8 {
            width: 729px;
        }
    .auto-style9 {
            width: 729px;
            text-align: right;
        }
        .auto-style10 {
            width: 334px;
        }
        .auto-style11 {
            width: 628px;
            height: 30px;
            text-align: center;
            margin-right: 0px;
        }
        .auto-style12 {
            width: 729px;
            text-align: right;
            height: 26px;
        }
        .auto-style13 {
            width: 334px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style11">
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:TextBox ID="TB_Username" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="auto-style13">
            <asp:TextBox ID="TB_Password" runat="server" Width="124px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style10">
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style10">
            <asp:Label ID="LBL_Error" runat="server"></asp:Label>
        </td>
    </tr>
</table>

</asp:Content>

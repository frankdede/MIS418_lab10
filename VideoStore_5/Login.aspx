<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        THhis is the store login page</p>
    <p>
        <asp:Login ID="userLogin" runat="server" CreateUserText="Don't have an account with us? Sign up " CreateUserUrl="~/Registration.aspx" DestinationPageUrl="~/Default.aspx">
        </asp:Login>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        This is our store starting page</p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="Customer/mainpage.aspx">Registered Customer Only</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <asp:HyperLink ID="HyperLink2" runat="server">Another Link</asp:HyperLink>
</asp:Content>


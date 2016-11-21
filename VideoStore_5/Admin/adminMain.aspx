<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster.master" AutoEventWireup="false" CodeFile="adminMain.aspx.vb" Inherits="Admin_adminMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    This is the company administration page</p>
    <p>
        New role to add:<asp:TextBox ID="txtNewRole" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnAddRole" runat="server" Text="Add Role" />
    </p>
    <p>
        Admin to add:</p>
    <p>
        Role:
        <asp:TextBox ID="txtRole" runat="server"></asp:TextBox>
        ]</p>
    <p>
        Name:<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnAddUsertoRole" runat="server" Text="Add User to Role" />
    </p>
    <p>
        <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>


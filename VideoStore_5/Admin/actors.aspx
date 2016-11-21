<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster.master" AutoEventWireup="false" CodeFile="actors.aspx.vb" Inherits="actors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    This is a list of actors</p>
<p>
    &nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="actorID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="actorID" HeaderText="actorID" ReadOnly="True" SortExpression="actorID" />
            <asp:BoundField DataField="actorLastName" HeaderText="actorLastName" SortExpression="actorLastName" />
            <asp:BoundField DataField="actorFirstName" HeaderText="actorFirstName" SortExpression="actorFirstName" />
            <asp:BoundField DataField="updateDate" HeaderText="updateDate" SortExpression="updateDate" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:M418_g02ConnectionString1 %>" DeleteCommand="DELETE FROM [actor] WHERE [actorID] = @actorID" InsertCommand="INSERT INTO [actor] ([actorFirstName], [actorLastName], [updateDate]) VALUES (@actorFirstName, @actorLastName, @updateDate)" ProviderName="<%$ ConnectionStrings:M418_g02ConnectionString1.ProviderName %>" SelectCommand="SELECT [actorID], [actorFirstName], [actorLastName], [updateDate] FROM [actor]" UpdateCommand="UPDATE [actor] SET [actorFirstName] = @actorFirstName, [actorLastName] = @actorLastName, [updateDate] = @updateDate WHERE [actorID] = @actorID">
        <DeleteParameters>
            <asp:Parameter Name="actorID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="actorFirstName" Type="String" />
            <asp:Parameter Name="actorLastName" Type="String" />
            <asp:Parameter Name="updateDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="actorFirstName" Type="String" />
            <asp:Parameter Name="actorLastName" Type="String" />
            <asp:Parameter Name="updateDate" Type="DateTime" />
            <asp:Parameter Name="actorID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="actorID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="actorID" HeaderText="actorID" InsertVisible="False" ReadOnly="True" SortExpression="actorID" />
            <asp:BoundField DataField="actorLastName" HeaderText="actorLastName" SortExpression="actorLastName" />
            <asp:BoundField DataField="actorFirstName" HeaderText="actorFirstName" SortExpression="actorFirstName" />
            <asp:BoundField DataField="updateDate" HeaderText="updateDate" SortExpression="updateDate" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>


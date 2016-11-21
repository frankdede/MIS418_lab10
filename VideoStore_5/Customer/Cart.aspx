<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster.master" AutoEventWireup="false" CodeFile="Cart.aspx.vb" Inherits="Customer_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:GridView ID="gdvCart" runat="server" AutoGenerateColumns="False" DataKeyNames="orderLineID" DataSourceID="sqldsCart" EmptyDataText="There is nothing in your cart! Please order.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="orderLineID" HeaderText="orderLineID" InsertVisible="False" ReadOnly="True" SortExpression="orderLineID" Visible="False" />
                <asp:BoundField DataField="movieName" HeaderText="movieName" SortExpression="movieName" ReadOnly="True" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:BoundField DataField="moviePrice" HeaderText="moviePrice" SortExpression="moviePrice" ReadOnly="True" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="sqldsCart" runat="server" ConnectionString="<%$ ConnectionStrings:M418_g02ConnectionString1 %>" DeleteCommand="DELETE FROM movieOrderLine WHERE (orderLineID = @orderLineID)" SelectCommand="SELECT movieOrderLine.orderLineID, movie.movieName, movieOrderLine.quantity, movie.moviePrice FROM movieOrderLine INNER JOIN movie ON movieOrderLine.movieID = movie.movieID WHERE (movieOrderLine.orderID = @orderID)" UpdateCommand="UPDATE movieOrderLine SET quantity = @quantity WHERE (orderLineID = @orderLineID)">
            <DeleteParameters>
                <asp:Parameter Name="orderLineID" />
            </DeleteParameters>
            <SelectParameters>
                <asp:Parameter Name="orderID" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="quantity" />
                <asp:Parameter Name="orderLineID" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        Total:
        <asp:Label ID="lblTotal" runat="server"></asp:Label>
    </p>
    <p>
    </p>
</asp:Content>


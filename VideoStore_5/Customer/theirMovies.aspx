<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster.master" AutoEventWireup="false" CodeFile="theirMovies.aspx.vb" Inherits="Customer_theirMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
    <asp:DropDownList ID="ddlActorIDList" runat="server" DataSourceID="SqlDataSource1" DataTextField="FullName" DataValueField="actorID" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:M418_g02ConnectionString1 %>" SelectCommand="SELECT ActorID, ActorLastName + ', ' + ActorFirstName AS FullName FROM actor"></asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    <asp:GridView ID="gdvMovies" runat="server" AutoGenerateColumns="False" DataKeyNames="movieID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="movieID" HeaderText="movieID" InsertVisible="False" ReadOnly="True" SortExpression="movieID" />
            <asp:BoundField DataField="movieName" HeaderText="movieName" SortExpression="movieName" />
        </Columns>
        <SelectedRowStyle BackColor="Silver" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:M418_g02ConnectionString1 %>" SelectCommand="SELECT movie.movieID, movie.movieName FROM movie INNER JOIN movieActor ON movie.movieID = movieActor.movieID WHERE (movieActor.actorID = @actorNum)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlActorIDList" Name="actorNum" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
    CustomerID<asp:DropDownList ID="ddlCustomerIDList" runat="server" AutoPostBack="True" DataSourceID="sqldsCustID" DataTextField="customerID" DataValueField="customerID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="sqldsCustID" runat="server" ConnectionString="<%$ ConnectionStrings:M418_g02ConnectionString1 %>" SelectCommand="SELECT [customerID] FROM [movieCustomer]"></asp:SqlDataSource>
</p>
<p>
    Pending
    OrderID
    <asp:DropDownList ID="ddlPendingOrderIDList" runat="server" AutoPostBack="True" DataSourceID="sqldsOrder" DataTextField="orderID" DataValueField="orderID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="sqldsOrder" runat="server" ConnectionString="<%$ ConnectionStrings:M418_g02ConnectionString1 %>" SelectCommand="SELECT orderID, orderStatus, customerID FROM movieOrder WHERE (orderStatus = N'Pending') AND (customerID = @customerID)" InsertCommand="INSERT INTO movieOrder(orderDate, customerID, orderStatus) VALUES (@orderDate, @customerID, N'Pending')">
        <InsertParameters>
            <asp:Parameter Name="orderDate" />
            <asp:Parameter Name="customerID" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="customerID" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
    movieID
    <asp:DropDownList ID="ddlMovieList" runat="server" AutoPostBack="True" DataSourceID="sqldsMovies" DataTextField="movieID" DataValueField="movieID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="sqldsMovies" runat="server" ConnectionString="<%$ ConnectionStrings:M418_g02ConnectionString1 %>" SelectCommand="SELECT movieOrderLine.movieID FROM movieOrder INNER JOIN movieOrderLine ON movieOrder.orderID = movieOrderLine.orderID WHERE (movieOrderLine.orderID = @orderID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlPendingOrderIDList" Name="orderID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
    <p>
        <asp:GridView ID="gdvOrderLine" runat="server" AutoGenerateColumns="False" DataKeyNames="orderLineID" DataSourceID="sqldsOrderLine" EmptyDataText="No records found">
            <Columns>
                <asp:BoundField DataField="orderLineID" HeaderText="orderLineID" InsertVisible="False" ReadOnly="True" SortExpression="orderLineID" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            </Columns>
        </asp:GridView>
</p>
<p>
    <asp:SqlDataSource ID="sqldsOrderLine" runat="server" ConnectionString="<%$ ConnectionStrings:M418_g02ConnectionString1 %>" SelectCommand="SELECT orderLineID, quantity FROM movieOrderLine WHERE (orderID = @orderID) AND (movieID = @movieID)" InsertCommand="INSERT INTO movieOrderLine(orderID, movieID, quantity) VALUES (@orderID, @movieID, @quantity)" UpdateCommand="UPDATE movieOrderLine SET quantity = @quantity WHERE (orderLineID = @orderLineID)">
        <InsertParameters>
            <asp:Parameter Name="orderID" />
            <asp:Parameter Name="movieID" />
            <asp:Parameter Name="quantity" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="orderID" />
            <asp:Parameter Name="movieID" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="quantity" />
            <asp:Parameter Name="orderLineID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblWarning" runat="server" ForeColor="Red"></asp:Label>
</p>
<p>
    <asp:Label ID="Label1" runat="server" Text="Quantity"></asp:Label>
    <asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtQty" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="20" MinimumValue="1" Type="Integer">Please enter a valid integer 1-20</asp:RangeValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQty" ErrorMessage="Please enter an integer between 1 and 20" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>


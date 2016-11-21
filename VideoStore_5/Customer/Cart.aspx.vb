Imports System.Data
Partial Class Customer_Cart
    Inherits System.Web.UI.Page

    Private Sub Customer_Cart_Load(sender As Object, e As EventArgs) Handles Me.Load
        sqldsCart.SelectParameters("orderID").DefaultValue = 6
    End Sub

    Private Sub gdvCart_DataBound(sender As Object, e As EventArgs) Handles gdvCart.DataBound
        Dim dv As DataView, Qty As Integer, Price As Decimal
        Dim rowI As Integer, Total As Decimal
        dv = CType(sqldsCart.Select(DataSourceSelectArguments.Empty), DataView)
        'Table's row and column start at 0
        For rowI = 0 To dv.Count - 1
            Qty = CType(dv.Table.Rows(rowI)(2), Integer)
            Price = CType(dv.Table.Rows(rowI)(3), Decimal)
            Total = Total + Price * Qty
        Next
        lblTotal.Text = Format(Total, "Currency")
    End Sub
End Class

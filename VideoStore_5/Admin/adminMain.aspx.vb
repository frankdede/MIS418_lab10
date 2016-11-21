
Partial Class Admin_adminMain
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnAddRole_Click(sender As Object, e As EventArgs) Handles btnAddRole.Click
        Roles.CreateRole(txtNewRole.Text)
        lblStatus.Text = "Role " & txtNewRole.Text & " added successfully"
    End Sub
    Protected Sub btnAddUsertoRole_Click(sender As Object, e As EventArgs) Handles btnAddUsertoRole.Click
        Dim usernames(0) As String
        usernames(0) = txtUsername.Text
        Roles.AddUsersToRole(usernames, txtRole.Text)
        lblStatus.Text = "User" & usernames(0) & " added to Role " & txtRole.Text & " successfully"
    End Sub
End Class

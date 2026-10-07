Imports System.data
Imports MySql.Data.MySqlClient

Partial Class index

    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        On Error GoTo Err_load



Ext_load:
        Exit Sub

Err_load:
        GoTo Ext_load

    End Sub
End Class

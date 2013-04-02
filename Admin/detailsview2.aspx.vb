
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim delcar As String = e.Values("make").ToString()
        Response.Write("the record")
        Response.Write("span class=deletedcarshighlights")
        Response.Write(delcar)
        Response.Write("</span> has been deleted from the database")

        Response.AddHeader("REFRESH", "3;URL=./make2.aspx")
    end Sub


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./make2.aspx")


    End Sub

    Protected Sub DetailsView1_PageIndexChanging(sender As Object, e As System.Web.UI.WebControls.DetailsViewPageEventArgs) Handles DetailsView1.PageIndexChanging

    End Sub
End Class

<%
Dim adoCon
Dim rsAddComments
Dim strSQL

Set adoCon = Server.CreateObject("ADODB.Connection")

adoCon.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("guestbook.mdb")

Set rsAddComments = Server.CreateObject("ADODB.Recordset")

strSQL = "SELECT tblComments.Name, tblComments.Comments FROM tblComments;"

rsAddComments.CursorType = 2

rsAddComments.LockType = 3

rsAddComments.Open strSQL, adoCon

rsAddComments.AddNew

rsAddComments.Fields("Name") = Request.Form("name")
rsAddComments.Fields("Comments") = Request.Form("comments")

rsAddComments.Update

rsAddComments.Close
Set rsAddComments = Nothing
Set adoCon = Nothing

Response.Redirect "guestbook.asp"
%>

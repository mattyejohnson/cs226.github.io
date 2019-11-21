<%
Dim adoCon
Dim rsGuestbook
Dim strSQL                       

Set adoCon = Server.CreateObject("ADODB.Connection")

adoCon.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("guestbook.mdb")


Set rsGuestbook = Server.CreateObject("ADODB.Recordset")

strSQL = "SELECT tblComments.Name, tblComments.Comments FROM tblComments;"

rsGuestbook.Open strSQL, adoCon

Do While not rsGuestbook.EOF
       
        Response.Write ("<br>")
        Response.Write (rsGuestbook("Name"))
        Response.Write ("<br>")
        Response.Write (rsGuestbook("Comments"))
        Response.Write ("<br>")

        rsGuestbook.MoveNext

Loop

rsGuestbook.Close
Set rsGuestbook = Nothing
Set adoCon = Nothing
%>

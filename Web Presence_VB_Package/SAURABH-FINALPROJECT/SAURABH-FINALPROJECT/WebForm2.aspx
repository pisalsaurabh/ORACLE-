<<%@ Page Language = "VB" %>
<%@ Import Namespace = "System.Data.OleDb" %>
<%@ Import Namespace = "System.IO" %>
<%@ Import Namespace = "System.Drawing" %>

<!DOCTYPE html>
<html xmlns = "http://www.w3.org/1999/xhtml">
<head id = "Head1" runat = "server">
<title>DatabasePage</title>

<script runat = "server">
    Public Class PictureBox
        Property Image As Drawing.Bitmap
    End Class

    Sub average(spexp As Object, evnt_sp As EventArgs)
        Try
            'Connect to the Database
            Dim spAccess As New OleDbConnection(
            "Provider = Microsoft.Jet.OLEDB.4.0;" &
            "Data Source = C:\Users\Saurabh\OneDrive - hawk.iit.edu\sEM 1\Adv topics in Datamanagement\Final Projecct\FinalProject.mdb")
            spAccess.Open()
            'Construct the SELECT statement
            Dim spresltst As String
            'Create the SQL Select Statement
            spresltst = "SELECT AVG(TOTAL_BILL_AMT) FROM BILLING_TABLE_SP"

            'Create the OleDbCommand object
            Dim spSlct As New OleDbCommand(spresltst, spAccess)
            Dim spReader As OleDbDataReader, sbResults As New StringBuilder()
            spReader = spSlct.ExecuteReader()

            sbResults.Append("<table>")
            While spReader.Read()
                sbResults.Append("<tr><td>")
                sbResults.Append("AVERAGE OF TOTAL AMOUNT OF ALL ORDERS IS : " + spReader.GetValue(0).ToString)
                sbResults.Append("</tr></td>")
                sbResults.Append("</tr></td>")
            End While
            sbResults.Append("</table>")
            click.Text = sbResults.ToString()
            spAccess.Close()
            spAccess = Nothing

        Catch ex As Exception
            Response.Write(ex.Message)
            Response.Write("<<<<<<<<<< CONNECTION HAS FAILED >>>>>>>>>>")
        End Try
    End Sub

    Sub count(spexp As Object, evnt_sp As EventArgs)
        Try
            'Connect to the Database
            Dim spAccess As New OleDbConnection(
            "Provider = Microsoft.Jet.OLEDB.4.0;" &
            "Data Source = C:\Users\Saurabh\OneDrive - hawk.iit.edu\sEM 1\Adv topics in Datamanagement\Final Projecct\FinalProject.mdb")
            spAccess.Open()

            'Construct the SELECT statement

            Dim sSel As String
            'Create the SQL Select Statement

            sSel = "SELECT Count(*) FROM BILLING_TABLE_SP WHERE TOTAL_BILL_AMT >= 500"

            'Create the OleDbCommand object
            Dim spSlct As New OleDbCommand(sSel, spAccess)
            Dim spReader As OleDbDataReader, sbResults As New StringBuilder()
            spReader = spSlct.ExecuteReader()

            sbResults.Append("<table>")
            While spReader.Read()
                sbResults.Append("<tr><td>")
                sbResults.Append("TOTAL NUMBER OF ORDERS PLACED BY CUSTOMERS WHOS AMOUNT GOES ABOVE $500 ARE : " + spReader.GetValue(0).ToString
                                 )
                sbResults.Append("</tr></td>")

            End While
            sbResults.Append("</table>")
            click1.Text = sbResults.ToString()
            spAccess.Close()
            spAccess = Nothing

        Catch ex As Exception
            Response.Write(ex.Message)
            Response.Write("<<<<< CONNECTION HAS FAILED >>>>>")
        End Try
    End Sub

    Sub sum(spexp As Object, evnt_sp As EventArgs)
        Try
            'Connect to the Database
            Dim spAccess As New OleDbConnection(
            "Provider = Microsoft.Jet.OLEDB.4.0;" &
            "Data Source = C:\Users\Saurabh\OneDrive - hawk.iit.edu\sEM 1\Adv topics in Datamanagement\Final Projecct\FinalProject.mdb")
            spAccess.Open()
            'Construct the SELECT statement
            Dim vSel As String
            'Create the SQL Select Statement
            vSel = "SELECT SUM(TOTAL_BILL_AMT) FROM BILLING_TABLE_SP WHERE BILL_NO BETWEEN 1 AND 2"

            'Create the OleDbCommand object
            Dim spSlct As New OleDbCommand(vSel, spAccess)
            Dim spReader As OleDbDataReader, sbResults As New StringBuilder()
            spReader = spSlct.ExecuteReader()

            sbResults.Append("<table>")
            While spReader.Read()
                sbResults.Append("<tr><td>")
                sbResults.Append("TOTAL OF TOTAL BILL IN BETWEEN THE 2 FINANCIAL YEARS  01-JAN-2014 AND 31-DEC-2015 : " + spReader.GetValue(0).ToString
                                 )
                sbResults.Append("</tr></td>")
                sbResults.Append("</tr></td>")
            End While
            sbResults.Append("</table>")
            click2.Text = sbResults.ToString()
            spAccess.Close()
            spAccess = Nothing

        Catch ex As Exception
            Response.Write(ex.Message)
            Response.Write("<< CONNECTION HAS FAILED >>")
        End Try
    End Sub

            </script>
    <center>
</head>
<body style = "font-family:Britannic;background-image: url(Image2.jpg); background-size: cover;color:orangered">
    <center>
    <h2>
        Welcome to Mani's Magazine 
    </h2>
<h3>
   Project by Saurabh Shekhar Pisal A20403781
</h3>
    </center>
    <form runat = "server" id = "form1">
       
<asp:Button Text = "AVERAGE" OnClick = "average"
runat = "server" ID = "Button1" />
    <p>
<asp:Label id = "click" runat = "server" />
</p>
<asp:Button Text = "COUNT" OnClick = "count"
runat = "server" ID = "Button2" />
    <br />
<p>
<asp:Label id = "click1" runat = "server" />
</p> 
    <br />

<asp:Button Text = "SUM" OnClick = "sum"
runat = "server" ID = "Button3" />
    <br />
<p>
<asp:Label id = "click2" runat = "server" />
</p> 
    <br />

 </center>
</form>
<div></div>
</body>
    </center>
</html>
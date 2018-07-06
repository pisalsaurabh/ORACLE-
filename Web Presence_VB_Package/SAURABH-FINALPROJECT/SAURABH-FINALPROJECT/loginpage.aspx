<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub TextBox1_TextChanged(spSNDR As Object, spEvnt As EventArgs)

    End Sub

    Protected Sub Button1_Click(spSNDR As Object, spEvnt As EventArgs)

    End Sub

    Protected Sub Button2_Click(spSNDR As Object, spEvnt As EventArgs)
        If USERNAME.Text = "Saurabh" And PASSWORD.Text = "Saurabh@123" Then
            Response.Redirect("Webform2.aspx")
        Else
            If USERNAME.Text = "" And PASSWORD.Text = "" Then
                MsgBox("PLEASE ENTER YOUR LOGIN CREDENTIALS TO LOG IN SUCCESSFULLY", MsgBoxStyle.Critical, "Error!")
            Else
                If USERNAME.Text = "" Then
                    MsgBox("USERNAME CANNOT BE BLANK, PLEASE ENTER YOUR LOGIN CREDENTIALS TO LOG IN SUCCESSFULLY!", MsgBoxStyle.Critical, "Error!")
                Else
                    If PASSWORD.Text = "" Then
                        MsgBox("PASSWORD CANNOT BE BLANK, PLEASE ENTER YOUR LOGIN CREDENTIALS TO LOG IN SUCCESSFULLY!", MsgBoxStyle.Critical, "Error!")
                    Else
                        MsgBox("INVALID CREDENTIALS, PLEASE CHECK AND LOGIN AGAIN!", MsgBoxStyle.Critical, "Error!")

                    End If
                End If
            End If
        End If
    End Sub

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LoginPage</title>
</head>
    <center>
<body style = "font-family:Britannic;background-image: url(Image2.jpg); background-size: cover;color:orangered">
    <form id="form1" runat="server">
        <div>
            <br />
            WELCOME TO MANI&#39;S MAGAZINE INVENTORY<br />
            <br />
            <br />
            <br />
            Username:<asp:TextBox ID="USERNAME" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 15px"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>
        <p>
            Password :&nbsp;
            <asp:TextBox ID="PASSWORD" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            </p>
        <p>
            </p>
        </p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="LOGIN" />
        </form>
    </center>
</body>
</html>
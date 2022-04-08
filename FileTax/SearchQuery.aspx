<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchQuery.aspx.cs" Inherits="FileTax.SearchQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-sm-1">
                
            </div>
            <div class="col-sm-10">
                <div class="form-group">
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Mobile"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" runat="server" CssClass="btn-info " Text="search" OnClick="Button1_Click" />
                </div>
                <div class="form-group">
                    <asp:GridView ID="GridView1" CssClass="table" runat="server"></asp:GridView>
                    <asp:Literal ID="lit_msg1" runat="server"></asp:Literal>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>

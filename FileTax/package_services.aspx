<%@ Page Title="" Language="C#" MasterPageFile="~/adminLoginMaster.Master" AutoEventWireup="true" CodeBehind="package_services.aspx.cs" Inherits="FileTax.package_services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
    .table-condensed tr th 
    {
        border: 0px solid #6e7bd9;
        color: white;
        background-color: #6e7bd9;
    }

    .table-condensed, .table-condensed tr td 
    {
        border: 0px solid #000;
    }

    tr:nth-child(even) 
    {
        background: #f8f7ff;
    }

    tr:nth-child(odd) 
    {
        background: #fff;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <div class="row">
        <div class="col-sm-4">
            <div class="form-group">

            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Add Services" CssClass="label-info"></asp:Label>
                <asp:DropDownList ID="ddl_serviceName" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_serviceName_SelectedIndexChanged">
               </asp:DropDownList>
            </div>
            <div class="form-group">
                 <asp:Label ID="Label3" runat="server" Text="Service ID:" Visible="false"></asp:Label>
                   <asp:Literal ID="lit_serviceId" runat="server" Visible="false"></asp:Literal>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Add Package" CssClass="label-info"></asp:Label>
                <asp:DropDownList ID="ddl_package" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_package_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>  
                    <asp:ListItem>Basic</asp:ListItem>
                    <asp:ListItem>Standard</asp:ListItem>
                    <asp:ListItem>Premium</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Package ID:" Visible="false"></asp:Label>
                <asp:Literal ID="lit_packageId" runat="server" Visible="false"></asp:Literal>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txt_text" Class="form-control" runat="server" placeholder="Enter Text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill text" ControlToValidate="txt_text" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-4">
                        <asp:Button ID="btn_save" class="btn btn-primary" runat="server" Text="Save" OnClick="btn_save_Click" ValidationGroup="a" />
                        <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="btn_update" class="btn btn-primary" runat="server" Text="Update" OnClick="btn_update_Click" />
                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="btn_delete" class="btn btn-primary" runat="server" Text="Delete" OnClick="btn_delete_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-4"></div>
    </div>
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <div class="form-group">
                <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Id" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                               <ItemTemplate>
                                   <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text=""><i style='font-size:24px' class='far'>&#xf044;</i></asp:LinkButton>
                               </ItemTemplate>
                        </asp:TemplateField>                      
                        <asp:TemplateField HeaderText="Service">
                            <ItemTemplate>
                                <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("service_text").ToString().Replace("[%]",ch) %>'></asp:Literal>                               
                            </ItemTemplate>                           
                        </asp:TemplateField>                       
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <div class="col-sm-2>">
            <div class="form-group"></div>
        </div>
    </div>
    </div>
</asp:Content>

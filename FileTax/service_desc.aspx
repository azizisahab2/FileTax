<%@ Page Title="" Language="C#" MasterPageFile="~/adminLoginMaster.Master" AutoEventWireup="true" CodeBehind="service_desc.aspx.cs" Inherits="FileTax.service_desc" %>
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
            background: #f8f7ff
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
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="serviceId" Visible="false"></asp:Label>
                    <asp:Literal ID="lit_serviceId" runat="server" Visible="false"></asp:Literal>
                 </div>
                <div class="form-group">
                    <asp:DropDownList ID="ddl_serviceName" class="form-control" runat="server" OnSelectedIndexChanged="ddl_serviceName_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txt_desc" Class="form-control" runat="server" placeholder="Add description"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please fill description" ControlToValidate="txt_desc"></asp:RequiredFieldValidator>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <asp:Button ID="btn_save" class="btn btn-primary" runat="server" Text="Save" OnClick="btn_save_Click" />
                        <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
                    </div>
                    <div class="col-sm-4">
                         <asp:Button ID="btn_update" class="btn btn-primary" runat="server" Text="Update" OnClick="btn_update_Click"/>
                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="btn_delete" class="btn btn-primary" runat="server" Text="Delete" OnClick="btn_delete_Click"/>
                    </div>
                </div>
            </div>
        </div>
    <div class="col-sm-4"></div>
       
        <div class="row">
            <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <asp:Panel ID="Panel1" runat="server" ScrollBars="Both">
                        <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                   <asp:TemplateField ShowHeader="False">
                                       <ItemTemplate>                
                                           <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text=""><i style='font-size:24px' class='far'>&#xf044;</i></asp:LinkButton>
                                       </ItemTemplate>
                                   </asp:TemplateField>
                                   <asp:BoundField DataField="description" HeaderText="Service Description" ReadOnly="True" SortExpression="description"  />
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                </div>
            <div class="col-sm-1"></div>
        </div>
    </div>

</asp:Content>

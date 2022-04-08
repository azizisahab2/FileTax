<%@ Page Language="C#" MasterPageFile="~/adminLoginMaster.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="FileTax.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
        .table-condensed tr th {
        border: 0px solid #6e7bd9;
        color: white;
        background-color: #0F1954;
        }

        .table-condensed, .table-condensed tr td {  
        border: 0px solid #000;
        }

        tr:nth-child(even) {
        background: #f8f7ff;
        }

        tr:nth-child(odd) {
        background: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group"></div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Add Services"></asp:Label>
                    </div>    
                    <div class="form-group">
                        <asp:TextBox ID="txt_services" class="form-control" runat="server" placeholder="Add Services"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please fill services" ControlToValidate="txt_services" ValidationGroup="a"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:FileUpload ID="img_upload" class="form-control" runat="server" Visible="false" />
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txt_url" class="form-control" runat="server" placeholder="Enter URL"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <asp:Button ID="btn_submit" class="btn btn-primary" runat="server" Text="Submit" OnClick="btn_submit_Click" ValidationGroup="a" />
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group"></div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <asp:Button ID="btn_delete" class="btn btn-primary" runat="server" Text="Delete" OnClick="btn_delete_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group"></div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <asp:Panel ID="Panel1" runat="server" ScrollBars="Both">
                        <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Id" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text=""><i style='font-size:24px' class='far'>&#xf044;</i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="True" SortExpression="id" Visible="false"/>
                                <asp:BoundField DataField="Services" HeaderText="Services" SortExpression="services"  />
                                <asp:BoundField DataField="service_url" HeaderText="Services URL" SortExpression="service_url"  />
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                </div>
                <div class="col-sm-1"></div>   
            </div>
        </div>
</asp:Content>
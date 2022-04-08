<%@ Page Language="C#" MasterPageFile="~/adminLoginMaster.Master" AutoEventWireup="true" CodeBehind="add_package.aspx.cs" Inherits="FileTax.admin1" %>

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
       
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <div class="form-group">
                   <asp:Label ID="Label1" runat="server" Text="Add Services" CssClass="label-info"></asp:Label>   
                   <asp:DropDownList ID="ddl_serviceName" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_serviceName_SelectedIndexChanged">
                       <asp:ListItem>Select Service</asp:ListItem>
                   </asp:DropDownList>
                </div>
                 <div class="form-group">
                   <asp:Label ID="Label3" runat="server" Text="Service ID:" Visible="false"></asp:Label>
                   <asp:Literal ID="lit_serviceId" runat="server" Visible="false"></asp:Literal>
                </div>
                <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Add Package" CssClass="label-info"></asp:Label>
                           
                   <div class="form-group">
                        <asp:DropDownList ID="ddl_package" class="form-control" runat="server" AutoPostBack="True">
                            <asp:ListItem>Select Package</asp:ListItem>
                            <asp:ListItem>Basic</asp:ListItem>
                            <asp:ListItem>Standard</asp:ListItem>
                            <asp:ListItem>Premium</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="form-group">
                        <asp:TextBox ID="txt_text" Class="form-control" runat="server" placeholder="Enter Text" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill text" ControlToValidate="txt_text" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txt_price" Class="form-control" runat="server" placeholder="Enter Price"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please fill price" ControlToValidate="txt_price" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>
                    </div>
                   <div class="row">
                       <div class="col-sm-4">
                            <div class="form-group">
                                <asp:Button ID="btn_save" class="btn btn-primary" runat="server" Text="Save" OnClick="btn_save_Click" ValidationGroup="a" />
                                <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
                            </div>
                       </div>
                       <div class="col-sm-4">
                           <div class="form-group">
                               <asp:Button ID="btn_update" class="btn btn-primary" runat="server" Text="Update" OnClick="btn_update_Click" />
                           </div>
                       </div>
                       <div class="col-sm-4">
                           <div class="form-group">
                               <asp:Button ID="btn_delete" class="btn btn-primary" runat="server" Text="Delete" OnClick="btn_delete_Click" />
                           </div>
                       </div>
                   </div>
               </div>
            </div>
        <div class="col-sm-2"></div>
        </div>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <asp:Panel ID="Panel1" runat="server" ScrollBars="Both">
                    <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text=""><i style='font-size:24px' class='far'>&#xf044;</i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Service Name">
                                <ItemTemplate>
                                    <asp:Literal ID="Literal1" runat="server" Text='<%#Eval("service_name").ToString().Replace("[%]",ch) %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField >
                            <asp:TemplateField  HeaderText="Package Type">
                                <ItemTemplate>
                                    <asp:Literal ID="Literal2" runat="server" Text='<%#Eval("package_type").ToString().Replace("[%]",ch) %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField  HeaderText="Package Text">
                                <ItemTemplate>
                                    <asp:Literal ID="Literal3" runat="server" Text='<%#Eval("package_text").ToString().Replace("[%]",ch) %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>    
                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                <asp:Literal ID="Literal4" runat="server" Text='<%#Eval("price").ToString().Replace("[%]",ch) %>'></asp:Literal>
                            </ItemTemplate>
                            </asp:TemplateField>   
                                
                            
                            <%--<asp:BoundField DataField="service_name" HeaderText="Service Name" ReadOnly="True" SortExpression="service_name" />
                            <asp:BoundField DataField="package_type" HeaderText="Package Type" ReadOnly="True" SortExpression="package_type" />
                            <asp:BoundField DataField="package_text" HeaderText="Package Text" ReadOnly="True" SortExpression="package_text" />
                            <asp:BoundField DataField="price" HeaderText="Price" ReadOnly="True" SortExpression="price" />--%>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </div>
        <div class="col-sm-1"></div>
        </div>
</asp:Content>
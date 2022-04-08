<%@ Page Title="" Language="C#" MasterPageFile="~/adminLoginMaster.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="FileTax.FAQ" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
    .table-condensed tr th {border: 0px solid #6e7bd9;color: white;background-color: #6e7bd9;}

    .table-condensed, .table-condensed tr td {border: 0px solid #000;}

    tr:nth-child(even) { background: #f8f7ff}

    tr:nth-child(odd) { background: #fff;}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row">
        <div class="col-sm-2">

        </div>
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
                    <asp:TextBox ID="txt_question" Class="form-control" runat="server" placeholder="Enter Question" Height="150" TextMode="MultiLine"></asp:TextBox>
                    <asp:HtmlEditorExtender ID="HtmlEditorExtender2" runat="server" TargetControlID="txt_question" EnableSanitization="false">
                                      </asp:HtmlEditorExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter question" ControlToValidate="txt_question" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <asp:TextBox ID="txt_answer" Class="form-control" runat="server" placeholder="Enter Answer" Height="200" TextMode="MultiLine"></asp:TextBox>
                    <asp:HtmlEditorExtender ID="HtmlEditorExtender1" runat="server" TargetControlID="txt_answer" EnableSanitization="false">
                                      </asp:HtmlEditorExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter answer" ControlToValidate="txt_answer" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>

            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                    <asp:Button ID="btn_save" class="btn btn-primary" runat="server" Text="Save"  ValidationGroup="a" OnClick="btn_save_Click" />
                        <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <asp:Button ID="btn_update" class="btn btn-primary" runat="server" Text="Update" OnClick="btn_update_Click"  />
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <asp:Button ID="btn_delete" class="btn btn-primary" runat="server" Text="Delete" OnClick="btn_delete_Click"  />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-2">

        </div>
    </div>

    <div class="row">
        <div class="col-sm-1">

        </div>
        <div class="col-sm-10">
            <asp:Panel ID="Panel1" runat="server" ScrollBars="Both">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed table-hover" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="" ><i style='font-size:24px' class='far'>&#xf044;</i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>                        

                        <asp:TemplateField HeaderText="Question">
                            <ItemTemplate>
                                <asp:Literal ID="Literal1" runat="server" Text='<%#Eval("question").ToString().Replace("[%]",ch) %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="AnswerAnswer">
                            <ItemTemplate>
                                <asp:Literal ID="Literal2" runat="server" Text='<%#Eval("answer").ToString().Replace("[%]",ch) %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </div>
        <div class="col-sm-1">

        </div>
    </div>
</asp:Content>

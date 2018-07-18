<%@ Page Title="Administration" Language="C#" MasterPageFile="~/KASMasterPage.master" AutoEventWireup="true" CodeFile="AdministrationPage.aspx.cs" Inherits="AdministrationPage" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
Administration
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" Runat="Server">
    <link href="styles.css" rel="stylesheet" />
    <link href="tables.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentBody" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="This page is visible to administrators only." Visible="false" Font-Size="X-Large" ForeColor="#ff3f3f"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


    <asp:Label ID="Label13" runat="server" Text="Application Information" Font-Bold="True" Font-Size="Large" ForeColor="#ff3f3f"></asp:Label>
    <br />

     <style type="text/css">
        .hidden-field
        {
           display:none;
        }
     </style>

    <%--<script>

 $(function(){

  $("input[id$='Delete']").click(function(){
   return confirm('Do you really want to delete that?');
  });
})


</script>--%>




    <asp:DetailsView ID="DetailsView1" runat="server" Height="80px" Width="1000px" AutoGenerateRows="False" DataKeyNames="applicaitonID" DataSourceID="ObjectDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" ForeColor="#333333"></AlternatingRowStyle>

        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True"></CommandRowStyle>

        <EditRowStyle BackColor="#999999"></EditRowStyle>

        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True"></FieldHeaderStyle>
        <Fields>
            <asp:BoundField DataField="applicaitonID" HeaderText="Application#" InsertVisible="False" ReadOnly="True" SortExpression="applicaitonID" >
                <%--<ItemStyle CssClass="hidden-field"/>--%>
            </asp:BoundField>
            <asp:BoundField DataField="userID" SortExpression="userID" >
                <ItemStyle CssClass="hidden-field"/>
             </asp:BoundField>
            <asp:TemplateField HeaderText="First Name" SortExpression="firstname">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("firstname") %>' ID="TextBox1"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("firstname") %>' ID="Label1"></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Size="Medium" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name" SortExpression="lastname">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("lastname") %>' ID="TextBox2"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("lastname") %>' ID="Label2"></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Size="Medium" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender" SortExpression="gender">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("gender") %>' ID="TextBox3"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("gender") %>' ID="Label3"></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Size="Medium" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone Number" SortExpression="phone">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("phone") %>' ID="TextBox4"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("phone") %>' ID="Label4"></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Size="Medium" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="email">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("email") %>' ID="TextBox5"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("email") %>' ID="Label5"></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Size="Medium" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address" SortExpression="address">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("address") %>' ID="TextBox6"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("address") %>' ID="Label6"></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Size="Medium" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Room Plan" SortExpression="roomplan">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("roomplan") %>' ID="TextBox7"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("roomplan") %>' ID="Label7"></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Size="Medium" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Family" SortExpression="family">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("family") %>' ID="TextBox8"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("family") %>' ID="Label8"></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Size="Medium" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Pets" SortExpression="pets">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("pets") %>' ID="TextBox9"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("pets") %>' ID="Label9"></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Size="Medium" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Parking Lot" SortExpression="parking">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("parking") %>' ID="TextBox10"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("parking") %>' ID="Label10"></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Size="Medium" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Move-in Date" SortExpression="moveindate">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("moveindate") %>' ID="TextBox11"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("moveindate") %>' ID="Label11"></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Size="Medium" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Apartment Room#" SortExpression="apartmentID">
                <EditItemTemplate>
                    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="apartmentID" DataValueField="apartmentID" SelectedValue='<%# Bind("apartmentID") %>'>
                        <asp:ListItem>&quot;&quot;</asp:ListItem>
                    </asp:ListBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("apartmentID") %>' ID="TextBox12"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("apartmentID") %>' ID="Label12"></asp:Label>
                </ItemTemplate>
                <ControlStyle Font-Size="Medium" />
            </asp:TemplateField>

            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>--%>
                    <%--&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>--%>
                </InsertItemTemplate>
                <ItemTemplate>
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>--%>
                    <%--&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>--%>
                    <%--&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>--%>
                    <br />
                    <asp:Button ID="Edit" runat="server" Text="Edit" CommandName="Edit" ForeColor="White" BackColor="#FF3F3F" Width="220px" />
                    <asp:Button ID="Delete" runat="server" Text="Delete" CommandName="Delete"  OnClientClick="return confirm('Are you sure you want to delete this application?');" AlternateText="Delete" ForeColor="White" BackColor="#FF3F3F" Width="220px" />
                    <%--<asp:Button ID="Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>--%>
                </ItemTemplate>
                <%--<ControlStyle ForeColor="#FF3F3F" />--%>
            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
    </asp:DetailsView>


    <br />


    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label14" runat="server" Text="Apartment Information" Font-Bold="True" Font-Size="Large" ForeColor="#ff3f3f"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource2" AutoGenerateColumns="False" DataKeyNames="apartmentID" CellPadding="4" ForeColor="#333333" GridLines="None" Height="80px" HorizontalAlign="Center" Width="1000px" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="apartmentID" HeaderText="Apartment" ReadOnly="True" SortExpression="apartmentID">
            </asp:BoundField>
            <asp:BoundField DataField="buildingID" HeaderText="Building" SortExpression="buildingID">
            </asp:BoundField>
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
            </asp:BoundField>
            <asp:BoundField DataField="assignment" HeaderText="Applicant/ Resident" SortExpression="assignment" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    <br />

    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label15" runat="server" Text="Apartment Feature" Font-Bold="True" Font-Size="Large" ForeColor="#ff3f3f"></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" DataSourceID="ObjectDataSource3" AutoGenerateColumns="False" DataKeyNames="apartmentID" CellPadding="4" ForeColor="#333333" GridLines="None" Height="80px" HorizontalAlign="Center" Width="1000px" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="apartmentID" HeaderText="Apartment Room#" ReadOnly="True" SortExpression="apartmentID">
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="buildingID" HeaderText="Building#" SortExpression="buildingID">
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="featureDescription" HeaderText="Feature description" SortExpression="featureDescription">
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>





    <br />





    <asp:ObjectDataSource runat="server" ID="ObjectDataSource3" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Team121DatasetTableAdapters.ApartmentInfoTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource2" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Team121DatasetTableAdapters.ApartmentTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_apartmentID" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="apartmentID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="buildingID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="status" Type="String"></asp:Parameter>
            <asp:Parameter Name="assignment" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="buildingID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="status" Type="String"></asp:Parameter>
            <asp:Parameter Name="assignment" Type="String"></asp:Parameter>
            <asp:Parameter Name="Original_apartmentID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Team121DatasetTableAdapters.Application_tTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_applicaitonID" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="firstname" Type="String"></asp:Parameter>
            <asp:Parameter Name="lastname" Type="String"></asp:Parameter>
            <asp:Parameter Name="gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="address" Type="String"></asp:Parameter>
            <asp:Parameter Name="roomplan" Type="String"></asp:Parameter>
            <asp:Parameter Name="family" Type="String"></asp:Parameter>
            <asp:Parameter Name="pets" Type="String"></asp:Parameter>
            <asp:Parameter Name="parking" Type="String"></asp:Parameter>
            <asp:Parameter Name="moveindate" Type="String"></asp:Parameter>
            <asp:Parameter Name="apartmentID" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="userID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="firstname" Type="String"></asp:Parameter>
            <asp:Parameter Name="lastname" Type="String"></asp:Parameter>
            <asp:Parameter Name="gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="address" Type="String"></asp:Parameter>
            <asp:Parameter Name="roomplan" Type="String"></asp:Parameter>
            <asp:Parameter Name="family" Type="String"></asp:Parameter>
            <asp:Parameter Name="pets" Type="String"></asp:Parameter>
            <asp:Parameter Name="parking" Type="String"></asp:Parameter>
            <asp:Parameter Name="moveindate" Type="String"></asp:Parameter>
            <asp:Parameter Name="apartmentID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Original_applicaitonID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>
    

</asp:Content>


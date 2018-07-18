<%@ Page Title="Search" Language="C#" MasterPageFile="~/KASMasterPage.master" AutoEventWireup="true" CodeFile="SearchPage.aspx.cs" Inherits="SearchPage" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
Search</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #apartment {
            width: -2147483648%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <%--<section id="comment"><h2>Start your search</h2><br /></section>--%>
    <p>Before your application, you can search available apartments on this page.</p>

    <fieldset id="apartment">
        <legend>Apartment Features</legend>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Room Plan"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="2b">2-Bedroom</asp:ListItem>
            <asp:ListItem Value="3b">3-Bedroom</asp:ListItem>
            <asp:ListItem Value="4b">4-Bedroom</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label2" runat="server" Text="Family"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Value="1">Yes</asp:ListItem>
            <asp:ListItem Value="0">No</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label3" runat="server" Text="Pets"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Value="1">Yes</asp:ListItem>
            <asp:ListItem Value="0">No</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label4" runat="server" Text="Parking"></asp:Label>
        <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem Value="1">Yes</asp:ListItem>
            <asp:ListItem Value="0">No</asp:ListItem>
        </asp:DropDownList>


     </fieldset>

    <asp:Button ID="Button1" runat="server" Text="Search" Height="20%" Width="16%" BackColor="#ff3f3f" ForeColor="#f8f8f8" />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="apartmentID" DataSourceID="ObjectDataSource2" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1000px" HorizontalAlign="Center" AllowPaging="True" Height="80px" ShowHeaderWhenEmpty="false">
        <%--<AlternatingRowStyle BackColor="#f8f8f8" ForeColor="#284775"></AlternatingRowStyle>--%>
        <Columns>
            <asp:BoundField DataField="buildingID" HeaderText="Building#" SortExpression="buildingID">
            <ControlStyle Font-Size="Medium" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="apartmentID" HeaderText="Apartment Room#" ReadOnly="True" SortExpression="apartmentID" >
            <ControlStyle Font-Size="Medium" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="FeatureDescription" HeaderText="Feature Description" ReadOnly="True" SortExpression="FeatureDescription">
            <ControlStyle Font-Size="Medium" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
        </Columns>
        <EmptyDataTemplate>No Record Available</EmptyDataTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#f8f8f8" Font-Bold="True" ForeColor="White"></FooterStyle>
        <HeaderStyle BackColor="#f8f8f8" Font-Bold="True" ForeColor="Gray" CssClass="climate"></HeaderStyle>
        <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White" VerticalAlign="Middle"></PagerStyle>
        <RowStyle BackColor="#f8f8f8" ForeColor="#333333"></RowStyle>
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>
        <SortedAscendingCellStyle BackColor="#f8f8f8"></SortedAscendingCellStyle>
        <SortedAscendingHeaderStyle BackColor="#f8f8f8"></SortedAscendingHeaderStyle>
        <SortedDescendingCellStyle BackColor="#f8f8f8"></SortedDescendingCellStyle>
        <SortedDescendingHeaderStyle BackColor="#f8f8f8"></SortedDescendingHeaderStyle>
    </asp:GridView>

    <asp:Label ID="Label5" runat="server" Text="There is not result according to your choice." Visible="false"></asp:Label>

    <asp:ObjectDataSource runat="server" ID="ObjectDataSource2" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByApartmentNumFeatureDescription" TypeName="Team121DatasetTableAdapters.ApartmentSearchTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="roomPlan" Type="String"></asp:ControlParameter>
            <asp:ControlParameter ControlID="DropDownList2" PropertyName="SelectedValue" Name="family" Type="Int32"></asp:ControlParameter>
            <asp:ControlParameter ControlID="DropDownList3" PropertyName="SelectedValue" Name="pets" Type="Int32"></asp:ControlParameter>
            <asp:ControlParameter ControlID="DropDownList4" PropertyName="SelectedValue" Name="parking" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByApartmentNumFeatureDescription" TypeName="Team121DatasetTableAdapters.Apartment1TableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" DefaultValue="%" Name="roomPlan" Type="String"></asp:ControlParameter>
            <asp:ControlParameter ControlID="DropDownList2" PropertyName="SelectedValue" DefaultValue="0" Name="family" Type="Int32"></asp:ControlParameter>
            <asp:ControlParameter ControlID="DropDownList3" PropertyName="SelectedValue" DefaultValue="0" Name="pets" Type="Int32"></asp:ControlParameter>
            <asp:ControlParameter ControlID="DropDownList4" PropertyName="SelectedValue" DefaultValue="0" Name="parking" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

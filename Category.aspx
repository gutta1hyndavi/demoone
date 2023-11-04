<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="WebAppAzureGit1.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
    <h2 id="title"><%: Title %>.</h2>
    <p>

        <asp:GridView ID="GvCategory" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CatId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="CatId" HeaderText="CatId" ReadOnly="True" SortExpression="CatId" />
                <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookDbConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CatId] = @CatId" InsertCommand="INSERT INTO [Category] ([CatId], [CatName]) VALUES (@CatId, @CatName)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [CatName] = @CatName WHERE [CatId] = @CatId">
            <DeleteParameters>
                <asp:Parameter Name="CatId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CatId" Type="Int32" />
                <asp:Parameter Name="CatName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CatName" Type="String" />
                <asp:Parameter Name="CatId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </p>
        </main>
</asp:Content>

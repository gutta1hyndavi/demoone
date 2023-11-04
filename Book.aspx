<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="WebAppAzureGit1.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p>

            <asp:GridView ID="Gvbook" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BookId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="BookId" HeaderText="BookId" ReadOnly="True" SortExpression="BookId" />
                    <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                    <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                    <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" />
                    <asp:BoundField DataField="BookCategory" HeaderText="BookCategory" SortExpression="BookCategory" />
                    <asp:BoundField DataField="BookPublisher" HeaderText="BookPublisher" SortExpression="BookPublisher" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookDbConnectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [BookId] = @BookId" InsertCommand="INSERT INTO [Book] ([BookId], [BookName], [BookPrice], [BookAuthor], [BookCategory], [BookPublisher]) VALUES (@BookId, @BookName, @BookPrice, @BookAuthor, @BookCategory, @BookPublisher)" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [BookName] = @BookName, [BookPrice] = @BookPrice, [BookAuthor] = @BookAuthor, [BookCategory] = @BookCategory, [BookPublisher] = @BookPublisher WHERE [BookId] = @BookId">
                <DeleteParameters>
                    <asp:Parameter Name="BookId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="BookId" Type="Int32" />
                    <asp:Parameter Name="BookName" Type="String" />
                    <asp:Parameter Name="BookPrice" Type="Double" />
                    <asp:Parameter Name="BookAuthor" Type="Int32" />
                    <asp:Parameter Name="BookCategory" Type="Int32" />
                    <asp:Parameter Name="BookPublisher" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="BookName" Type="String" />
                    <asp:Parameter Name="BookPrice" Type="Double" />
                    <asp:Parameter Name="BookAuthor" Type="Int32" />
                    <asp:Parameter Name="BookCategory" Type="Int32" />
                    <asp:Parameter Name="BookPublisher" Type="Int32" />
                    <asp:Parameter Name="BookId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </p>
        </main>
</asp:Content>

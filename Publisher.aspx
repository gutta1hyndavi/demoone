<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Publisher.aspx.cs" Inherits="WebAppAzureGit1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p>

            <asp:GridView ID="Gvpublisher" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PId" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" SortExpression="PId" />
                    <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookDbConnectionString %>" DeleteCommand="DELETE FROM [Publisher] WHERE [PId] = @PId" InsertCommand="INSERT INTO [Publisher] ([PId], [PName]) VALUES (@PId, @PName)" SelectCommand="SELECT * FROM [Publisher]" UpdateCommand="UPDATE [Publisher] SET [PName] = @PName WHERE [PId] = @PId">
                <DeleteParameters>
                    <asp:Parameter Name="PId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PId" Type="Int32" />
                    <asp:Parameter Name="PName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PName" Type="String" />
                    <asp:Parameter Name="PId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </p>
    </main>
</asp:Content>

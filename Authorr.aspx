<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Authorr.aspx.cs" Inherits="WebAppAzureGit1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AuId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="AuId" HeaderText="AuId" ReadOnly="True" SortExpression="AuId" />
                    <asp:BoundField DataField="AuName" HeaderText="AuName" SortExpression="AuName" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookDbConnectionString %>" DeleteCommand="DELETE FROM [Authorr] WHERE [AuId] = @AuId" InsertCommand="INSERT INTO [Authorr] ([AuId], [AuName]) VALUES (@AuId, @AuName)" ProviderName="<%$ ConnectionStrings:BookDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Authorr]" UpdateCommand="UPDATE [Authorr] SET [AuName] = @AuName WHERE [AuId] = @AuId">
                <DeleteParameters>
                    <asp:Parameter Name="AuId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AuId" Type="Int32" />
                    <asp:Parameter Name="AuName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AuName" Type="String" />
                    <asp:Parameter Name="AuId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </p>
    </main>
</asp:Content>

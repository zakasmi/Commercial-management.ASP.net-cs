<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Commande.aspx.cs" Inherits="GestCommerciale.WebForm4" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 482px;
        }
        .auto-style10 {
            width: 482px;
            height: 29px;
        }
        .auto-style11 {
            height: 29px;
            text-align: center;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            width: 482px;
            text-align: center;
        }
        .auto-style14 {
            width: 482px;
            text-align: center;
            height: 34px;
        }
        .auto-style15 {
            text-align: center;
            height: 34px;
        }
        .auto-style16 {
            margin-right: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExempleConnectionString %>" DeleteCommand="DELETE FROM [Commande] WHERE [idCommande] = @idCommande" InsertCommand="INSERT INTO [Commande] ([NomComande], [DateCmd], [idClient], [PrixTotale]) VALUES (@NomComande, @DateCmd, @idClient, @PrixTotale)" SelectCommand="SELECT * FROM [Commande]" UpdateCommand="UPDATE [Commande] SET [NomComande] = @NomComande, [DateCmd] = @DateCmd, [idClient] = @idClient, [PrixTotale] = @PrixTotale WHERE [idCommande] = @idCommande">
            <DeleteParameters>
                <asp:Parameter Name="idCommande" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NomComande" Type="String" />
                <asp:Parameter DbType="Date" Name="DateCmd" />
                <asp:Parameter Name="idClient" Type="Int32" />
                <asp:Parameter Name="PrixTotale" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NomComande" Type="String" />
                <asp:Parameter DbType="Date" Name="DateCmd" />
                <asp:Parameter Name="idClient" Type="Int32" />
                <asp:Parameter Name="PrixTotale" Type="Decimal" />
                <asp:Parameter Name="idCommande" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ExempleConnectionString %>" DeleteCommand="DELETE FROM [DetailLigne] WHERE [idCommande] = @idCommande AND [IdProduit] = @IdProduit" InsertCommand="INSERT INTO [DetailLigne] ([idCommande], [IdProduit], [QteDemande]) VALUES (@idCommande, @IdProduit, @QteDemande)" SelectCommand="SELECT * FROM [DetailLigne]
where [idCommande]= @IdCommande" UpdateCommand="UPDATE [DetailLigne] SET [QteDemande] = @QteDemande WHERE [idCommande] = @idCommande AND [IdProduit] = @IdProduit">
            <DeleteParameters>
                <asp:Parameter Name="idCommande" Type="Int32" />
                <asp:Parameter Name="IdProduit" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idCommande" Type="Int32" />
                <asp:Parameter Name="IdProduit" Type="Int32" />
                <asp:Parameter Name="QteDemande" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="IdCommande" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="QteDemande" Type="Int32" />
                <asp:Parameter Name="idCommande" Type="Int32" />
                <asp:Parameter Name="IdProduit" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <table >
            <tr>
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NomComande" DataValueField="idCommande" Height="16px" Width="130px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:GridView ID="GV_DetaCom" runat="server" Width="544px" AutoGenerateColumns="False" DataKeyNames="idCommande,IdProduit" DataSourceID="SqlDataSource2" CellPadding="4" CssClass="auto-style16" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="idCommande" HeaderText="idCommande" ReadOnly="True" SortExpression="idCommande" />
                            <asp:BoundField DataField="IdProduit" HeaderText="IdProduit" ReadOnly="True" SortExpression="IdProduit" />
                            <asp:BoundField DataField="QteDemande" HeaderText="QteDemande" SortExpression="QteDemande" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11">
                    <asp:Label ID="Label1" runat="server" Text="Prix Total"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="BTN_Calculer" runat="server" Text="Calculer" Width="114px" OnClick="BTN_Calculer_Click" />
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="TB_PrixTotal" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="BTN_Afficher" runat="server" OnClick="BTN_Afficher_Click" Text="Afficher Etat" Width="117px" />
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReuseParameterValuesOnRefresh="True" />
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
            </tr>
        </table>
    
    <p>
    </p>
    <p>
    </p>
</asp:Content>

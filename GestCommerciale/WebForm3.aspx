<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="GestCommerciale.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 100%;
        border: 1px solid #D4D0C8;
    }
    .auto-style8 {
        width: 140px;
        height: 37px;
    }
    .auto-style9 {
            width: 140px;
            text-align: right;
        }
    .auto-style10 {
        width: 140px;
        text-align: right;
        height: 26px;
    }
    .auto-style19 {
        width: 68px;
    }
    .auto-style20 {
        height: 26px;
        width: 68px;
    }
    .auto-style21 {
        height: 32px;
        width: 68px;
        text-align: right;
    }
    .auto-style22 {
        width: 134px;
    }
    .auto-style23 {
        height: 26px;
        width: 134px;
        text-align: center;
    }
    .auto-style24 {
        width: 134px;
        text-align: center;
        height: 37px;
    }
    .auto-style25 {
        height: 32px;
        width: 134px;
        text-align: right;
    }
    .auto-style26 {
        width: 140px;
    }
    .auto-style27 {
        height: 26px;
        width: 140px;
    }
    .auto-style28 {
        width: 140px;
        text-align: center;
        height: 37px;
    }
    .auto-style29 {
        height: 32px;
        width: 140px;
    }
    .auto-style30 {
        text-align: center;
    }
    .auto-style31 {
        width: 144px;
    }
    .auto-style32 {
        height: 26px;
        width: 144px;
    }
    .auto-style33 {
        width: 144px;
        text-align: center;
        height: 37px;
    }
    .auto-style34 {
        height: 32px;
        width: 144px;
        text-align: right;
    }
    .auto-style35 {
        width: 68px;
        height: 37px;
    }
    .auto-style36 {
        width: 134px;
        text-align: center;
    }
        .auto-style37 {
            width: 923px;
            height: 30px;
            text-align: center;
            border: 1px solid #D4D0C8;
        }
        .auto-style38 {
            height: 32px;
            width: 140px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Welcome Client"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExempleConnectionString %>" DeleteCommand="DELETE FROM [Client] WHERE [idClient] = @idClient" InsertCommand="INSERT INTO [Client] ([NomClient], [PrénomClient], [DateNaissance], [Adresse]) VALUES (@NomClient, @PrénomClient, @DateNaissance, @Adresse)" SelectCommand="SELECT * FROM [Client]" UpdateCommand="UPDATE [Client] SET [NomClient] = @NomClient, [PrénomClient] = @PrénomClient, [DateNaissance] = @DateNaissance, [Adresse] = @Adresse WHERE [idClient] = @idClient">
        <DeleteParameters>
            <asp:ControlParameter ControlID="TB_IdClient" Name="idClient" PropertyName="Text" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TB_NomClient" Name="NomClient" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TB_PrenomCLi" Name="PrénomClient" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TB_DateNaissa" DbType="Date" Name="DateNaissance" PropertyName="Text" />
            <asp:ControlParameter ControlID="TB_Adresse" Name="Adresse" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="TB_NomClient" Name="NomClient" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TB_PrenomCLi" Name="PrénomClient" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TB_DateNaissa" DbType="Date" Name="DateNaissance" PropertyName="Text" />
            <asp:ControlParameter ControlID="TB_Adresse" Name="Adresse" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TB_IdClient" Name="idClient" PropertyName="Text" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
<br />
<table class="auto-style37">
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label2" runat="server" Text="Id Client"></asp:Label>
        </td>
        <td class="auto-style31">
            <asp:TextBox ID="TB_IdClient" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label3" runat="server" Text="Nom Client"></asp:Label>
        </td>
        <td class="auto-style31">
            <asp:TextBox ID="TB_NomClient" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style36">
            <asp:Button ID="BTN_Ajouter" runat="server" Text="Ajouter" OnClick="BTN_Ajouter_Click" Width="87px" />
        </td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label4" runat="server" Text="prenom client"></asp:Label>
        </td>
        <td class="auto-style31">
            <asp:TextBox ID="TB_PrenomCLi" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style36">
            <asp:Button ID="BTN_Modifier" runat="server" Text="Modifier" OnClick="BTN_Modifier_Click" Width="87px" />
        </td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label5" runat="server" Text="Date Naissance"></asp:Label>
        </td>
        <td class="auto-style31">
            <asp:TextBox ID="TB_DateNaissa" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style36">
            <asp:Button ID="BTN_Supprimer" runat="server" Text="Supprimer" OnClick="BTN_Supprimer_Click" />
        </td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10">
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="TB_Adresse" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style23">
            <asp:Button ID="BTN_Vider" runat="server" Text="Vider" OnClick="BTN_Vider_Click" Width="87px" />
        </td>
        <td class="auto-style27">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style33">
        </td>
        <td class="auto-style35">
        </td>
        <td class="auto-style24">
        </td>
        <td class="auto-style28">
        </td>
    </tr>
    <tr>
        <td class="auto-style38">
            <asp:Button ID="BTN_Debut" runat="server" OnClick="BTN_Debut_Click" Text="&lt;&lt;" />
        </td>
        <td class="auto-style34">
            <asp:Button ID="BTN_Prec" runat="server" Text="&lt;" OnClick="BTN_Prec_Click" />
        </td>
        <td class="auto-style21">
            <asp:Button ID="BTN_Suiv" runat="server" Text="&gt;" OnClick="BTN_Suiv_Click" />
        </td>
        <td class="auto-style25">
            <asp:Button ID="BTN_Fin" runat="server" Text="&gt;&gt;" OnClick="BTN_Fin_Click" />
        </td>
        <td class="auto-style29">
            &nbsp;</td>
    </tr>
</table>
    <br />
    <div class="auto-style30">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idClient" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="idClient" HeaderText="idClient" InsertVisible="False" ReadOnly="True" SortExpression="idClient" />
            <asp:BoundField DataField="NomClient" HeaderText="NomClient" SortExpression="NomClient" />
            <asp:BoundField DataField="PrénomClient" HeaderText="PrénomClient" SortExpression="PrénomClient" />
            <asp:BoundField DataField="DateNaissance" HeaderText="DateNaissance" SortExpression="DateNaissance" />
            <asp:BoundField DataField="Adresse" HeaderText="Adresse" SortExpression="Adresse" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

</div>

</asp:Content>

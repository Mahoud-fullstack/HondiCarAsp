<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HondiCarASP.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Asp.net</title>
    
    <style type="text/css">
        .auto-style1 {
text-align: center;
color: royalblue;
}
.auto-style2 {
width: 417px;
}
.auto-style4 {
height: 55px;
width: 97px;
}
.auto-style6 {
width: 273px;

}
.auto-style7 {
height: 55px;
width: 273px;
}
.auto-style9 {
width: 945px;
height: 581px;
}
.auto-style10 {
width: 97px;
}
.auto-style11 {
width: 500px;
}
.auto-style12 {
height: 453px;
            width: 326px;
        }
.stylePanel {
border-radius:50px;
}
.tecboc {
border-radius:10px;
}
        #TextArea1 {
            width: 448px;
            height: 71px;
        }
        .auto-style16 {
            width: 97px;
            height: 35px;
        }
        .auto-style17 {
            width: 273px;
            height: 35px;
        }
    </style>
</head>
<body style="background-color:lightgrey">
    <form id="form1" runat="server" class="auto-style9">
        <div> 
            <h1 class="auto-style2"> Honda Build & Price</h1>
       </div>
            <hr class="auto-style2"/>

            <table class="auto-style11" >

                <tr style="vertical-align:top">
                    <td class="auto-style12">
                        <asp:Panel ID="Pancar" runat="server" CssClass="stylePanel" BackColor="#FFA07A" GroupingText="Car Information"
                             Height="100%" Width="45%">
                            <table class="auto-style12">
                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="LabelCity" runat="server" AccessKey="C" Text="City" AssociatedControlID="txtCity"></asp:Label>

                                    </td>
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtCity" runat="server" CssClass="tecboc" Width="200px" OnTextChanged="txtCity_TextChanged"></asp:TextBox>

                                    </td>
                                </tr>
                                 <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="LabelZipcode" runat="server" AccessKey="B" Text="Zip Code" AssociatedControlID="txtZip"></asp:Label>

                                    </td>
                                    <td class="auto-style6">
                                      <asp:TextBox ID="txtZip"  runat="server"  CssClass ="tecboc"  Width="200px" > </asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="Labelscar" runat="server" Text="Select Car Model"></asp:Label>
                                    </td>
                                    <td class="auto-style10">
                                        <asp:DropDownList ID="DropCar" runat="server" CssClass="tecboc" AutoPostBack="true"  Width="200px">
                                            <asp:ListItem> Select a car</asp:ListItem>
                                        </asp:DropDownList>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="Labelcolor" runat="server" Text="Interior Color"></asp:Label>
                                    </td>
                                        <td class="auto-style6">
                                            <asp:ListBox ID="Listcolor" runat="server" AutoPostBack="true" CssClass="tecboc" Width="200px"  ></asp:ListBox>
                         
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="LabelAcces" runat="server" Text="accessories"></asp:Label>
                                    </td>
                                    <td class="auto-style6">
                                        <asp:CheckBoxList ID="ChicklistAccess" runat="server" AutoPostBack="true" Width="145px" Height="90px"  ></asp:CheckBoxList> 
                                            

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">
                                        <asp:Label ID="Labelwarranty" runat="server" Text="warranty"></asp:Label>

                                    </td>
                                    <td class="auto-style17">
                                        <asp:RadioButtonList ID="CarlistWaranty" runat="server" AutoPostBack="true"  ></asp:RadioButtonList>
                                           

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="LabelDelerCon" runat="server"  Text="Dealer contact you by phone?"></asp:Label>

                                    </td>
                                    <td class="auto-style6">
                                        <asp:CheckBox ID="ChDealer" runat="server" AutoPostBack="true"  />
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="LabelPhone" runat="server" Text="Phone Number" AssociatedControlID="txtphone"></asp:Label>

                                    </td>
                                    <td class="auto-style7"> 
                                        <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" CssClass="tecboc" Width="200px"  ></asp:TextBox>
                                            
                                    </td>
                                </tr>
                             

                            </table>

                        </asp:Panel>
                    </td>
                    <%-- end of first column --%>
                    <td class="auto-style12">
                        <asp:Panel ID="panpricing" runat="server" CssClass="auto-style1" GroupingText="Pricing" BackColor="#FA8072"
                             Height="100%" Width="289px">
                            <asp:Literal ID="litPrice" runat="server"></asp:Literal>
                            <asp:Button ID="btncon" runat="server" Text="Conclude" OnClick="btncon_Click" />
                        </asp:Panel>


                    </td>
                    <td class="auto-style12">
                        <asp:Panel ID="panfinal" runat="server" CssClass="auto-style1" GroupingText="Final Information"
                             BackColor="#E9967A" Height="100%" Width="290px">
                            <asp:Literal ID="litInfo" runat="server"></asp:Literal>

                        </asp:Panel>


                    </td>

            </table>
        
    </form>
    
</body>
</html>
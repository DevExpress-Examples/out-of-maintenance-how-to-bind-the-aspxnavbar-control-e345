<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ASPxperience_NavBar_Binding_Binding" %>

<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web" TagPrefix="dxnb" %>
<%-- EndRegion --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>How to bind the ASPxNavBar control</title>
</head>
<body>
    <form id="form1" runat="server">
        
    <div>
        <dxnb:ASPxNavBar ID="nbNavBar" runat="server" DataSourceID="XmlDataSource1" Width="250px">
            <GroupHeaderTemplate>
                <strong style="color: #F82F61;">
                    <%# !string.IsNullOrEmpty(Container.Group.Name) ? Container.Group.Name : Container.Group.Text %>
                </strong>
            </GroupHeaderTemplate>
            <ItemTemplate>
                <div style="border: 1px dashed #F82F61; padding: 2px 8px; cursor: pointer;" onclick="window.location = '<%# Container.Item.NavigateUrl %>';">
                    <a href="<%# Container.Item.NavigateUrl %>">
                        <%# Container.Item.Text %>
                    </a>
                </div>
            </ItemTemplate>
        </dxnb:ASPxNavBar>
        
        <%-- Data Source --%>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/NavBarCameras.xml" XPath="Cameras/*" />
    </div>
    </form>
</body>
</html>

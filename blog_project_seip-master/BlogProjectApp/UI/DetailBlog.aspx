<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Master.Master" AutoEventWireup="true" CodeBehind="DetailBlog.aspx.cs" Inherits="BlogProjectApp.UI.DetailBlog" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMiddle" runat="server">
    
    <p runat="server" >Post By : <span runat="server" id="uname"> </span></p>
    <asp:Repeater ID="detailPost" runat="server" OnItemCommand="detailPost_ItemCommand">
        <ItemTemplate>

            <h4><%#Eval("Title") %></h4>
            
            <p runat="server">Post Date : <b><span runat="server"><%# Eval("Date")%></span></b></p>
            <p><%#Eval("Description") %></p>


        </ItemTemplate>
    </asp:Repeater>
    <div class="row">
        <asp:Repeater ID="showAllComment" runat="server">
        
        <ItemTemplate>

            <h4>Commented By :<%#Eval("CommentUserName") %></h4>
            <p> <b>Post Date : <b><span runat="server"><%# Eval("Date")%></span></b></p>
            <p><%#Eval("CommentDescription") %></p>


        </ItemTemplate>
    </asp:Repeater>

    </div>
    <div class="row">
        <form runat="server">

            <textarea id="commentDescription" name="commentDescription" class="form-control" rows="3"> <%if (Session["user"] == null)
              { %> Please Login to Comment<% } %></textarea><br />
            <%if (Session["user"] != null)
              { %>
            <asp:Button ID="commentButton" runat="server" Text="Comment" OnClick="commentButton_Click" /><% }
              else
              { %>
                                <asp:Button ID="redirectToLoginButton" runat="server" Text="Comment" OnClick="redirectToLoginButton_Click" />
             <% } %>
        </form>
    </div>

</asp:Content>

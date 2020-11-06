<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Rucruiter_profile.aspx.cs" Inherits="JobHunt.Rucruiter_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h1 style="color:black" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Recruiter Profile</h1>
    <div class="container" >
       <div class="row justify-content-center custom-margin">
           <div class="col-md-6 mx-auto">
               <td> <asp:LinkButton ID="LinkButton2" runat="server"  OnClick="LinkButton1_Click">Logout</asp:LinkButton> </td>
    <table>
        <tr>
            <td>
                
               <h2 style="color:black">Welcome to Recruiter Page,   
               <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" ForeColor="#0033CC"></asp:Label></h2>
            </td>
            
                </tr>
     </table>
    <div>

        <asp:DetailsView ID="DetailsView1" runat="server" Height="69px" Width="340px" AutoGenerateRows="false">
            <Fields>
                <asp:BoundField DataField ="company_name" HeaderText="Company Name" />
                <asp:BoundField DataField="contact_person" HeaderText="Contact Person Name" />
                <asp:BoundField DataField ="company_contact" HeaderText="Company Contact No." />
                <asp:BoundField DataField="company_address" HeaderText="Company Address" />
                <asp:BoundField DataField ="company_email" HeaderText="Company E-mail" />
                <asp:BoundField DataField="company_details" HeaderText="Company Information" />
            </Fields>

        </asp:DetailsView>


        </div>
               </div>
           </div>
        
    </div>
</asp:Content>

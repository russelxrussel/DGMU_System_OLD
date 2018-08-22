﻿<%@ Page Title="" Language="C#" MasterPageFile="~/DGMU.Master" AutoEventWireup="true" CodeBehind="Branch_Master.aspx.cs" Inherits="DGMU_System.Branch_Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">



</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">



<div class="container container_content">

     <script type="text/javascript">
         $(document).ready(function() {

             $.validator.setDefaults({
                 
                 errorClass:'help-block',

                 highlight: function (element)
                 {
                     $(element)
                     .closest('.form-group')
                     .addClass('has-error');
                 },
                 unhighlight: function (element) {
                     $(element)
                     .closest('.form-group')
                     .removeClass('has-error')
                     .addClass('has-success');
                 }
             });

             $("#MasterForm").validate({
                 rules: {
                     <%=txtBranchCode.UniqueID %>: {
                         required: true,
                         minlength: 6
                        
                     },

                     <%=txtBranchName.UniqueID %>: {
                         required: true
                     }
                    
                    
                
                 }, messages: {
                    <%=txtBranchCode.UniqueID %>:{  
                        required: "Branch Code is required." ,
                        minlength: "Required 6 Characters"
                    },

                      <%=txtBranchName.UniqueID %>: {
                          required: "Branch Name is required."
                      }
                 
                 }
                 
         });
     });
    </script>
 
    <asp:UpdatePanel runat="server" ID="upMain" UpdateMode="Conditional">
<ContentTemplate> 

<div class="panel panel-default">
<div class="panel-heading">
 <div class="row">
 
     <div class="col-md-8">
        Branch Data Information
     </div>
    
 </div>   
   

    
</div>
<div class="panel-body">


<div class="row">

<div class="col-md-4">
<div class="panel panel-warning right">
<div class="panel-heading">

    <div class="row">
        <div class="col-md-3">

            <asp:LinkButton runat="server" ID="lnkNew" CssClass="btn btn-primary btn-sm" OnClick="lnkNew_Click"><span class="glyphicon glyphicon-plus"></span> New</asp:LinkButton>

        </div>



        <div class="col-md-6">
            <i>
                <asp:Label runat="server" ID="lblActionStatus" CssClass="text-primary small"></asp:Label></i>
        </div>

        <div class="col-md-3 text-right">
            <asp:Button runat="server" ID="U_Save" CssClass="btn btn-sm btn-success" OnClick="U_Save_Click" Text="Update" />
        </div>




    </div>

</div><!-- End of Panel Heading -->
<div class="panel-body">
   
    <!--Inputs-->
    <asp:Panel runat="server" ID="panelInputs" Enabled="false">
    <ul class="list-group">
   
    <li class="list-group-item small">
   
   
            <div class="form-group has-error">
                    <asp:TextBox runat="server" ID="txtBranchCode" CssClass="form-control text-uppercase" MaxLength="6" placeholder="Branch Code"></asp:TextBox>
               
                 </div>
  

    </li>

         <li class="list-group-item small">
   

            <div class="form-group has-error">
                    <asp:TextBox runat="server" ID="txtBranchName" CssClass="form-control text-uppercase" placeholder="Branch Name"></asp:TextBox>
                </div>
           
   

    </li>

    <li class="list-group-item">
   
   
           
                <div class="form-group">
                    <asp:DropDownList runat="server" ID="ddPartner" CssClass="dropdown form-control"></asp:DropDownList>
                </div>
           
  

    </li>

         <li class="list-group-item">
   
   
           
                <div class="form-group">
                    <asp:DropDownList runat="server" ID="ddLocationArea" CssClass="dropdown form-control"></asp:DropDownList>
                </div>
           
  

    </li>

    <li class="list-group-item">
  
           
                    <asp:TextBox runat="server" ID="txtAddress" TextMode="MultiLine" CssClass="form-control" Height="70px" Rows="2" placeholder="Address"></asp:TextBox>

    </li>

          <li class="list-group-item">
   
   
          
                <div class="form-group">
                    <asp:TextBox runat="server" ID="txtContactNumbers" CssClass="form-control text-uppercase" placeholder="Contact Number"></asp:TextBox>
                </div>
            
  
    </li>
      <li class="list-group-item">
   
   
           
                <div class="form-group">
                    <asp:TextBox runat="server" ID="txtSupervisor" CssClass="form-control text-uppercase" placeholder="Supervisor"></asp:TextBox>
                </div>
           
  

    </li>

    </ul>
    </asp:Panel>
  
    
   
    
    
</div>


</div>
 

</div><!--End of Left Column -->


<div class="col-md-8">

<div class="panel panel-warning right">
<div class="panel-heading">
<div class="row">

<div class="col-md-3">
List of Branches
</div>
<div class="col-md-3">
 </div>
<div class="col-md-6 text-right">
            <div class="input-group input-group-sm">
                <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control text-uppercase"
                    placeholder="Search">
                </asp:TextBox>
                <div class="input-group-btn">
                    <asp:LinkButton runat="server" ID="U_Search" CssClass="btn btn-primary" 
                        onclick="U_Search_Click"><span class="glyphicon glyphicon-search"></span> FIND</asp:LinkButton>
                </div>
            </div>
        </div>

</div>
</div>
<div class="panel-body">


<asp:Panel runat="server" id="panelList" ScrollBars="Vertical" Height="450px">

<asp:GridView ID="gvBranchList"  runat="server"
        CssClass="table table-hover table-condensed" AutoGenerateColumns="False" 
        ShowHeader="true"
        AlternatingRowStyle-CssClass="bg-warning"
        GridLines="None" OnRowCommand="gvPartnerList_RowCommand">
       
        <Columns>

          <asp:BoundField DataField="BranchID" 
               ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"
               ReadOnly="true">
                  </asp:BoundField>
             <asp:TemplateField>
            <ItemTemplate>
            <asp:LinkButton runat="server" ID="lnkEdit" CssClass="btn btn-primary btn-sm" CommandName="Select"><span class="glyphicon glyphicon-pencil"></span> Edit</asp:LinkButton>
            </ItemTemplate>
            
           
           
           </asp:TemplateField>
          
            <asp:BoundField DataField="BranchCode" HeaderText="Code" />
            <asp:BoundField DataField="BranchName" HeaderText="Name" />
            <asp:BoundField DataField="PartnerName" HeaderText="Affiliate" />
            <asp:BoundField DataField="LAName" HeaderText="AREA" />
            <asp:BoundField DataField="B_Address" HeaderText="Address" />
       
     

         
          </Columns>
           
      
    </asp:GridView>

</asp:Panel>



</div><!--End of Panel Body -->
</div>


</div><!--End of Right Panel -->


</div><!--End of Main Row-->


</div>
</div>

 <div class="modal fade" id="msgSuccessModal">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-header bg-success">
                     <button class="close" data-dismiss="modal">
                         &times;</button>
                     <h4 class="modal-title">
                         DGMU Enterprises System</h4>
                 </div>
                 <div class="modal-body">
                     <h4 class="text-success">
                         <span class="glyphicon glyphicon-saved"></span>&nbsp;
                         <asp:Label runat="server" ID="lblSuccessMessage"></asp:Label></h4>
                 </div>
                 <div class="modal-footer">
                 </div>
             </div>
         </div>
     </div>     

   
    <div class="modal fade" id="msgErrorModal">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-header bg-danger">
                     <button class="close" data-dismiss="modal">
                         &times;</button>
                     <h4 class="modal-title">
                         DGMU Enterprises System</h4>
                 </div>
                 <div class="modal-body">
                     <h4 class="text-danger">
                         <span class="glyphicon glyphicon-remove"></span>&nbsp;
                         <asp:Label runat="server" ID="lblErrorMessage"></asp:Label></h4>
                 </div>
                 <div class="modal-footer">
                 </div>
             </div>
         </div>
     </div>       
  </ContentTemplate>
    </asp:UpdatePanel>
</div>


    

</asp:Content>
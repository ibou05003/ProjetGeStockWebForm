<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetGeStockWebForm._Default" %>
<asp:Content ID="TitleContent" ContentPlaceHolderID="TitleContent" runat="server">
    <h4><%: Title %></h4>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        
    <div class="card">
      <div class="card-body">
          <div class="row ml-2 mr-2">
            <div class="col-12">
            <!-- Info boxes -->
            <div class="row mr-0 ml-0 pr-0 pl-0">
              <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                  <span class="info-box-icon bg-info elevation-1"><i class="fas fa-user"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">Fournisseurs</span>
                    <span class="info-box-number">
                      200
                    </span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <!-- /.col -->
              <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                  <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-coins"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">Total Achat</span>
                    <span class="info-box-number">2 345 500</span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <!-- /.col -->

              <!-- fix for small devices only -->
              <div class="clearfix hidden-md-up"></div>

              <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                  <span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">Total Ventes</span>
                    <span class="info-box-number">3 100 852</span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <!-- /.col -->
              <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                  <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">Clients</span>
                    <span class="info-box-number">2 000</span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <!-- /.col -->
            </div>
            </div>
            <!-- /.row -->
          </div>
      </div>
    </div>
    <!-- jQuery -->
    <script src='<%=ResolveUrl("~/plugins/jquery/jquery.min.js") %>'></script>
<!-- jQuery UI 1.11.4 -->
    <script src='<%=ResolveUrl("~/plugins/jquery-ui/jquery-ui.min.js") %>'></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
    <script src='<%=ResolveUrl("~/plugins/bootstrap/js/bootstrap.bundle.min.js") %>'></script>
<!-- ChartJS -->
    <script src='<%=ResolveUrl("~/plugins/chart.js/Chart.min.js") %>'></script>
<!-- Sparkline -->
    <script src='<%=ResolveUrl("~/plugins/sparklines/sparkline.js") %>'></script>
<!-- JQVMap -->
    <script src='<%=ResolveUrl("~/plugins/jqvmap/jquery.vmap.min.js") %>'></script>
    <script src='<%=ResolveUrl("~/plugins/jqvmap/maps/jquery.vmap.usa.js") %>'></script>
<!-- jQuery Knob Chart -->
    <script src='<%=ResolveUrl("~/plugins/jquery-knob/jquery.knob.min.js") %>'></script>
<!-- daterangepicker -->
    <script src='<%=ResolveUrl("~/plugins/moment/moment.min.js") %>'></script>
    <script src='<%=ResolveUrl("~/plugins/daterangepicker/daterangepicker.js") %>'></script>
<!-- Tempusdominus Bootstrap 4 -->
    <script src='<%=ResolveUrl("~/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js") %>'></script>
<!-- Summernote -->
    <script src='<%=ResolveUrl("~/plugins/summernote/summernote-bs4.min.js") %>'></script>
<!-- overlayScrollbars -->
    <script src='<%=ResolveUrl("~/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js") %>'></script>
<!-- AdminLTE App -->
    <script src='<%=ResolveUrl("~/dist/js/adminlte.js") %>'></script>
<!-- AdminLTE for demo purposes -->
    <script src='<%=ResolveUrl("~/dist/js/demo.js") %>'></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src='<%=ResolveUrl("~/dist/js/pages/dashboard.js") %>'></script>
</asp:Content>

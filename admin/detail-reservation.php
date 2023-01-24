<?php
    $_POST["role"] = 'admin';
    
    include "../service.php";
    $products = get_where("reservations", 'id', $_GET['s'] );
    $reservations = query("SELECT times.time, reservations.*, product.price, members.username, members.email, members.phone_number, product.title FROM times, product, members, reservations WHERE times.id=reservations.time_id AND members.id=reservations.member_id AND reservations.product_id=product.id AND reservations.id= ".$_GET['s']);
    // dd($reservations);
    // Declare for this page
    $_SESSION["title"] = "Product";
?>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<?php include "partial_head.php" ?>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        <!-- ============================================================== -->
        <?php include "partial_header.php" ?>
            <!-- End Topbar header -->
            <!-- Left Sidebar - style you can find in sidebar.scss  -->
            <?php include "partial_sidebar.php" ?>
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Tabs</h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html" class="text-muted">Home</a></li>
                                    <li class="breadcrumb-item text-muted active" aria-current="page">Library</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <div class="col-5 align-self-center">
                        <div class="customize-input float-right">
                            <select class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">
                                <option selected>Aug 19</option>
                                <option value="1">July 19</option>
                                <option value="2">Jun 19</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">
                        <h4 class="mb-4">Accordions</h4>
                    </div> <!-- end col -->
                </div>
                <!-- end row -->

                <div class="row">
                    <div class="col-lg-10">

                        <div id="accordion" class="custom-accordion mb-4">

                            <div class="card mb-0">
                                <div class="card-header" >
                                    <h5 class="m-0">
                                        <a class="custom-accordion-title d-block pt-2 pb-2" data-toggle="collapse"
                                            href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            Pengguna <span class="float-right"><i
                                                    class="mdi mdi-chevron-down accordion-arrow"></i></span>
                                        </a>
                                    </h5>
                                </div>
                                <div  class="collapse show" aria-labelledby="headingOne"
                                    data-parent="#accordion">
                                    <div class="card-body">
                                        
                                                
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1"><?= $reservations[0]['username']?></h6>
                                                    <span class="font-12 text-nowrap d-block text-muted"><?= $reservations[0]['email']?></span>
                                                    <span class="font-12 text-nowrap d-block text-muted"><?= $reservations[0]['phone_number']?></span>
                                                </div>
                                            


                                        
                                    </div>
                                </div>
                            </div> <!-- end card-->

                            <div class="card mb-0">
                                <div class="card-header" >
                                    <h5 class="m-0">
                                        <a class="custom-accordion-title collapsed d-block pt-2 pb-2"
                                            data-toggle="collapse" href="#collapseTwo" aria-expanded="false"
                                            aria-controls="collapseTwo">
                                            Product <span class="float-right"><i
                                                    class="mdi mdi-chevron-down accordion-arrow"></i></span>
                                        </a>
                                    </h5>
                                </div>
                                <div class="" >
                                    <div class="card-body">
                                        <div class="w-75 d-inline-block v-middle pl-2">
                                            <h6 class="message-title mb-0 mt-1"><?= $reservations[0]['title']?></h6>
                                            <span class="font-12 text-nowrap d-block text-muted">Rp. <?= $reservations[0]['price']?></span>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end card-->

                            <div class="card mb-0">
                                <form action="../service.php" method="POST">
                                    <input type="hidden" name="id" value="<?= $reservations[0]['id'] ?>">

                                    <div class="card-header" id="headingThree">
                                        <h5 class="m-0">
                                            <a class="custom-accordion-title collapsed d-block pt-2 pb-2"
                                                data-toggle="collapse" href="#collapseThree" aria-expanded="false"
                                                aria-controls="collapseThree">
                                                Reservation <span class="float-right"><i
                                                        class="mdi mdi-chevron-down accordion-arrow"></i></span>
                                            </a>
                                        </h5>
                                    </div>
                                
                                    <div id="" class="" aria-labelledby="headingThree"
                                        data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="w-75 d-inline-block v-middle pl-2">
                                                <h6 class="message-title mb-0 mt-1">Waktu Pemesanan, <?= $reservations[0]['date']?> - <?= $reservations[0]['time']?></h6>
                                                <span class="font-12 text-nowrap d-block text-muted">Status payment, <?= $reservations[0]['status_payment']?> </span>
                                                <div class="row">
                                                    <div class="col-2" >
                                                        <h6 class="message-title mb-0 mt-1">Status Reservation </h6>
                                                    </div>
                                                    <div class="col-5">
                                                            <div class="form-check form-check-inline">
                                                                <div class="custom-control custom-radio">
                                                                    <input name="done_status" type="radio" class="custom-control-input" id="customControlValidation2" value="done" <?= ($reservations[0]['done_status']== "done" )?"checked" : "" ?>  name="radio-stacked">
                                                                    <label class="custom-control-label" for="customControlValidation2">done</label>
                                                                </div>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <div class="custom-control custom-radio">
                                                                    <input name="done_status" type="radio" class="custom-control-input" id="customControlValidation1" value="pending" <?= ($reservations[0]['done_status']== "pending" )?"checked" : "" ?> name="radio-stacked">
                                                                    <label class="custom-control-label" for="customControlValidation1">pending</label>
                                                                </div>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <div class="custom-control custom-radio">
                                                                    <input name="done_status" type="radio" class="custom-control-input" id="customControlValidation3" value="cencel" <?= ($reservations[0]['done_status']== "cencel" )?"checked" : "" ?> name="radio-stacked">
                                                                    <label class="custom-control-label" for="customControlValidation3">cencel</label>
                                                                </div>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <div class="custom-control custom-radio">
                                                                    <input name="done_status" type="radio" class="custom-control-input" id="customControlValidation4" value="decline" <?= ($reservations[0]['done_status']== "decline" )?"checked" : "" ?> name="radio-stacked">
                                                                    <label class="custom-control-label" for="customControlValidation4">decline</label>
                                                                </div>
                                                            </div>
                                                        
                                                    </div>
                                                </div>
                                                
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-header" id="headingThree">
                                        <h5 class="m-0">
                                           
                                            <button class="custom-accordion-title collapsed  pt-2 pb-2 btn waves-effect waves-light btn-primary"
                                                data-toggle="collapse"  
                                                aria-expanded="false"
                                                type="submit"
                                                name="update_reservation"
                                                aria-controls="collapseThree">
                                                Save <span class="float-right"><i
                                                        class="mdi mdi-chevron-down accordion-arrow"></i></span>
                                            </button>
                                        </h5>
                                    </div>
                                </form>    
                            </div> <!-- end card-->
                        </div> <!-- end custom accordions-->
                    </div> <!-- end col -->

                   
                </div>
                <!-- end row-->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center text-muted">
                All Rights Reserved by Adminmart. Designed and Developed by <a
                    href="https://wrappixel.com">WrapPixel</a>.
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <!-- apps -->
    <script src="dist/js/app-style-switcher.js"></script>
    <script src="dist/js/feather.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <!-- themejs -->
    <!--Menu sidebar -->
    <script src="dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="dist/js/custom.min.js"></script>
    <!-- This Page JS -->
    <script src="assets/extra-libs/prism/prism.js"></script>
</body>

</html>
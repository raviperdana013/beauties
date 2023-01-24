<footer class="footer">
        <div class="footer__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <div class="footer__logo">
                            <a href="#"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="footer__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h5>Company</h5>
                        <ul>
                            <li><a href="about.php">About Us</a></li>
                            <li><a href="product.php">Product</a></li>
                            <li><a href="docter.php">Find a Doctor</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h5>Quick links</h5>
                        <ul>
                            <li><a href="/">Home</a></li>
                            <li><a href="sigin-user.php">Sign in</a></li>
                            <li><a href="signup-user.php">Sign Up</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <?php $profile = first("profile"); ?>
                    <div class="footer__address">
                        <h5>Contact Us</h5>
                        <ul>
                            <li><i class="fa fa-map-marker"></i> <?= $profile['address']?></li>
                            <li><i class="fa fa-phone"></i> <?= $profile['phone_number']?></li>
                            <li><i class="fa fa-envelope"></i><?= $profile['email']?></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-6">
                    <div class="footer__map">
                        <iframe
                        src="https://maps.google.com/maps?q=tiffany%20palangka&t=&z=13&ie=UTF8&iwloc=&output=embed"
                        height="190" style="border:0" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer__copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <div class="footer__copyright__text">
                            <p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                        </div>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                    <div class="col-lg-5">
                        <ul>
                           
                           <a href="/beauties/admin/"> <li>Admin</li></a>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
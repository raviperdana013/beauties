<?php
    $_POST["role"] = 'guest';
    include "service.php";
    // dd($_SESSION['user']);
    // Declare for this page
    $_SESSION["title"] = "About";
    $docters = query("SELECT * FROM docters");
    $profile = first("profile");
?>
<?php include "layout/head.php" ?>

  <body>
    <!-- Page Preloder -->
    <div id="preloder">
      <div class="loader"></div>
    </div>
    <?php include "layout/header.php" ?>
  
    <!-- Header Section End -->

    <!-- Breadcrumb Section Begin -->
    <section
      class="breadcrumb-option spad set-bg"
      data-setbg="img/breadcrumb-bg.jpg"
    >
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <div class="breadcrumb__text">
              <h2>About Us</h2>
              <div class="breadcrumb__links">
                <a href="./index.php">Home</a>
                <span>About</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Breadcrumb Section End -->
    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="contact__widget">
                        <div class="contact__widget__icon">
                            <i class="fa fa-map-marker"></i>
                        </div>
                        <div class="contact__widget__text">
                            <h5>Address</h5>
                            <p><?= $profile['address']?></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="contact__widget">
                        <div class="contact__widget__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="contact__widget__text">
                            <h5>Hotline</h5>
                            <p><?= $profile['phone_number']?></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="contact__widget">
                        <div class="contact__widget__icon">
                            <i class="fa fa-envelope"></i>
                        </div>
                        <div class="contact__widget__text">
                            <h5>Email</h5>
                            <p><?= $profile['email']?></p>
                        </div>
                    </div>
                </div>
            
                <div class="col-lg-6 col-md-6">
                <div class="footer__map">
                    <iframe
                      src="https://maps.google.com/maps?q=tiffany%20palangka&t=&z=13&ie=UTF8&iwloc=&output=embed"
                      height="322"
                      style="border: 0"
                      allowfullscreen=""
                    ></iframe>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6">
                  <div class="about__text">
                    <div class="section-title">
                      <span>ABOUT OUR CLINIC</span>
                      <h2>Welcom to the tiffany</h2>
                    </div>
                    <p>
                      Klinik kecantikan dan kesehatan kulit. yang Ditangani oleh dokter spesialis kulit kecantikan yg berpengalaman.
                    </p>
                    <ul>
                      <li>
                        <i class="fa fa-check-circle"></i> Konsultasi Dokter Spesialis Kulit
                      </li>
                      <li>
                        <i class="fa fa-check-circle"></i> Produk Kecantikan
                      </li>
                      <li>
                        <i class="fa fa-check-circle"></i> Perawatan wajah dan tubuh
                      </li>
                    </ul>
                    <a href="product.php" class="primary-btn normal-btn">Our Service</a>
                  </div>
                </div>
              </div>
            </div>
          </section>
    <!-- About Section End -->
    

    <!-- Chooseus Section Begin -->
    <section class="chooseus spad">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <div class="section-title">
              <span>Why choose us?</span>
              <h2>Offer for you</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="chooseus__item">
              <img src="img/icons/ci-1.png" alt="" />
              <h5>Advanced equipment</h5>
              <p>
              We use advanced technology and medical grade equipment for results you can see and trust.
              </p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="chooseus__item">
              <img src="img/icons/ci-2.png" alt="" />
              <h5>Qualified doctors</h5>
              <p>
              We have a team of fully qualified Doctors, Nurses, and visiting specialists all dedicated to bringing you quality care.
              </p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="chooseus__item">
              <img src="img/icons/ci-3.png" alt="" />
              <h5>Certified services</h5>
              <p>
                Lorem ipsum amet, consectetur adipiscing elit, sed do eiusmod
                tempor cididunt facilisis.
              </p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="chooseus__item">
              <img src="img/icons/ci-4.png" alt="" />
              <h5>Emergency care</h5>
              <p>
                Lorem ipsum amet, consectetur adipiscing elit, sed do eiusmod
                tempor cididunt facilisis.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Chooseus Section End -->

    <!-- Team Section Begin -->
    <section class="team spad">
        <div class="container ">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <span>Our Team</span>
                        <h2>Our Expert Doctors</h2>
                    </div>
                </div>
            </div>
            <div class="row text-center">
            <?php foreach($docters as $docter):?>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="team__item">
                        <img src="file/<?= $docter['image_path']?>" alt="">
                        <h5><?= $docter['name']?></h5>
                        <span><?= $docter['specialis']?></span>
                        <div class="team__item__social">
                            <a href="<?= $docter['facebook']?>"><i class="fa fa-facebook"></i></a>
                            <a href="<?= $docter['twitter']?>"><i class="fa fa-twitter"></i></a>
                            <a href="<?= $docter['instagram']?>"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            <?php endforeach?>
            </div>
        </div>
    </section>
    <!-- Team Section End -->

    <!-- Footer Section Begin -->
    <?php include "layout/footer.php" ?>     
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>

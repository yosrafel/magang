
<?php $__env->startSection('title', 'Home'); ?>
<?php $__env->startSection('home','active'); ?>
<?php $__env->startSection('content'); ?>
<!-- inner page banner -->
<div id="inner_banner" class="section inner_banner_section">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="full">
          <div class="title-holder">
            <div class="title-holder-cell text-left">
              <h1 class="page-title">Detail Servis</h1>
              <ol class="breadcrumb">
                <li><a href="/page/index">Home</a></li>
                <li class="active">Detail Servis</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end inner page banner -->

<!-- section -->
  <div class="container">
      <div class="col-md-12">
          <div class="table-responsive">
            <table class="table mt-5">
              <tr style="height: 80px">
                <td>NOMOR PERBAIKAN</td><td><?php echo e($servis->tanda_terima); ?></td>
              </tr>
              <tr style="height: 80px">
                <td>NOMOR SERIAL</td><td><?php echo e($servis->barang->serial_num); ?></td>
              </tr>
              <tr style="height: 80px">
                <td >PRODUK</td><td ><?php echo e($servis->barang->type); ?></td>
              </tr>
              <tr style="height: 80px">
                <td >KELENGKAPAN</td><td ><?php echo e($servis->kelengkapan); ?></td>
              </tr>
              <tr style="height: 80px">
                <td >KERUSAKAN</td><td ><?php echo e($servis->kerusakan); ?></td>
              </tr>
              <tr style="height: 80px">
                <td >TANGGAL PENERIMAAN</td><td ><?php echo e($servis->tgl_masuk); ?></td>
              </tr>
              <tr style="height: 80px">
                <td >TINDAKAN</td><td ><?php echo e($servis->tindakan); ?></td>
              </tr>
              <tr style="height: 80px">
                <td >KETERANGAN</td><td ><?php echo e($servis->ket_1); ?></br><?php echo e($servis->ket_2); ?></br><?php echo e($servis->ket_3); ?></td>
              </tr>
              <tr style="height: 80px">
                <td >STATUS</td><td ><?php echo e($servis->status); ?></td>
              </tr>
           </table>
        </div>
      </div>
  </div>
<!-- end section -->

<!-- section -->
<div class="section padding_layout_1 blog_grid">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="full">
          <div class="blog_section margin_bottom_0">
            <div class="comment_section"></div>
            <div class="view_commant">
              <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
                  <div class="full"> <img class="img-responsive" style="max-width:100px" src="/assets/images/it_service/client1.png" alt="#"> </div>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12">
                  <div class="full theme_bg white_fonts command_cont">
                    <p class="comm_head">Christian Perez <span>April 27,2018</span></p>
                    <p>magine you are 10 years into the future but this time it’s different. Why? Because starting today you actually 
                      begin making changes in your life. Specific intentional changes are not easy. They are intentional because these 
                      changes are changes that you are choosing and they are the changes that will cause you to live the life you want 
                      to live and dream. </p>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
                  <div class="full"> <img class="img-responsive" style="max-width:100px" src="/assets/images/it_service/client2.png" alt="#"> </div>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12">
                  <div class="full command_cont">
                    <p class="comm_head">Christian Perez <span>Sep 27,2017</span></p>
                    <p>magine you are 10 years into the future but this time it’s different. Why? Because starting today you actually 
                      begin making changes in your life. Specific intentional changes are not easy. They are intentional because these 
                      changes are changes that you are choosing and they are the changes that will cause you to live the life you want 
                      to live and dream. </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
                  <div class="full"> <img class="img-responsive" style="max-width:100px" src="/assets/images/it_service/client1.png" alt="#"> </div>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12">
                  <div class="full theme_bg white_fonts command_cont">
                    <p class="comm_head">Christian Perez <span>Sep 27,2017</span></p>
                    <p>magine you are 10 years into the future but this time it’s different. Why? Because starting today you actually 
                      begin making changes in your life. Specific intentional changes are not easy. They are intentional because these 
                      changes are changes that you are choosing and they are the changes that will cause you to live the life you want 
                      to live and dream. </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="post_commt_form">
              <h4>POST YOUR COMMENT</h4>
              <div class="form_section">
                <form class="form_contant" action="index.html">
                  <fieldset class="row">
                  <div class="field col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <textarea class="field_custom" placeholder="Comment" required></textarea>
                  </div>
                  <div class="center">
                    <button class="btn main_bt">SUBMIT</button>
                  </div>
                  </fieldset>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end section -->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout/page', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Rafel\perwalian\resources\views/page/dtl_servis.blade.php ENDPATH**/ ?>
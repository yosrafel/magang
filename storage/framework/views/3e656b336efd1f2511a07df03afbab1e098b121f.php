
<?php $__env->startSection('title', 'Home'); ?>
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
                <li><a href="/servis/index">Home</a></li>
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
    <div class="table-responsive">
      <table class="table mt-5">
        <tr style="height: 80px">
          <td>NOMOR PERBAIKAN</td><td><?php echo e($servis->no_tanda_terima); ?></td>
        </tr>
        <tr style="height: 80px">
          <td>NOMOR SERIAL</td><td><?php echo e($servis->serial_num); ?></td>
        </tr>
        <tr style="height: 80px">
          <td >PRODUK</td><td ><?php echo e($servis->type); ?></td>
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
        <tr style="height: 80px">
          <td >NOMINAL</td><td ><?php echo e($servis->nominal); ?></td>
        </tr>
      </table>
    </div>
      <?php if($servis->status == 'NOT CLOSED'): ?>
      <hr>
      <p><b>Hubungi Admin Via Whatsapp - 085725964942</b> </p>
        <a target="_blank" href="https://web.whatsapp.com/send?phone=6285725964942&amp;text=Halo Admin ! saya mau tanya, untuk laptop <?php echo e($servis->type); ?> dengan nomor seri <?php echo e($servis->serial_num); ?> kapan bisa diambil ya? terimakasih">
            <div style= "color: 	#000000">
                <img src="https://www.els.co.id/wp-content/plugins/click-to-chat-for-whatsapp/./new/inc/assets/img/whatsapp-logo-32x32.png" alt="WhatsApp 1">
                Tanya Perkiraan Tanggal Selesai</div>
        </a></br>
        <a target="_blank" href="https://web.whatsapp.com/send?phone=6285725964942&amp;text=Halo Admin ! saya mau tanya, untuk laptop <?php echo e($servis->type); ?> dengan nomor seri <?php echo e($servis->serial_num); ?>, kerusakanya apa pada bagian apa ya? dan berapa perkiraan harganya? terimakasih">
            <div style= "color: 	#000000">
                <img src="https://www.els.co.id/wp-content/plugins/click-to-chat-for-whatsapp/./new/inc/assets/img/whatsapp-logo-32x32.png" alt="WhatsApp 2">
                Tanya Kerusakan dan Perkiraan Harga</div>
        </a></br>
      <?php endif; ?>
  </div>
<!-- end section -->

<!-- section -->
<div class="section blog_grid">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="full">
          <div class="blog_section margin_bottom_0">
            <div class="comment_section"></div>
            <div class="view_commant">
              <?php $__currentLoopData = $komentar; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $komen): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php if($komen->servis_id==$id): ?>
                  <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
                      <div class="full"> <img class="img-responsive" style="max-width:100px" src="/assets/img/guest.png" alt="#"> </div>
                    </div>
                    <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12">
                      <div class="full theme_bg white_fonts command_cont">
                        <p class="comm_head"><?php echo e($komen->servis->nama_customer); ?> <span><?php echo e($komen->created_at->diffForHumans()); ?></span></p>
                        <p><?php echo e($komen->message); ?></p>
                      </div>
                    </div>
                  </div>
                <?php endif; ?>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <div class="post_commt_form">
              <h4>Tambahkan Komentar</h4>
              <div class="form_section">
                <form action="" method="post">
                  <?php echo csrf_field(); ?>
                    <div class="field col-lg-12 col-md-12 col-sm-12 col-xs-12">
                      <textarea class="field_custom" name="komentar" placeholder="Masukkan Komentar . . ." required></textarea>
                    </div>
                    <div class="center">
                      <button type="submit" class="btn main_bt">SUBMIT</button>
                    </div>
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
<?php echo $__env->make('layout/servis', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\user\resources\views/servis/dtl_servis.blade.php ENDPATH**/ ?>
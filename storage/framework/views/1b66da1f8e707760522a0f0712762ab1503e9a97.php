
<?php $__env->startSection('title', 'History'); ?>
<?php $__env->startSection('history', 'active'); ?>
<?php $__env->startSection('content'); ?>
<!-- section -->
<div class="container mb-5 mt-5">
    <div class="row">
      <div class="col-md-12">
        <div class="full">
            <div class="main_heading text_align_center">
              <h2>Cek Status Perbaikan</h2>
            </div>
          <div class="table-responsive">
            <table class="table table-striped mt-5">
              <thead class="thead-dark">
                <tr>
                  <th>Item </th>
                  <th>Tanda Terima</th>
                  <th>No Serial</th>
                  <th>Product Type</th>
                  <th>Tanggal Masuk</th>
                  <th>Status</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <?php $__currentLoopData = $servis; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $servis): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <tr>
                    <th scope="row"><?php echo e($loop->iteration); ?></th>
                    <td><?php echo e($servis->no_tanda_terima); ?></td>
                    <td><?php echo e($servis->serial_num); ?></td>
                    <td><?php echo e($servis->type); ?></td>
                    <td><?php echo e($servis->tgl_masuk); ?></td>
                    <td><?php echo e($servis->status); ?></td>
                    <td><a href="/page/<?php echo e($servis->id); ?>/dtl_servis" class="badge badge-warning">Lihat Detail</a></td>
                  </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end section -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout/page', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Rafel\user\resources\views/page/history.blade.php ENDPATH**/ ?>
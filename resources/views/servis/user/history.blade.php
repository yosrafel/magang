@extends('layout/servis_user')
@section('title', 'History')
@section('history', 'active')
@section('content')
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
                @foreach($servis as $servis)
                  <tr>
                    <th scope="row">{{ $loop->iteration }}</th>
                    <td>{{ $servis->no_tanda_terima}}</td>
                    <td>{{ $servis->serial_num}}</td>
                    <td>{{ $servis->type}}</td>
                    <td>{{ $servis->tgl_masuk}}</td>
                    <td>{{ $servis->status}}</td>
                    <td><a href="/servis/user/{{$servis->id}}/dtl_servis" class="badge badge-warning">Lihat Detail</a></td>
                  </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end section -->
@endsection
@extends('layout/servis_admin')
@section('title', 'Home')
@section('content')

<!-- SECTION -->
<div class="panel panel-headline">
  <div class="panel-heading">
    <h3 class="panel-title">Data Servis</h3>
    <hr>  
    @if (count($errors) > 0)
      <div class="alert alert-danger">
          <ul>
              @foreach ($errors->all() as $error)
                  <li>{{ $error }}</li>
              @endforeach
          </ul>
      </div>
    @elseif (session('status'))
      <div class="text-center alert alert-success">
        {{ session('status') }}
      </div> 
    @endif
  </div>
  <div class="container">
    
    <div class="pull-right">
      <a class="btn btn-primary mr-5" data-toggle="modal" data-target="#importExcel">
        IMPORT EXCEL
      </a>
      <a href="/servis/export" class="btn btn-success">EXPORT EXCEL</a>
    </div>
  </div>
  <div class="panel-body">
    <div style="overflow-x:auto;">
      <table class="table" id="urutServis">
        <thead>
          <tr>
            <th>ITEM </th>
            <th>USER ID</TH>
            <th>TANGGAL MASUK</th>
            <th>NO. TANDA TERIMA</th>
            <th>NAMA CUSTOMER</th>
            <th>NO HP</th>
            <th>EMAIL </th>
            <th>TYPE</th>
            <th>STATUS </th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          @foreach($servis as $servis)
            <tr>
              <th scope="row">{{ $loop->iteration }}</th>
              <td>{{ $servis->user_id}}</th>
              <td>{{ $servis->tgl_in->format('d/m/Y')}}</td>
              <td>{{ $servis->no_tanda_terima}}</td>
              <td>{{ $servis->nama_customer}}</td>
              <td>{{ $servis->no_hp_customer}}</td>
              <td>{{ $servis->email}}</td>
              <td>{{ $servis->type}}</td>
              <td>{{ $servis->status }}
              <td>
                <a href="/servis/admin/dtl_servis/{{$servis->id}}" class="badge">DETAIL</a>
              </td>
            </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- END SECTION -->

<!-- Modal Import Excel -->
<div class="modal fade" id="importExcel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<form method="post" action="/servis/import_excel" enctype="multipart/form-data">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Import Excel</h5>
						</div>
						<div class="modal-body">
 
							{{ csrf_field() }}
 
							<label>Pilih file excel</label>
							<div class="form-group">
								<input type="file" name="file" required="required">
							</div>
 
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Import</button>
						</div>
					</div>
				</form>
			</div>
		</div>

@endsection

@section('footer')
  <script>
    $(document).ready( function () {
      $('#urutServis').DataTable();
    } );
  </script>
@endsection
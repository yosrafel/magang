@extends('layout/servis_admin')
@section('title', 'Detail')
@section('content')

<!-- SECTION -->
<div class="panel panel-headline">
    <div class="panel-heading">
        <h3 class="panel-title">Detail Servis</h3>
    </div>
    <div class="panel-body">
        <div class="table-responsive col-md-12">
            <table class="table mt-5">
                <tr style="height: 80px">
                    <td>User ID</td><td>{{$servis->user_id}}</td>
                </tr>  
                <tr style="height: 80px">
                    <td >TANGGAL MASUK</td><td>{{$servis->tgl_in->format('d M Y')}}</td>
                </tr>  
                <tr style="height: 80px">
                    <td>NO. TANDA TERIMA</td><td>{{ $servis->no_tanda_terima}}</td>
                </tr>
                <tr style="height: 80px">    
                    <td>NAMA CUSTOMER</td><td>{{ $servis->nama_customer}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>NO HP</td><td>{{ $servis->no_hp_customer}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>DEPT </td><td>{{ $servis->dept}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>TANGGAL BELI</td><td>{{ $servis->tgl_beli->format('d M Y','local')}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>TYPE</td><td>{{ $servis->type}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>SERIAL NUMBER</td><td>{{ $servis->serial_num}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>KELENGKAPAN</td><td>{{ $servis->kelengkapan}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>KERUSAKAN</td><td>{{ $servis->kerusakan}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>TEHNISI </td><td>{{ $servis->tehnisi}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>TGL KIRIM VENDOR</td><td>{{ $servis->tgl_kirim_vendor->format('d M Y','local')}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>VENDOR</td><td>{{ $servis->vendor}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>NO. SURAT JALAN</td><td>{{ $servis->no_surat_jalan}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>TGL KEMBALI VENDOR</td><td>{{ $servis->tgl_kembali_vendor->format('d M Y','local')}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>STATUS UNIT</td><td>{{ $servis->status_unit}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>TGL AMBIL CUSTOMER </td><td>{{ $servis->tgl_ambil_cust->format('d M Y','local')}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>STATUS</td><td>{{ $servis->status}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>CLOSED BY</td><td>{{ $servis->closed_by}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>CHARGE</td><td>{{ $servis->charge}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>NO. NOTA</td><td>{{ $servis->no_nota}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>NOMINAL</td><td>{{ $servis->nominal}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>USIA SERVIS </td><td>{{ $servis->usia_service}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>7</td><td>{{ $servis->cek_7}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>14</td><td>{{ $servis->cek_14}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>30</td><td>{{ $servis->cek_30}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>TINDAKAN</td><td>{{ $servis->tindakan}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>KETERANGAN 1</td><td>{{ $servis->ket_1}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>KETERANGAN 2 </td><td>{{ $servis->ket_2}}</td>
                </tr>
                <tr style="height: 80px">
                    <td>KETERANGAN 3</td><td>{{ $servis->ket_3}}</td>
                </tr>
            </table>
        </div>
        <h4><b>Hubungi Customer Via Whatsapp</b> </h4>
        <form id="salsa" method="POST">
            <div class="input form-group">
                <input placeholder="62812xxxx" name="nomor" class="form-control" type="number" class="" id="nomor" value="{{$servis->no_hp_customer}}" required readonly/>
            </div>
            <div class="input form-group">
                <textarea class="form-control" rows="4" id="pesan" name="pesan" placeholder="Custom Pesan . . ."></textarea>
            </div>
            <div class="submit form-group"><button type="submit" id="btn-wa" class="btn btn-primary btn-user">Kirim</button></div>
        </form>
        <div>
            <a target="_blank" href="https://web.whatsapp.com/send?phone={{$servis->no_hp_customer}}&amp;text=Selamat siang {{$servis->nama_customer}}, untuk laptop {{$servis->type}} dengan serial number {{$servis->serial_num}} sudah dapat diambil di Els Computer. Kami tunggu kedatangannya, terimakasih." class="nofocus">
                <div style="color: 	#000000">
                    <img src="https://www.els.co.id/wp-content/plugins/click-to-chat-for-whatsapp/./new/inc/assets/img/whatsapp-logo-32x32.png" alt="WhatsApp 2">
                    Konfirmasi Untuk Ambil</div>
            </a>
        </div>
    </div>
</div>


<!-- END SECTION -->

<!-- SECTION KOMEN -->
<div class="panel panel-headline">
    <div class="panel-scrolling">
        <div class="panel-heading">
            <h3 class="panel-title">Komentar</h3>
            <hr>
            <div class="right">
                <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
            </div>
        </div>
        <div class="panel-body">
            <ul class="list-unstyled activity-list">
                @foreach($komentar as $komen)
                    @if($komen->servis_id==$id)
                        <li>
                            <img src="/assets/images/guest.png" alt="Avatar" class="img-circle pull-left avatar">
                            <p><a>{{$komen->user->name}}</a> {{$komen->message}} <span class="timestamp">{{$komen->created_at->diffForHumans()}}</span></p>
                        </li>
                    @endif
                @endforeach
            </ul>
            <form action="" method="post">
            @csrf
                <textarea class="form-control" name="komentar" rows="5" cols = "100" placeholder="Masukkan Komentar . . ." required></textarea>
            <button type="submit" class="btn main_bt">SUBMIT</button>
            </form>
        </div>                        
    </div>
</div>
<!-- END SECTION KOMEN -->
@endsection

@section('footer')

<script type="text/javascript">
$("#btn-wa").click(function(){
    var nomor = document.getElementById('nomor').value;
    var pesan = document.getElementById('pesan').value;
    var win = window.open('https://web.whatsapp.com/send?phone='+nomor+'&amp;&text='+pesan);
    if (win) {
        win.focus();
    } else {
        alert('Aktifkan popups untuk website ini');
    }
    return false;   
});
</script>

@endsection
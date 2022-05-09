<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Servis extends Model
{
    protected $table="servis";
    protected $fillable = ["id", "tgl_in", "user_id", "no_tanda_terima", "nama_customer", "no_hp_customer", "dept", "tgl_beli", "type", "serial_num", "kelengkapan", "kerusakan", "tehnisi",
"tgl_kirim_vendor", "vendor", "no_surat_jalan", "tgl_kembali_vendor", "status_unit", "tgl_ambil_cust", "status", "closed_by", "charge", "no_nota", "nominal", "usia_service",
"cek_7", "cek_14", "cek_30", "tindakan", "ket_1", "ket_2", "ket_3", "updated_at", "created_at"];
    protected $dates = ["tgl_in", "tgl_beli", "tgl_kirim_vendor", "tgl_kembali_vendor", "tgl_ambil_cust"];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function comment()
    {
        return $this->hasMany(Comment::class);
    }
}

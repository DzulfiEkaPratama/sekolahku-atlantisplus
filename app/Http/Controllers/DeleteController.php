<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class DeleteController extends Controller
{
   public function index() {
      $users = DB::select('select * from beritas');
      return redirect()->route('backend-berita.index')->with('success','Data Berhasil Di Hapus');
   }
   public function destroy($id) {
      DB::delete('delete from beritas where id = ?',[$id]);
      echo "Record deleted successfully.<br/>";
      echo '<a href = "/delete-records">Click Here</a> to go back.';
   }
   public function delete($id)
   {
      DB::delete('delete from beritas where id = ?',[$id]);
      return redirect()->route('backend-berita.index')->with('success','Data Berhasil Di Hapus');
   }
   public function delete_events($id)
   {
      DB::delete('delete from events where id = ?',[$id]);
      return redirect()->route('backend-event.index')->with('success','Data Berhasil Di Hapus');
   }
   public function delete_image($id)
   {
      DB::delete('delete from image_sliders where id = ?',[$id]);
      return redirect()->route('backend-imageslider.index')->with('success','Data Berhasil Di Hapus');
   }
   public function delete_pengajar($id)
   {
      DB::delete('delete from users where id = ?',[$id]);
      return redirect()->route('backend-pengguna-pengajar.index')->with('success','Data Berhasil Di Hapus');
   }
   public function delete_kategori($id)
   {
      DB::delete('delete from kategori_beritas where id = ?',[$id]);
      return redirect()->route('backend-kategori-berita.index')->with('success','Data Berhasil Di Hapus');
   }
   public function delete_jurusan($id)
   {
      DB::delete('delete from jurusans where id = ?',[$id]);
      return redirect()->route('program-studi.index')->with('success','Data Berhasil Di Hapus');
   }
   public function delete_video($id)
   {
      DB::delete('delete from videos where id = ?',[$id]);
      return redirect()->route('backend-video.index')->with('success','Data Berhasil Di Hapus');
   }
}
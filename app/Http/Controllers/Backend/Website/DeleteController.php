<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class DeleteController extends Controller
{
   public function index() {
      $users = DB::select('select * from beritas');
      return redirect()->route('backend-berita.index');
   }
   public function destroy($id) {
      DB::delete('delete from beritas where id = ?',[$id]);
      echo "Record deleted successfully.<br/>";
      echo '<a href = "/delete-records">Click Here</a> to go back.';
   }
}

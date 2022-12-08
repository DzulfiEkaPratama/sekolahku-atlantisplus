@extends('layouts.backend.app')

@section('title')
Pengajar
@endsection

@section('content')

@if ($message = Session::get('success'))
<div class="alert alert-success" role="alert">
    <div class="alert-body">
        <strong>{{ $message }}</strong>
        <button type="button" class="close" data-dismiss="alert">×</button>
    </div>
</div>
@elseif($message = Session::get('error'))
<div class="alert alert-danger" role="alert">
    <div class="alert-body">
        <strong>{{ $message }}</strong>
        <button type="button" class="close" data-dismiss="alert">×</button>
    </div>
</div>
@endif
<div class="content-wrapper container-xxl p-0">
    <div class="content-header row">
        <div class="content-header-left col-md-9 col-12 mb-2">
            <div class="row breadcrumbs-top">
                <div class="col-12">
                    <h2> Pengajar</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="content-body">
        <div class="row">
            <div class="col-12">
                <section>
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header border-bottom">
                                    <h4 class="card-title">Pengajar <a
                                            href=" {{route('backend-pengguna-pengajar.create')}} "
                                            class="btn btn-primary">Tambah</a> </h4>
                                </div>
                                <div class="card-datatable">
                                    <table class="dt-responsive table">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th>No</th>
                                                <th>Nama</th>
                                                <th>Mengajar</th>
                                                <th>NIP</th>
                                                <th>Email</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($pengajar as $key => $pengajars)
                                            <tr>
                                                <td></td>
                                                <td> {{$key+1}} </td>
                                                <td> {{$pengajars->name}} </td>
                                                <td> {{$pengajars->userDetail->mengajar}} </td>
                                                <td> {{$pengajars->userDetail->nip}} </td>
                                                <td> {{$pengajars->email}} </td>
                                                <td> {{$pengajars->status == 'Aktif' ? 'Aktif' : 'Tidak Aktif'}} </td>
                                                <td class="picker__select--year"><a href=" {{route('backend-pengguna-pengajar.edit', $pengajars->id)}} "
                                                        class="btn btn-success btn-sm">Edit</a>

                                                    <form action="{{ url('delete_pengajar/'.$pengajars->id) }}" method="post"
                                                        class="d-inline" onsubmit="return confirm('Yakin Hapus Data?')">
                                                        @method('delete')
                                                        @csrf
                                                        <button class="btn btn-danger btn-sm">
                                                            <div class="fa fa-trash">Delete</div>
                                                        </button></form>
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>
@endsection

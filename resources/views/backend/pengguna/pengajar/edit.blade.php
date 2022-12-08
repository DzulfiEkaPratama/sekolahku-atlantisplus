@extends('layouts.backend.app')

@section('title')
   Edit Pengajar
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
                <div class="card">
                    <div class="card-header header-bottom">
                        <h4>Edit Pengajar</h4>
                    </div>
                    <div class="card-body">
                        <form action=" {{route('backend-pengguna-pengajar.update', $pengajar->id)}} " method="post" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Nama</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value=" {{$pengajar->name}} " placeholder="Nama" />
                                        @error('name')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Email</label> <span class="text-danger">*</span>
                                        <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value=" {{$pengajar->email}} " placeholder="Email" />
                                        @error('email')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Mengajar</label> <span class="text-danger">*</span>
                                        <select name="mengajar" class="form-control @error('mengajar') is-invalid @enderror">
                                            <option value="">-- Pilih --</option>
                                            <option value="Kepala Sekolah" {{$pengajar->userDetail->mengajar == 'Kepala Sekolah' ? 'selected' : ''}} >Kepala Sekolah</option>
                                            <option value="Wakil Kurikulum" {{$pengajar->userDetail->mengajar == 'Wakil Kurikulum' ? 'selected' : ''}} >Wakil Kurikulum</option>
                                            <option value="Wakil Kesiswaan" {{$pengajar->userDetail->mengajar == 'Wakil Kesiswaan' ? 'selected' : ''}} >Wakil Kesiswaan</option>
                                            <option value="Wakil Hubungan Industri" {{$pengajar->userDetail->mengajar == 'Wakil Hubungan Industri' ? 'selected' : ''}} >Wakil Hubungan Industri</option>
                                            <option value="Wakil Pengendalian Mutu" {{$pengajar->userDetail->mengajar == 'Wakil Pengendalian Mutu' ? 'selected' : ''}} >Wakil Pengendalian Mutu</option>
                                            <option value="Wakil Sarana Prasarana" {{$pengajar->userDetail->mengajar == 'Wakil Sarana Prasarana' ? 'selected' : ''}} >Wakil Sarana Prasarana</option>
                                            <option value="Staff Kurikulum" {{$pengajar->userDetail->mengajar == 'Staff Kurikulum' ? 'selected' : ''}} >Staff Kurikulum</option>
                                            <option value="Bahasa Inggris" {{$pengajar->userDetail->mengajar == 'Bahasa Inggris' ? 'selected' : ''}} >Bahasa Inggris</option>
                                            <option value="PPKN" {{$pengajar->userDetail->mengajar == 'PPKN' ? 'selected' : ''}} >PPKN</option>
                                            <option value="Bahasa Indonesia" {{$pengajar->userDetail->mengajar == 'Bahasa Indonesia' ? 'selected' : ''}} >Bahasa Indonesia</option>
                                            <option value="Pendidikan Agama Islam" {{$pengajar->userDetail->mengajar == 'Pendidikan Agama Islam' ? 'selected' : ''}} >Pendidikan Agama Islam</option>
                                            <option value="Matematika" {{$pengajar->userDetail->mengajar == 'Matematika' ? 'selected' : ''}} >Matematika</option>
                                            <option value="Kepala Program Studi" {{$pengajar->userDetail->mengajar == 'Kepala Program Studi' ? 'selected' : ''}} >Kepala Program Studi</option>
                                            <option value="Bendahara Sekolah" {{$pengajar->userDetail->mengajar == 'Bendahara Sekolah' ? 'selected' : ''}} >Bendahara Sekolah</option>
                                            <option value="Office Boy" {{$pengajar->userDetail->mengajar == 'Office Boy' ? 'selected' : ''}} >Office Boy</option>
                                            <option value="Kimia - Fisika" {{$pengajar->userDetail->mengajar == 'Kimia - Fisika' ? 'selected' : ''}} >Kimia - Fisika</option>
                                            <option value="Security" {{$pengajar->userDetail->mengajar == 'Security' ? 'selected' : ''}} >Security</option>
                                            <option value="Guru Produktif" {{$pengajar->userDetail->mengajar == 'Guru Produktif' ? 'selected' : ''}} >Guru Produktif</option>
                                        </select>
                                        @error('mengajar')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">NIP</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('nip') is-invalid @enderror" name="nip" value=" {{$pengajar->userDetail->nip}} " placeholder="NIP" />
                                        @error('nip')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Foto Profile</label>  <span class="text-danger">*</span>
                                        <input type="file" class="form-control @error('foto_profile') is-invalid @enderror" name="foto_profile"/>
                                        <small class="text-danger">Kosongkan jika tidak ingin mengubah.</small>
                                        @error('foto_profile')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Status</label> <span class="text-danger">*</span>
                                        <select name="status" class="form-control @error('status') is-invalid @enderror">
                                            <option value="Aktif" {{$pengajar->status == 'Aktif' ? 'selected' : ''}} >Aktif</option>
                                            <option value="Tidak Aktif" {{$pengajar->status == 'Tidak Aktif' ? 'selected' : ''}} >Tidak Aktif</option>
                                        </select>
                                        @error('status')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="basicInput">Website</label>
                                        <input type="text" class="form-control @error('website') is-invalid @enderror" name="website" value=" {{$pengajar->userDetail->website}} " placeholder="Website" />
                                        @error('website')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="basicInput">Linkedln</label>
                                        <input type="text" class="form-control @error('linkedln') is-invalid @enderror" name="linkedln" value=" {{$pengajar->userDetail->linkidln}} " placeholder="Linkedln" />
                                        @error('linkedln')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="basicInput">Instagram</label>
                                        <input type="text" class="form-control @error('instagram') is-invalid @enderror" name="instagram" value=" {{$pengajar->userDetail->instagram}} " placeholder="Instagram" />
                                        @error('instagram')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="basicInput">Facebook</label>
                                        <input type="text" class="form-control @error('facebook') is-invalid @enderror" name="facebook" value=" {{$pengajar->userDetail->facebook}} " placeholder="Facebook" />
                                        @error('facebook')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="basicInput">Youtube</label>
                                        <input type="text" class="form-control @error('youtube') is-invalid @enderror" name="youtube" value=" {{$pengajar->userDetail->youtube}} " placeholder="Youtube" />
                                        @error('youtube')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="basicInput">Twitter</label>
                                        <input type="text" class="form-control @error('twitter') is-invalid @enderror" name="twitter" value=" {{$pengajar->userDetail->twitter}} " placeholder="Twitter" />
                                        @error('twitter')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>
                              
                            </div>
                            <button class="btn btn-primary" type="submit">Update</button>
                            <a href="{{route('backend-pengguna-pengajar.index')}}" class="btn btn-warning">Batal</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@extends('layouts.backend.app')

@section('title')
    Dashboard
@endsection

@section('content')
<div class="content-wrapper container-xxl p-0">
    <div class="content-body">
        <div class="row">
            <div class="col-lg-7 col-md-12 col-sm-12">
                <div class="card card-congratulations">
                    <div class="card-body text-center">
                        <img src="{{asset('Assets/backend/images/pages/decore-left.png')}}" class="congratulations-img-left" alt="card-img-left" />
                        <img src="{{asset('Assets/backend/images/pages/decore-right.png')}}" class="congratulations-img-right" alt="card-img-right" />
                        <div class="avatar avatar-xl bg-primary shadow">
                            <div class="avatar-content">
                                <i data-feather="award" class="font-large-1"></i>
                            </div>
                        </div>
                        <div class="text-center">
                            <h1 class="mb-1 text-white">Welcome {{Auth::user()->name}},</h1>
                            <p class="card-text m-auto w-75">
                                Have fun your day :)
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            @if (Auth::user()->role == 'Murid')
              <div class="col-12 col-md-6 col-lg-5">
                <div class="card card-congratulation-medal">
                    <div class="card-body">
                        <h5>Selamat 🎉 {{Auth::user()->name}}!</h5>
                        <p class="card-text font-small-3">Kamu Peringkat Pertama</p>
                        <h3 class="mb-75 mt-4">
                            <a href="javascript:void(0);">Rangking 1</a>
                        </h3>
                        <button type="button" class="btn btn-primary">Lihat Semua Peringkat</button>
                        <img src="{{asset('Assets/Backend/images/illustration/badge.svg')}}" class="congratulation-medal" alt="Medal Pic" />
                    </div>
                </div>
              </div>
            @endif

            
        </div>
    </div>
</div>
@endsection

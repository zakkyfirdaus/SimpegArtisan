@extends('layouts.master')
@section('content')

      <!-- Illustrations -->
      <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">Informasi Profil Pegawai</h6>
        </div>
        <div class="card-body">
          <div class="text-center">
            <img class="img-fluid px-3 px-sm-4 mt-3 mb-4 rounded-circle" style="width: 25rem;" src="{{$pegawai->getAvatar()}}" alt="Avatar">
          </div>
          <p class="text-center">Dibawah ini terdapat informasi dari data {{ $pegawai->nama_depan }} {{ $pegawai->nama_belakang }} yang mencakup informasi dari data pribadi dan data inventaris yang dipakai pada instansi pemerintahan saat ini.</p>
          
        </div>
      </div>

      <!-- Begin Page Content -->
      <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-primary">{{ $pegawai->nama_depan }} {{ $pegawai->nama_belakang }}</h1>
        </div>

        <div class="row">

          <!-- Earnings (Monthly) Card Example -->
          <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
              <div class="card-body">
                <div class="row no-gutters align-items-center">
                  <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Jenis Kelamin</div>
                  <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $pegawai->jenis_kelamin }}</div>
                  </div>
                  <div class="col-auto">
                    <i class="fas fa-venus-mars fa-2x text-gray-500"></i>
                  </div>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-900"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Mengubah data profil</div>
                      <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/pegawai/{{ $pegawai->id }}/edit">Edit Data</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Earnings (Monthly) Card Example -->
          <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
              <div class="card-body">
                <div class="row no-gutters align-items-center">
                  <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Agama</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $pegawai->agama }}</div>
                  </div>
                  <div class="col-auto">
                    <i class="fas fa-praying-hands fa-2x text-gray-500"></i>
                  </div>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-900"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Mengubah data profil</div>
                      <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/pegawai/{{ $pegawai->id }}/edit">Edit Data</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Earnings (Monthly) Card Example -->
          <div class="col-xl-6 col-md-9 mb-4">
            <div class="card border-left-danger shadow h-100 py-2">
              <div class="card-body">
                <div class="row no-gutters align-items-center">
                  <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Alamat</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $pegawai->alamat }}</div>
                  </div>
                  <div class="col-auto">
                    <i class="fas fa-map-marked-alt fa-2x text-gray-500"></i>
                  </div>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-900"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Mengubah data profil</div>
                      <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/pegawai/{{ $pegawai->id }}/edit">Edit Data</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        <div class="row">

          <div class="col-lg-6">

            <!-- Default Card Example -->
            <div class="card mb-4">
              <div class="card-header">
                Default Card Example
              </div>
              <div class="card-body">
                This card uses Bootstrap's default styling with no utility classes added. Global styles are the only things modifying the look and feel of this default card example.
              </div>
            </div>

            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
              <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Basic Card Example</h6>
              </div>
              <div class="card-body">
                The styling for this basic card example is created by using default Bootstrap utility classes. By using utility classes, the style of the card component can be easily modified with no need for any custom CSS!
              </div>
            </div>

          </div>

          <div class="col-lg-6">

            <!-- Dropdown Card Example -->
            <div class="card shadow mb-4">
              <!-- Card Header - Dropdown -->
              <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Dropdown Card Example</h6>
                <div class="dropdown no-arrow">
                  <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                  </a>
                  <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                    <div class="dropdown-header">Dropdown Header:</div>
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
                </div>
              </div>
              <!-- Card Body -->
              <div class="card-body">
                Dropdown menus can be placed in the card header in order to extend the functionality of a basic card. In this dropdown card example, the Font Awesome vertical ellipsis icon in the card header can be clicked on in order to toggle a dropdown menu.
              </div>
            </div>

            <!-- Collapsable Card Example -->
            <div class="card shadow mb-4">
              <!-- Card Header - Accordion -->
              <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardExample">
                <h6 class="m-0 font-weight-bold text-primary">Collapsable Card Example</h6>
              </a>
              <!-- Card Content - Collapse -->
              <div class="collapse show" id="collapseCardExample">
                <div class="card-body">
                  This is a collapsable card example using Bootstrap's built in collapse functionality. <strong>Click on the card header</strong> to see the card body collapse and expand!
                </div>
              </div>
            </div>

          </div>

        </div>

      </div>
      <!-- /.container-fluid -->

@stop
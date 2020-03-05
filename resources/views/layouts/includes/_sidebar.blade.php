<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-danger sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/dashboard">
        <div class="sidebar-brand-icon">
            <i class="fab fa-gitkraken"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Agenda BPIP</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
            <a class="nav-link" href="/dashboard">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
        </li>

    

    <!-- Nav Item - Tables -->
    @if(auth()->user()->role == 'admin')
    <li class="nav-item">
        <a class="nav-link" href="/pegawai">
            <i class="fas fa-laptop-code"></i>
        <span>Sektama</span></a>
    </li>
    @endif

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Nav Item - Tables -->
    @if(auth()->user()->role == 'admin')
    <li class="nav-item">
        <a class="nav-link" href="/pegawai">
            <i class="fas fa-share-alt"></i>
        <span>Deputi 1</span></a>
    </li>
    @endif

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Nav Item - Tables -->
    @if(auth()->user()->role == 'admin')
    <li class="nav-item">
        <a class="nav-link" href="/pegawai">
            <i class="fas fa-sync-alt"></i>
        <span>Deputi 2</span></a>
    </li>
    @endif

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Nav Item - Tables -->
    @if(auth()->user()->role == 'admin')
    <li class="nav-item">
        <a class="nav-link" href="/pegawai">
            <i class="fab fa-connectdevelop"></i>
        <span>Deputi 3</span></a>
    </li>
    @endif

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Nav Item - Tables -->
    @if(auth()->user()->role == 'admin')
    <li class="nav-item">
        <a class="nav-link" href="/pegawai">
            <i class="fas fa-university"></i>
        <span>Deputi 4</span></a>
    </li>
    @endif

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Nav Item - Tables -->
    @if(auth()->user()->role == 'admin')
    <li class="nav-item">
        <a class="nav-link" href="/pegawai">
            <i class="fas fa-chart-pie"></i>
        <span>Deputi 5</span></a>
    </li>
    @endif

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Addons
    </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-fw fa-folder"></i>
            <span>Pages</span>
            </a>
            <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Login Screens:</h6>
                <a class="collapse-item" href="login.html">Login</a>
                <a class="collapse-item" href="register.html">Register</a>
                <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">Other Pages:</h6>
                <a class="collapse-item" href="404.html">404 Page</a>
                <a class="collapse-item" href="blank.html">Blank Page</a>
            </div>
            </div>
        </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->
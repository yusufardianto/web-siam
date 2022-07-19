<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index.php" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
       class="brand-image img-circle elevation-3"
       style="opacity: .8">
      <span class="brand-text font-weight-light">AdminSIAM</span>
    </a>
 
  <!-- Sidebar -->
  <div class="sidebar">
 
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" 
        data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item">
            <a href="profil.php" class="nav-link">
              <i class="nav-icon fas fa-user"></i>
              <p>
                Profil
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="mahasiswa.php" class="nav-link">
              <i class="nav-icon fas fa-user-tie"></i>
              <p>
                Data Mahasiswa
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="jurusan.php" class="nav-link">
              <i class="nav-icon fas fa-address-card"></i>
              <p>
                Data Jurusan
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="hobi.php" class="nav-link">
              <i class="nav-icon fas fa-bicycle  "></i>
              <p>
                Data Hobi
              </p>
            </a>
          </li>
          <li class="nav-item">
          <?php 
            if (isset($_SESSION['level'])){
              if ($_SESSION['level']=="superadmin"){?>
              <li class="nav-item">
                  <a href="user.php" class="nav-link">
                  <i class="nav-icon fas fa-user-cog"></i>
                  <p>
                    Pengaturan User
                  </p>
                  </a>
              </li>
            <?php }}?>
            </li>
          <li class="nav-item">
            <a href="sign_out.php" class="nav-link">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>
                Sign Out
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

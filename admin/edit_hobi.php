<!DOCTYPE html>
<html>

<head>
  <?php include("includes/head.php") ?>
</head>
<?php
session_start();
include('../koneksi/koneksi.php');
if (isset($_GET['data'])) {
  $kode_hobi = $_GET['data'];
  $_SESSION['kode_hobi'] = $kode_hobi;

  //get data hobi
  $sql_d = "select `hobi` from `hobi` where `kode_hobi` = '$kode_hobi'";
  $query_d = mysqli_query($koneksi, $sql_d);
  while ($data_d = mysqli_fetch_row($query_d)) {
    $hobi = $data_d[0];
  }
}
?>

<?php
include('../koneksi/koneksi.php');
if ((isset($_GET['aksi'])) && (isset($_GET['data']))) {
  if ($_GET['aksi'] == 'hapus') {
    $kode_hobi = $_GET['data'];
    //hapus hobi
    $sql_dh = "delete from `hobi` 
			where `kode_hobi` = '$kode_hobi'";
    mysqli_query($koneksi, $sql_dh);
  }
}
?>


<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">
    <?php include("includes/header.php") ?>

    <?php include("includes/sidebar.php") ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h3><i class="fas fa-edit"></i> Edit Hobi</h3>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="hobi.php">Hobi</a></li>
                <li class="breadcrumb-item active">Edit Hobi</li>
              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">

        <div class="card card-info">
          <div class="card-header">
            <h3 class="card-title" style="margin-top:5px;"><i class="far fa-list-alt"></i> Form Edit Hobi</h3>
            <div class="card-tools">
              <a href="hobi.php" class="btn btn-sm btn-warning float-right"><i class="fas fa-arrow-alt-circle-left"></i> Kembali</a>
            </div>
          </div>
          <!-- /.card-header -->
          <!-- form start -->
          </br>
          <div class="col-sm-10">
            <div class="alert alert-danger" role="alert">Maaf data hobi wajib di isi</div>
          </div>

          <?php if (!empty($_GET['notif'])) { ?>
            <?php if ($_GET['notif'] == "editkosong") { ?>
              <div class="alert alert-danger" role="alert">
                Maaf data hobi wajib di isi</div>
            <?php } ?>
          <?php } ?>
        </div>

        <form class="form-horizontal" action="konfirmasi_edit_hobi.php" 2. method="post">
          <div class="card-body">
            <div class="form-group row">
              <label for="hobi" 6. class="col-sm-3 col-form-label">Hobi</label>
              <div class="col-sm-7">
                <input type="text" class="form-control" 9. id="hobi" name="hobi" value="<?php echo $hobi; ?>">
              </div>
            </div>
          </div>
          <!-- /.card-body -->
          <div class="card-footer">
            <div class="col-sm-10">
              <button type="submit" class="btn btn-info float-right">
                <i class="fas fa-save"></i> Simpan</button>
            </div>
          </div>
          <!-- /.card-footer -->
        </form>

    </div>
    <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include("includes/footer.php") ?>

  </div>
  <!-- ./wrapper -->

  <?php include("includes/script.php") ?>
</body>

</html>
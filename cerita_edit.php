<?php

include 'config.php';


  if (isset($_GET['id'])) {
   
    $id = ($_GET["id"]);

   
    $query = "SELECT * FROM cerita WHERE id='$id'";
    $result = mysqli_query($koneksi, $query);
    
    if(!$result){
      die ("Query Error: ".mysqli_errno($koneksi).
         " - ".mysqli_error($koneksi));
    }
   
    $data = mysqli_fetch_assoc($result);
   
       if (!count($data)) {
          echo "<script>alert('Data tidak ditemukan pada database');window.location='index.php?page=tampil_cerita';</script>";
       }
  } else {
    
    echo "<script>alert('Masukkan data id.');window.location='index.php?page=tampil_cerita';</script>";
  }         
  ?>
<!DOCTYPE html>
<html>
  <head>
    <title>Edit</title>
    <style type="text/css">
      * {
        font-family: "Trebuchet MS";
      }
      h1 {
        text-transform: uppercase;
        color: salmon;
      }
    button {
          background-color: salmon;
          color: #fff;
          padding: 10px;
          text-decoration: none;
          font-size: 12px;
          border: 0px;
          margin-top: 20px;
    }
    label {
      margin-top: 10px;
      float: left;
      text-align: left;
      width: 100%;
    }
    input {
      padding: 6px;
      width: 100%;
      box-sizing: border-box;
      background: #f8f8f8;
      border: 2px solid #ccc;
      outline-color: salmon;
    }
    div {
      width: 100%;
      height: auto;
    }
    .base {
      width: 400px;
      height: auto;
      padding: 20px;
      margin-left: auto;
      margin-right: auto;
      background: #ededed;
    }
    </style>
  </head>
  <body>
      <center>
        <h1>Edit Cerita <?php echo $data['judulcerita']; ?></h1>
      <center>
      <form method="POST" action="cerita_proses_edit.php" enctype="multipart/form-data" >
      <section class="base">
       
        <input name="id" value="<?php echo $data['id']; ?>"  hidden />
        <div>
          <label>Judul Cerita</label>
          <input type="text" name="judulcerita" value="<?php echo $data['judulcerita']; ?>" autofocus="" required="" />
        </div>
        <div>
          <label>Deskripsi</label>
         <input type="text" name="deskripsicerita" value="<?php echo $data['deskripsicerita']; ?>" />
        </div>
        <div>
          <label>Gambar Cerita</label>
          <img src="gambar/<?php echo $data['gambarcerita']; ?>" style="width: 120px;float: left;margin-bottom: 5px;">
          <input type="file" name="gambarcerita" />
          <i style="float: left;font-size: 11px;color: red">Abaikan jika tidak merubah gambar produk</i>
        </div>
        <div>
         <button type="submit">Simpan Perubahan</button>
        </div>
        </section>
      </form>
  </body>
</html>

<?php
//memasukkan file config.php
include('config.php');
?>

<center>
    <h1>Kelola Lokasi</h1> </center>
<br>

<div class="container" style="margin-top:20px">
		<hr>
		<a href="index.php?page=tambah_lokasi"><button class='btn btn-primary center-block'>Tambahkan Lokasi</button></a>
		<center>	
		<div class="table-responsive">
		<table class="table table-striped jambo_table bulk_action">
      <thead> 
    </thead>
    <tbody>
      <?php
      // jalankan query untuk menampilkan semua data diurutkan berdasarkan nim
      $query = "SELECT * FROM lokasi ORDER BY id ";
      $result = mysqli_query($koneksi, $query);
      //mengecek apakah ada error ketika menjalankan query
      if(!$result){
        die ("Query Error: ".mysqli_errno($koneksi).
           " - ".mysqli_error($koneksi));
      }

      //buat perulangan untuk element tabel dari data mahasiswa
     //variabel untuk membuat nomor urut
      // hasil query akan disimpan dalam variabel $data dalam bentuk array
      // kemudian dicetak dengan perulangan while
      while($row = mysqli_fetch_assoc($result))
      {
      ?>
            <td><?php echo $row['lokasiBerapa']; ?> </td>
            <td><?php echo $row['namaLokasi']; ?></td>
            <td> </td>
        <tr>
          <td>
          <td ><img src="gambar/<?php echo $row['gambarLokasi']; ?>" style="width: 550px;"></td>
          <td>
              <a class="btn btn-secondary btn-sm" href="lokasi_edit.php?id=<?php echo $row['id']; ?>">Edit</a> 
              <a class="btn btn-danger btn-sm" href="lokasi_proses_hapus.php?id=<?php echo $row['id']; ?>" onclick="return confirm('Anda yakin akan menghapus data ini?')">Hapus</a>
          </td>
        </tr>
     
         
      <?php
        
      }
      ?>
    </tbody>
    </table>
        </div>
    </div>
  </body>
</html>
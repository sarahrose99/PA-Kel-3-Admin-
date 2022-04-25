<?php
//memasukkan file config.php
include('config.php');
?>

<center>
    <h1>Kelola Media Pesanan </h1> </center>
<br>

<div class="container" style="margin-top:20px">
		<hr>
		<a href="index.php?page=tambah_mediapesanan"><button class='btn btn-primary center-block'>Tambahkan Media Pesanan</button></a>
		<center>	
		<div class="table-responsive">
		<table class="table table-striped jambo_table bulk_action">
      <thead>
        <tr>
          <th>Media</th>
          <th> </th>
          <th> </th>
        </tr>
    </thead>
    <tbody>
      <?php
      // jalankan query untuk menampilkan semua data diurutkan berdasarkan nim
      $query = "SELECT * FROM mediapesanan ORDER BY id ";
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
       <tr>
          <td ><img src="gambar/<?php echo $row['logoMedia']; ?>" style="width: 60px;"></td>
          <td><?php echo $row['isiMedia']; ?></td>
          <td>
              <a class="btn btn-secondary btn-sm" href="mediapesanan_edit.php?id=<?php echo $row['id']; ?>">Edit</a> 
              <a class="btn btn-danger btn-sm" href="mediapesanan_proses_hapus.php?id=<?php echo $row['id']; ?>" onclick="return confirm('Anda yakin akan menghapus data ini?')">Hapus</a>
          </td>
      </tr>
         
      <?php
        $no++; //untuk nomor urut terus bertambah 1
      }
      ?>
    </tbody>
    </table>
        </div>
    </div>
  </body>
</html>
<?php
//memasukkan file config.php
include('config.php');
?>

<center>
    <h1>Kelola Media Produk </h1> </center>
<br>

<div class="container" style="margin-top:20px">
		<hr>
		<a href="index.php?page=tambah_produk"><button class='btn btn-primary center-block'>Tambahkan Produk</button></a>
		<center>	
		<div class="table-responsive">
		<table class="table table-striped jambo_table bulk_action">
      <thead>
        <tr>
          <th> </th>
          <th>Nama Produk</th>
          <th>Harga</th>
          <th></th>
        </tr>
    </thead>
    <tbody>
      <?php
      // jalankan query untuk menampilkan semua data diurutkan berdasarkan nim
      $query = "SELECT * FROM infoproduk ORDER BY id ";
      $result = mysqli_query($koneksi, $query);
      //mengecek apakah ada error ketika menjalankan query
      if(!$result){
        die ("Query Error: ".mysqli_errno($koneksi).
           " - ".mysqli_error($koneksi));
      }

     
      // hasil query akan disimpan dalam variabel $data dalam bentuk array
      // kemudian dicetak dengan perulangan while
      while($row = mysqli_fetch_assoc($result))
      {
      ?>
       <tr>
          <td style="text-align: center;"><img src="gambar/<?php echo $row['gambarProduk']; ?>" style="width: 120px;"></td>
          <td><?php echo $row['namaProduk']; ?></td>
          <td><?php echo $row['hargaProduk']; ?></td>
          <td>
              <a class="btn btn-secondary btn-sm" href="produk_edit.php?id=<?php echo $row['id']; ?>">Edit</a> 
              <a class="btn btn-danger btn-sm" href="produk_proses_hapus.php?id=<?php echo $row['id']; ?>" onclick="return confirm('Anda yakin akan menghapus data ini?')">Hapus</a>
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
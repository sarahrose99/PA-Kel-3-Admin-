-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 10:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_onandcoffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `username`, `password`) VALUES
(1, 'OnandRoy5872', '05a775b365e659a64fdc35afac58bef0');

-- --------------------------------------------------------

--
-- Table structure for table `cerita`
--

CREATE TABLE `cerita` (
  `id` int(25) NOT NULL,
  `judulcerita` varchar(100) NOT NULL,
  `deskripsicerita` text NOT NULL,
  `gambarcerita` varchar(100) NOT NULL,
  `tanggalpost` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cerita`
--

INSERT INTO `cerita` (`id`, `judulcerita`, `deskripsicerita`, `gambarcerita`, `tanggalpost`) VALUES
(1, 'Selamat Datang di Kedai Onand Coffee', 'Kami baru saja meluncurkan website baru kami dan kami  akan senang mendengarkan pendapat kalian. Silahkan hubungi kami via WhatsApp maupun Instagram, lebih baik jika kalian berkunjung ke kedai Onand Coffee', '557-2019-06-25.jpg', '2022-03-14'),
(2, '2nd Anniversary Kedai Onand Coffee', 'Dua tahun sudah kami berjalan dalam dunia perkopi kopian ini ... terima kasih atas support yg sudah diberikan.. harapannya semoga kedepan nya kami akan menjadi lebih baik lagi..dan tak lupa pasang keyboard bongkar untuk kalian para orang dalam dan penghuni lapas nusa kambangan cabang balige sektor ONAND COFFEE. Sekali lagi terima kasih banyak, tanpa kalian kami tidak akan bergerak maju...oh iya besok kita bakal kasih nih harga spesial buat kalian semua...horas perkopian Indoensia salam kami orang dalam', '', '2020-12-01'),
(3, 'New Signature â€œKOSU ONANDâ€', 'Akhirnya selesai juga persiapan menu baru buat para orang dalam â€œKOSU ONANDâ€ salah satu signature dikedai kitaâ€¨Siap diederkan!!â€¨Kalian bisa delivery atau take awayâ€¨Apalagi nongkrong sama di kedai kita...\r\n.\r\nKAMI TUNGGU PARA ORANG DALAM DIKEDAI KAMI .', '', '2020-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `namaCustomer` varchar(255) NOT NULL,
  `emailCustomer` varchar(255) NOT NULL,
  `adminID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `namaCustomer`, `emailCustomer`, `adminID`) VALUES
(1, 'Hendrik Schicke', 'hendrikschicke@gmail.com', 1),
(2, 'Rotin', 'rotin123@gmail.com', 1),
(3, 'Niko Saripson Pandapotan Simamora', 'nikosimamora@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `infoproduk`
--

CREATE TABLE `infoproduk` (
  `id` int(11) NOT NULL,
  `jenisProduk` varchar(100) NOT NULL,
  `namaProduk` varchar(100) NOT NULL,
  `hargaProduk` varchar(50) NOT NULL,
  `deskripsiProduk` varchar(200) DEFAULT '-',
  `gambarProduk` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `infoproduk`
--

INSERT INTO `infoproduk` (`id`, `jenisProduk`, `namaProduk`, `hargaProduk`, `deskripsiProduk`, `gambarProduk`) VALUES
(1, 'Biji Kopi', 'Espresso Beans Lintong', '', '', ''),
(2, 'Biji Kopi', 'Filter Beans Tapanuli', '', '', ''),
(3, 'Biji Kopi', 'Filter Beans Lintong', '', '', ''),
(4, 'Biji Kopi ', 'Filter Beans Kerinci', '', '', ''),
(5, 'Biji Kopi', 'Filter Beans Sidikalang', '', '', ''),
(6, 'Biji Kopi', 'Robusta Beans Sidikalang', '', '', ''),
(7, 'Minuman Panas / Dingin', 'Kosu Onand', '15K / 15K', '', ''),
(8, 'Minuman Panas ', 'After Sex', '20K', '', ''),
(9, 'Minuman Panas / Dingin', 'Black Mamba', '20K / 22K', '', ''),
(10, 'Minuman Panas / Dingin ', 'Klepon', '20K / 22K', '', ''),
(11, 'Minuman Panas / Dingin ', 'Kacang Ijo', '20K / 22K', 'Kacang Ijo', ''),
(12, 'Minuman Panas / Dingin ', 'Red Velvet', '20K / 22K', '', ''),
(13, 'Minuman Panas ', 'Ocean Blue', '18K', '', ''),
(14, 'Minuman Panas / Dingin ', 'Latte', '18K / 20K', '', ''),
(15, 'Minuman Panas / Dingin', 'Capuccino', '18K / 20K ', 'Cappuccino adalah secangkir kopi susu yang berasal dari Italia dan mulai hadir di Eropa dan Amerika sejak tahun 1980-an. Secangkir kopi cappuccino memiliki perbandingan espresso, steamed milk dan busa', '67-capucino.jpg'),
(16, 'Minuman Panas / Dingin ', 'Espresso', '15K / 18K', '', ''),
(17, 'Minuman Panas / Dingin ', 'Espresso Susu', '15K / 18K', '', ''),
(18, 'Minuman Panas / Dingin ', 'Sanger', '15K / 18K', '', ''),
(19, 'Minuman Panas / Dingin ', 'Mocca', '22K / 25K', '', ''),
(20, 'Minuman Panas / Dingin', 'Aeropress', '20K / 22K', '', ''),
(21, 'Minuman Panas / Dingin', 'Choco Latte', '20K / 22K', '', ''),
(22, 'Minuman Panas / Dingin', 'Caramel Latte', '20K / 22K', '', ''),
(23, 'Minuman Panas / Dingin', 'Vanila Latte', '20K / 22K', '', ''),
(24, 'Minuman Panas / Dingin', 'Americano', '15K / 18K', '', ''),
(25, 'Minuman Panas / Dingin', 'Matcha', '20K / 22K', '', ''),
(26, 'Minuman Panas / Dingin', 'Vietnam Drip', '15K / 18K', '', ''),
(27, 'Minuman Panas', 'V60', '18K', '', ''),
(28, 'Minuman Panas', 'Japanese Ice', '20K', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jamoperasi`
--

CREATE TABLE `jamoperasi` (
  `id` int(50) NOT NULL,
  `hariOperasi` varchar(20) NOT NULL,
  `jamBuka` time NOT NULL,
  `jamTutup` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jamoperasi`
--

INSERT INTO `jamoperasi` (`id`, `hariOperasi`, `jamBuka`, `jamTutup`) VALUES
(1, 'Senin', '09:00:00', '23:00:00'),
(2, 'Selasa', '09:00:00', '23:00:00'),
(3, 'Rabu', '09:00:00', '23:00:00'),
(4, 'Kamis', '09:00:00', '23:00:00'),
(5, 'Jumat', '09:00:00', '23:00:00'),
(6, 'Sabtu', '09:00:00', '23:00:00'),
(7, 'Minggu', '09:00:00', '23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(50) NOT NULL,
  `lokasiBerapa` varchar(25) NOT NULL,
  `namaLokasi` varchar(200) NOT NULL,
  `gambarLokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `lokasiBerapa`, `namaLokasi`, `gambarLokasi`) VALUES
(1, 'Lokasi 1', 'Jl. Patuan Nagari No.89, Pardede Onan, Balige, Toba, Sumatera Utara 22312', '591-lokasi1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `masukan`
--

CREATE TABLE `masukan` (
  `masukanID` int(11) NOT NULL,
  `masukanCustomer` varchar(100) NOT NULL,
  `tanggalPost` date DEFAULT NULL,
  `gambarCustomer` blob DEFAULT NULL,
  `rating` blob DEFAULT NULL,
  `adminID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masukan`
--

INSERT INTO `masukan` (`masukanID`, `masukanCustomer`, `tanggalPost`, `gambarCustomer`, `rating`, `adminID`) VALUES
(1, 'Good coffee for you, the civilized one', '2021-07-27', '', '', 1),
(2, 'Lokasinya seberang makam raja sebelah Polsek.. Gak begitu faham kopi sih, cuma ini enaaa.. ada favor', '2019-03-02', '', '', 1),
(3, 'Very cute little coffee with decent coffee, probably the best you can get around here.\r\nIt has wif', '2022-01-20', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `masukan_customer`
--

CREATE TABLE `masukan_customer` (
  `masukan_customer_id` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `masukanID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masukan_customer`
--

INSERT INTO `masukan_customer` (`masukan_customer_id`, `customerID`, `masukanID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mediapesanan`
--

CREATE TABLE `mediapesanan` (
  `id` int(11) NOT NULL,
  `media` varchar(20) NOT NULL,
  `isiMedia` varchar(50) NOT NULL,
  `logoMedia` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mediapesanan`
--

INSERT INTO `mediapesanan` (`id`, `media`, `isiMedia`, `logoMedia`) VALUES
(1, 'WhatsApp', '+62 822-7373-3069', '434-whatsapp.png'),
(2, 'WhatsApp', '+62 821-6864-0303', '10-whatsapp.png'),
(3, 'Instagram', '@onand_coffee', '590-instagram.png'),
(4, 'Email', 'onandcoffee@gmail.com', '362-gmail.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `cerita`
--
ALTER TABLE `cerita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD KEY `adminID` (`adminID`);

--
-- Indexes for table `infoproduk`
--
ALTER TABLE `infoproduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jamoperasi`
--
ALTER TABLE `jamoperasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masukan`
--
ALTER TABLE `masukan`
  ADD PRIMARY KEY (`masukanID`),
  ADD KEY `adminID` (`adminID`);

--
-- Indexes for table `masukan_customer`
--
ALTER TABLE `masukan_customer`
  ADD PRIMARY KEY (`masukan_customer_id`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `masukanID` (`masukanID`);

--
-- Indexes for table `mediapesanan`
--
ALTER TABLE `mediapesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cerita`
--
ALTER TABLE `cerita`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `infoproduk`
--
ALTER TABLE `infoproduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `jamoperasi`
--
ALTER TABLE `jamoperasi`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `masukan`
--
ALTER TABLE `masukan`
  MODIFY `masukanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `masukan_customer`
--
ALTER TABLE `masukan_customer`
  MODIFY `masukan_customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mediapesanan`
--
ALTER TABLE `mediapesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`);

--
-- Constraints for table `masukan`
--
ALTER TABLE `masukan`
  ADD CONSTRAINT `masukan_ibfk_1` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`);

--
-- Constraints for table `masukan_customer`
--
ALTER TABLE `masukan_customer`
  ADD CONSTRAINT `masukan_customer_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `masukan_customer_ibfk_2` FOREIGN KEY (`masukanID`) REFERENCES `masukan` (`masukanID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

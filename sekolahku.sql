-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 03:41 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolahku`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `title`, `slug`, `content`, `kategori_id`, `thumbnail`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'Pos Satpam', 'pos-satpam', '-', 2, '1669726708_possatpam.jpg', '0', 1, '2022-12-01 01:08:39', '2022-12-01 05:58:28'),
(3, 'Lapangan', 'lapangan', '-', 3, '1669726759_lapangan.jpg', '0', 1, '2022-12-01 01:10:02', '2022-12-01 05:59:19'),
(4, 'Toilet', 'toilet', '-', 4, '1669726804_toilet.jpg', '0', 1, '2022-12-01 01:28:07', '2022-12-01 06:00:04'),
(5, 'Musholla', 'musholla', '-', 5, '1669726842_musholla.jpg', '0', 1, '2022-12-01 01:29:30', '2022-12-01 06:00:42'),
(6, 'Aula', 'aula', '-', 6, '1669823975_photo1669822801 (1).jpeg', '0', 1, '2022-11-30 00:20:45', '2022-11-30 08:59:35'),
(7, 'Lab Broadcasting', 'lab-broadcasting', '-', 7, '1669824076_photo1669822801 (2).jpeg', '0', 1, '2022-11-30 09:01:16', '2022-11-30 09:01:16'),
(8, 'Lab Multimedia', 'lab-multimedia', '-', 8, '1669824191_photo1669822801.jpeg', '0', 1, '2022-11-30 09:03:11', '2022-11-30 09:03:11'),
(9, 'Lab Keperawatan', 'lab-keperawatan', '-', 9, '1669824352_photo1669822801 (3).jpeg', '0', 1, '2022-11-30 09:05:52', '2022-11-30 09:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `berkas_murids`
--

CREATE TABLE `berkas_murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `kartu_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akte_kelahiran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surat_kelakuan_baik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surat_sehat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surat_tidak_buta_warna` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rapor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ijazah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `publisher_id` bigint(20) UNSIGNED NOT NULL,
  `publication_year` year(4) NOT NULL,
  `isbn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `borrowings`
--

CREATE TABLE `borrowings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `borrow_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `lateness` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_jurusans`
--

CREATE TABLE `data_jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_jurusans`
--

INSERT INTO `data_jurusans` (`id`, `jurusan_id`, `image`, `content`, `created_at`, `updated_at`) VALUES
(9, 9, '1670327986_photo1670327713.jpeg', 'Teknik komputer dan jaringan (TKJ) merupakan model pendidikan kejuruan yang berbasis teknologi informasi dan komunikasi. Teknik komputer dan jaringan saat ini keberadaannya sudah mulai terlihat dimata publik, dimana jurusan ini merupakan jurusan yang sudah mendekati ilmu praktisi yang langsung dapat diimplementasikan dilingkungan dunia kerja profesional.\r\n\r\nTeknik Komputer dan Jaringan merupakan ilmu berbasis Teknologi Informasi dan Komunikasi terkait kemampuan algoritma, dan pemrograman komputer, perakitan komputer, perakitan jaringan komputer, dan pengoperasian perangkat lunak, dan internet. Tidak hanya itu teknik komputer, dan jaringan juga membutuhkan pemahaman pada bidang teknik listrik, dan ilmu komputer sehingga mampu mengembangkan, dan mengintegrasikan perangkat lunak, dan perangkat keras.\r\n\r\nMateri yang dipelajari dalam ilmu TKJ sesuai dengan kurikulum ialah Simulasi dan Komunikasi Digital, Fisika, Kimia, Komputer dan Jaringan Dasar, Pemrograman Dasar, Dasar Desain Grafis, Teknologi Jaringan Berbasis Luas (WAN), Administrasi Infrastruktur Jaringan, Administrasi Sistem Jaringan, Teknologi Layanan Jaringan, Produk Kreatif dan Kewirausahaan.', '2022-12-06 04:59:46', '2022-12-06 04:59:46'),
(10, 10, '1670378727_Screenshot 2022-12-07 090514.png', 'MULTIMEDIA berasal dari dua kata yaitu MULTI dan MEDIA. Multi berarti banyak. Media berarti perantara. Pengertian multimedia secara utuh berarti Kombinasi atau penggabungan dari beberapa media seperti teks, audio, video, animasi, gambar yang disajikan dalam penggunaan komputer dengan bantuan tool dan link sehingga menghasilkan presentasi yang menarik. Mengingat bahwa jurusan multimedia adalah jurusan yang mempunyai ruang lingkup pekerjaan dan profesi yang luas, maka sebagian besar siswa lulusan SMP memfavoritkan dan memilih jurusan tersebut. Selain itu jurusan Multimedia memberikan peluang bagi lulusannya untuk membuka usaha atau berwirausaha sendiri dalam bidang multimedia.\r\n\r\nLalu apa saja yang dapat jika masuk jurusan multimedia ?\r\n\r\nSiswa yang mengambil jurusan multimedia akan diajarkan fungsi komputer yang mempresentasikan dan menggabungkan teks, grafik, audio visual, video editing, web design, design grafis, animasi dan pengenalan jaringan komputer sehingga user dapat berinteraksi, menciptakan, berkomunikasi, dan mengendalikan elemen-elemen tersebut.\r\n\r\nAdapun ruang lingkup pembelajaran jurusan multimedia di SMK sesuai dengan kurikulum mencakup Simulasi dan Komunikasi Digital, Fisika, Kimia, Komputer dan Jaringan Dasar, Pemrograman Dasar, Dasar Desain Grafis, Desain Grafis Percetakan, Teknik Pengolahan Audio Video, Teknik Animasi 2D dan 3D, Design Media Interaktif, Produk Kreatif dan Kewirausahaan.', '2022-12-06 19:05:27', '2022-12-06 19:05:27'),
(11, 11, '1670378947_Screenshot 2022-12-07 090852.png', 'Broadcasting adalah Proses pengiriman sinyal ke berbagai lokasi secara bersamaan baik melalui satelit, radio, televisi dan media lainnya. Dalam broadcasting juga memperdalam ilmu kemasyarakatan, artinya bagaimana cara kita untuk terjun langsung dan berhadapan dengan masyarakat luas. Pada tahun 2000 an dunia broadcasting mulai berkembang dengan pesat, hal ini dibuktikan dengan bermunculannya stasiun - stasiun televisi baru, hal ini berdampak dan membawa pengaruh tidak hanya pada dunia industri saja dunia pendidikan pun ikut merasakan dampak tersebut.\r\n\r\nTak mau kalah dengan PT (Perguruan Tinggi), di tingkat Sekolah Menengah Kejuruan pun muncul jurusan broadcast pertelevisian tepatnya di tahun 2003 dan menghasilkan fenomena tersendiri. Sekarang jurusan ini menjadi tren tersendiri bagi kalangan remaja yang baru saja menamatkan pendidikan Sekolah Menengah Pertama (SMP/MTs). Animo mereka sangat besar untuk memasuki dunia broadcasting pertelevisian. Lengkap sudah jurusan yang satu ini dari jenjang SMK hingga Perguruan Tinggi sudah terwakili. Tentulah perkembangan ini harus segera disikapi secara cepat agar mereka para peminat broadcast pertelevisian menjadi broadcaster-broadcaster handal (profesional) di bidangnya. Tak hanya itu, hal ini juga merupakan bagian dari membentuk para profesional broadcast tv yang mampu mengkritisi zaman dan menegakkan nilai-nilai kearifan lokal. Secara tidak langsung kontrol konten penyiaran akan terbentuk sendiri. Serta kelak mampu mengembangkan ekonomi kreatif dikalangan pelajar yang diterapkan sejak dini yang mampu menghasilkan jiwa wira usaha (enterpreunership).', '2022-12-06 19:09:07', '2022-12-06 19:09:07'),
(12, 12, '1670379129_Screenshot 2022-12-07 091157.png', 'Kesehatan merupakan salah satu bidang ilmu yang terus melakukan berbagai inovasi dari masa ke masa. Bahkan industri kesehatan banyak mendapat pengaruh dari sektor ekonomi, sains dan teknologi. Dengan berkembangnya dunia industri kesehatan tentu sangat membutuhkan tenaga-tenaga profesional dengan keahlian yang profesional. Maka dari itu, sekolah menengah kejuruan (SMK) turut memberikan kontribusi dalam mencetak tenaga-tenaga ahli dan terampil yang paham dengan bidang kesehatan.\r\n\r\nLalu apa saja yang dapat jika masuk jurusan Keperawatan ?\r\n\r\nMateri yang dipelajari dalam ilmu Keperawatan sesuai dengan kurikulum ialah Simulasi Digital, Biologi dan Kimia, Fisika, Konsep Dasar Keperawatan, Anatomi dan Fisiologi, Komunikasi Keperawatan, Keterampilan Dasar Tindakan Keperawatan, Kebutuhan Dasar Manusia, Ilmu Penyakit, Ilmu Kesehatan Masyarakat, Pengembangan Produk Kreatif.', '2022-12-06 19:12:09', '2022-12-06 19:12:09'),
(13, 13, '1670379577_Screenshot 2022-12-07 091926.png', 'Bidang bisnis dan manajemen masih menjadi salah satu bidang yang diminati oleh para pelajar yang ingin melanjutkan pendidikan ke sekolah menengah kejuruan. Karena bidang bisnis ekonomi tidak akan pernah lepas dari kebutuhan hidup manusia sehari-hari. Penerapan ilmu bidang ini tentu akan selalu dibutuhkan dalam segala aspek dan industri. Adapun manajemen perkantoran adalah suatu kegiatan pengelolaan data dan informasi yang dilakukan secara teratur, sistematik dan terus menerus, mengikuti kegiatan organisasi dengan tujuan mencapai keberhasilan tugas organisasi yang bersangkutan. Pekerjaan kantor atau tata usaha, sering disebut dengan istilah office work atau clericalwork.\r\n\r\nLalu apa saja yang dapat jika masuk jurusan Manajemen Perkantoran ?\r\n\r\nMateri yang dipelajari dalam ilmu Manjemen Perkantoran sesuai dengan kurikulum ialah Simulasi dan Komunikasi Digital, Ekonomi Bisnis, Administrasi Umum, IPA, Teknologi Perkantoran, Korespondensi, Kearsipan, Otomatisasi Tata Kelola Kepegawaian, Tata Kelola Keuangan, Tata Kelola Sarana dan Prasarana, Tata Kelola Humas & Keprotokolan, Produk Kreatif dan Keiwirausahaan.', '2022-12-06 19:19:37', '2022-12-06 19:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `data_murids`
--

CREATE TABLE `data_murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `nis` bigint(20) DEFAULT NULL,
  `nisn` bigint(20) DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` enum('Islam','Kristen Katolik','Kristen Protestan','Hindu','Budha','Konghucu') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asal_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proses` enum('Pendaftaran','Berkas','Murid','Ditolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pendaftaran',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_orang_tuas`
--

CREATE TABLE `data_orang_tuas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `nama_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_ayah` enum('SD','SMP','SMA/SMK','S1','S2','S3') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_ayah` enum('Wiraswasta','Wirausaha','ASN','Buruh') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_ibu` enum('SD','SMP','SMA/SMK','S1','S2','S3') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_ibu` enum('Ibu Rumah Tangga','Wiraswasta','Wirausaha','ASN','Buruh') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acara` datetime NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `desc`, `slug`, `content`, `thumbnail`, `acara`, `lokasi`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sosialisasi Duta Covid', 'Sosialisasi Duta Covid', '', 'Sosialisasi Duta Covid', '1669738907_photo6066740717369275596.jpg', '2022-10-11 22:30:00', 'SMK Atlantis Plus', '0', '2022-05-29 00:56:30', '2022-11-29 09:21:47'),
(2, 'Batik Nasional', 'Batik Nasional', '', 'Batik Nasional', '1669738770_photo6066740717369275594.jpg', '2022-10-03 13:00:00', 'SMK Atlantis Plus', '0', '2022-05-29 01:31:30', '2022-11-29 09:19:30'),
(3, 'Maulid Nabi', 'Maulid Nabi', '', 'Maulid Nabi', '1669738331_photo6066740717369275584.jpg', '2022-10-10 19:00:00', 'SMK Atlantis Plus', '0', '2022-05-29 01:36:33', '2022-11-29 09:12:11'),
(4, 'Happy Teacher Day', 'Happy Teacher Day', '', 'Happy Teacher Day', '1670340258_photo1670340205.jpeg', '2022-11-25 13:00:00', 'SMK Atlantis Plus', '0', '2022-05-29 01:37:31', '2022-12-06 08:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `facebook`, `instagram`, `twitter`, `youtube`, `logo`, `telp`, `whatsapp`, `email`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'osis.smkatlantis', 'osis.smkatlantis', 'osis.smkatlantis', 'SMK ATLANTIS PLUS', '1669722115_Icon_Atlanti Entrepreneur Shool.png', '02122779687', '02122779687', 'smk.marketing@atlantisplus.sch.id', 'SMK ATLANTIS PLUS beralamat di JLN. BUKIT SIKUMBANG NO. 103 RT. 04/09, Pangkalan Jati Baru, Kec. Cinere, Kota Depok, Jawa Barat, dengan kode pos 16513.', '2022-05-29 01:18:57', '2022-11-29 09:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `image_sliders`
--

CREATE TABLE `image_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_sliders`
--

INSERT INTO `image_sliders` (`id`, `image`, `title`, `desc`, `urutan`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1669788634_photo6068992517182960788.jpg', 'SMK ATLANTIS PLUS', 'SMK ATLANTIS Plus merancang kurikulum berbasis industri dengan konsep 50% menggunakan kurikulum nasional dan 50% menggunakan kurikulum industri dengan mendatangkan praktisi-praktisi industri sebagai fasilitator.', 1, '0', '2022-05-29 01:11:49', '2022-11-30 02:24:53'),
(2, '1669788656_photo6068992517182960787.jpg', 'WE ARE ENTREPRENEUR', 'entrepreneur sehingga dapat memicu lahirnya generasi baru Indonesia yang memiliki semangat dan kemampuan untuk menjadi entrepreneur muda yang profesional dan mandiri serta mampu mengubah wajah ekonomi Indonesia dimata dunia.', 0, '0', '2022-05-29 01:12:59', '2022-11-30 02:20:52'),
(3, '1669793416_photo6068964445276715463.jpg', 'We Are Student with good Characteristic', 'Budaya, pendidikan dan agama merupakan sumber nilai yang penting bagi kehidupan berbangsa dan bernegara, mewujudkan masyarakat yang berkarakter, berkeadaban dan berharkat.', 2, '0', '2022-05-29 01:13:21', '2022-11-30 02:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusans`
--

INSERT INTO `jurusans` (`id`, `nama`, `singkatan`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(9, 'Teknik Komputer Jaringan', 'TKJ', 'teknik-komputer-jaringan', '0', '2022-12-06 04:59:46', '2022-12-06 04:59:46'),
(10, 'Multimedia', 'MM', 'multimedia', '0', '2022-12-06 19:05:27', '2022-12-06 19:05:27'),
(11, 'Broadcasting', 'BC', 'broadcasting', '0', '2022-12-06 19:09:07', '2022-12-06 19:09:07'),
(12, 'Keperawatan', 'KP', 'keperawatan', '0', '2022-12-06 19:12:09', '2022-12-06 19:12:09'),
(13, 'Manajemen Perkantoran', 'OTKP', 'manajemen-perkantoran', '0', '2022-12-06 19:19:37', '2022-12-06 19:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_beritas`
--

CREATE TABLE `kategori_beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_beritas`
--

INSERT INTO `kategori_beritas` (`id`, `nama`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Pos Satpam', '0', '2022-05-29 01:03:11', '2022-11-29 05:58:02'),
(3, 'Lapangan', '0', '2022-05-29 01:03:21', '2022-11-29 05:58:54'),
(4, 'Toilet', '0', '2022-05-29 01:03:28', '2022-11-29 05:59:33'),
(5, 'Musholla', '0', '2022-05-29 01:03:44', '2022-11-29 06:00:21'),
(6, 'Aula', '0', '2022-11-30 00:19:57', '2022-11-30 00:19:57'),
(7, 'Lab Broadcasting', '0', '2022-11-30 09:00:29', '2022-11-30 09:00:29'),
(8, 'Lab Multimedia', '0', '2022-11-30 09:02:43', '2022-11-30 09:02:43'),
(9, 'Lab Keperawatan', '0', '2022-11-30 09:05:10', '2022-11-30 09:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_20_132856_create_jurusans_table', 1),
(6, '2022_03_20_133244_create_data_jurusans_table', 1),
(7, '2022_03_22_182953_create_kegiatans_table', 1),
(8, '2022_03_23_040838_create_image_sliders_table', 1),
(9, '2022_03_23_052723_add_field_to_image_sliders_table', 1),
(10, '2022_03_23_065335_create_abouts_table', 1),
(11, '2022_03_23_074809_create_videos_table', 1),
(12, '2022_03_24_075737_create_kategori_beritas_table', 1),
(13, '2022_03_24_075900_create_beritas_table', 1),
(14, '2022_03_24_105758_create_events_table', 1),
(15, '2022_03_24_201826_add_field_to_events_table', 1),
(16, '2022_03_24_204322_create_footers_table', 1),
(17, '2022_03_25_102915_create_permission_tables', 1),
(18, '2022_03_27_074151_create_users_details_table', 1),
(19, '2022_03_27_094236_create_data_murids_table', 1),
(20, '2022_03_28_154339_create_profile_sekolahs_table', 1),
(21, '2022_03_28_161701_create_visimisis_table', 1),
(22, '2022_03_30_084531_create_data_orang_tuas_table', 1),
(23, '2022_03_30_172737_add_value_role_in_users_table', 1),
(24, '2022_03_30_194727_add_value_role_in_users_details_table', 1),
(25, '2022_04_01_190600_add_field_to_data_murids', 1),
(26, '2022_04_01_191038_create_berkas_murids_table', 1),
(27, '2022_05_20_062053_create_authors_table', 1),
(28, '2022_05_20_062103_create_publishers_table', 1),
(29, '2022_05_20_062130_create_categories_table', 1),
(30, '2022_05_20_062140_create_books_table', 1),
(31, '2022_05_20_062219_create_members_table', 1),
(32, '2022_05_20_062236_create_borrowings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(9, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_sekolahs`
--

CREATE TABLE `profile_sekolahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_sekolahs`
--

INSERT INTO `profile_sekolahs` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'SMK ATLANTIS PLUS', '   SMK ATLANTIS Plus, merupakan sekolah formal binaan Yayasan Kebangkitan Peradaban Nusantara yang memiliki tiga program keunggulan yaitu entrpreneur, english everyday dan charecter serta memiliki lima bidang kometensi keahlian, diantaranya adalah Multimedia, Broadcasting, Teknik Komputer Jaringan, Keperawatan dan Manajemen Perkantoran, yang memiliki ciri khas berbeda-beda pada setiap kopetensi program keahlian tersebut. SMK Atlantis Plus sangat fokus dalam mengembangkan ilmu pengetahuan dan teknologi. Sesuai dengan visi dan misi sekolah, untuk menciptakan output yang berkualitas baik dan profesional, sehingga mampu bersaing dengan dunia industri serta mandiri untuk menciptakan lapangan pekerjaan sendiri sesuai dengan kompetensi keahlian. Lulusan SMK, diharapkan memiliki pengetahuan teoritis dan mampu menerapkan ilmu pengetahuan secara nyata di kehidupan sehari-hari demi memenuhi kebutuhan hidupnya. Serta dibekali dengan kemampuan berbahasa inggris.', '1669793691_photo6068992517182960788.jpg', '2022-05-29 01:19:23', '2022-11-30 00:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-05-29 00:49:20', '2022-05-29 00:49:20'),
(2, 'Guru', 'web', '2022-05-29 00:49:20', '2022-05-29 00:49:20'),
(3, 'Staf', 'web', '2022-05-29 00:49:20', '2022-05-29 00:49:20'),
(4, 'Murid', 'web', '2022-05-29 00:49:20', '2022-05-29 00:49:20'),
(5, 'Orang Tua', 'web', '2022-05-29 00:49:20', '2022-05-29 00:49:20'),
(6, 'Alumni', 'web', '2022-05-29 00:49:20', '2022-05-29 00:49:20'),
(7, 'Guest', 'web', '2022-05-29 00:49:20', '2022-05-29 00:49:20'),
(8, 'Perpustakaan', 'web', '2022-05-29 00:49:20', '2022-05-29 00:49:20'),
(9, 'PPDB', 'web', '2022-05-29 00:49:20', '2022-05-29 00:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `role`, `status`, `foto_profile`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Sekolah', 'kepsek', 'kepsek@sch.id', 'Admin', 'Aktif', '1670378092_8b167af653c2399dd93b952a48740620.jpg', NULL, '$2y$10$jOcK8TktpMMpKMk/.9hARONahtPVfL8DeGrOJ5RHYH6GqKNcr3hu6', NULL, '2022-05-29 00:49:21', '2022-12-06 18:54:52'),
(2, 'Fatimah Wardah, M.Pd', 'jago00', 'example1@gmail.com', 'Guru', 'Aktif', '1669723278_15.jpg', NULL, '$2y$10$Vz9xfGCZCqkuiruhMtASouzSvHVIIO1DCy2TN5R7ImF17hS.o9QiW', NULL, '2022-05-29 01:16:00', '2022-11-29 23:53:45'),
(3, 'Chichi Marthalia, S.Pd', 'nasrul24', 'example2@gmail.com', 'Guru', 'Aktif', '1669723355_7.jpg', NULL, '$2y$10$WIU2FBSt9B./pr/g8AHzXuiriIm66.OexmFMOUxDBbvIJYEGaL3Dm', NULL, '2022-05-29 01:16:24', '2022-11-29 23:53:56'),
(4, 'Annisa Kumala Dewi, S.Pd', 'kurniawan54', 'example3@gmail.com', 'Guru', 'Aktif', '1669723461_10.jpg', NULL, '$2y$10$kFGMFRG8VTmHINlhb0EcMeDfPeEbX3ZRY5M5cduQ1CpNCsZb7140i', NULL, '2022-05-29 01:16:54', '2022-11-29 23:54:11'),
(5, 'Asril Kasim, SEI', 'nasrul20', 'example4@gmail.com', 'Guru', 'Aktif', '1669723550_1.jpg', NULL, '$2y$10$unrS6z71u40/TkjEuOjQNePkMsGyaGpOAVy4PdypuktLuR19p0Q4y', NULL, '2022-05-29 01:17:20', '2022-11-29 23:54:29'),
(6, 'Staf PPDB Jago Software', 'staf12', 'nasrulkurniawan@yahoo.com', 'PPDB', 'Aktif', '1653813612_logo.png', NULL, '$2y$10$jf9I6i5UUqdTzZLd8EKxCuhEiHb6GLs/0RtdvumRdjsl2r5cYQVtm', NULL, '2022-05-29 01:40:12', '2022-05-29 01:40:12'),
(7, 'Desi Satriani, S.Pd', 'desi59', 'example5@gmail.com', 'Guru', 'Aktif', '1669723619_14.jpg', NULL, '$2y$10$qhtAhASAKISqlmlKL4eBk.dndAjns1JA8znanbg2NZDVd9lpron7i', NULL, '2022-11-29 05:06:59', '2022-11-29 23:55:10'),
(8, 'Umi Nurhidayah', 'umi56', 'example6@gmail.com', 'Guru', 'Aktif', '1669723676_12.jpg', NULL, '$2y$10$A/I4Zy0TXaGnOviGL5gyU.y2g2B0eBosv7NrZKw3sJsYpo68eWs0G', NULL, '2022-11-29 05:07:56', '2022-11-29 23:58:29'),
(9, 'Paijan', 'paijan57', 'example7@gmail.com', 'Guru', 'Aktif', '1669723737_18.jpg', NULL, '$2y$10$QafquyigtplG7BtG44Q0VuHlTCu3v8LDomcQOXWHkZy261.ayv37G', NULL, '2022-11-29 05:08:57', '2022-11-30 00:00:35'),
(10, 'Rina Z Pridjadi, M.Pd', 'rina37', 'example8@gmail.com', 'Guru', 'Aktif', '1669723777_16.jpg', NULL, '$2y$10$hP1n.eJTq9QiPRof9FT65eeDNm8Lol4XkO1My1Ron8/yq0tt2PzWq', NULL, '2022-11-29 05:09:37', '2022-11-30 00:01:39'),
(11, 'Indah Susanti, S.Pd', 'indah27', 'example9@gmail.com', 'Guru', 'Aktif', '1669723827_6.jpg', NULL, '$2y$10$zdsAsRwLXsCfVvphODrGfOAcze0n7RS.k4Q2uilhfbxnNdFVkRzUG', NULL, '2022-11-29 05:10:27', '2022-11-30 00:01:53'),
(12, 'Indra Yeni, S.Pd', 'indra09', 'example10@gmail.com', 'Guru', 'Aktif', '1669723869_4.jpg', NULL, '$2y$10$ozEs0tmnmAInqf88HFv30.zksz6nl5EAgceKiG1PmbRuCJLgFLwwO', NULL, '2022-11-29 05:11:09', '2022-11-30 00:02:08'),
(13, 'Fitria Wilda, S.Ag', 'fitria44', 'example11@gmail.com', 'Guru', 'Aktif', '1669723904_2.jpg', NULL, '$2y$10$4JvegEY6Yb8YGi7Rk0jRteuOa6BE1xJVJ0GYg2T6WKXJou898AeEG', NULL, '2022-11-29 05:11:44', '2022-11-30 00:02:31'),
(14, 'Gerry Pratama, M.Pd', 'gerry16', 'example12@gmail.com', 'Guru', 'Aktif', '1669723936_11.jpg', NULL, '$2y$10$DE8.gBTBNWosnTEZoe4Ae.HCb3jkRxxqy/eXGaxs/UO9Y/wjeaZAe', NULL, '2022-11-29 05:12:16', '2022-11-30 00:02:47'),
(15, 'Tuty K Saragih, M.Pd', 'tuty00', 'example13@gmail.com', 'Guru', 'Aktif', '1669723980_8.jpg', NULL, '$2y$10$m.WVhiqdi0hARfqE683OkeVNSY74XwMMaLZ9boabxm9JclIqhtEhi', NULL, '2022-11-29 05:13:00', '2022-11-30 00:04:46'),
(16, 'Yayan', 'yayan18', 'example14@gmail.com', 'Guru', 'Aktif', '1669728258_17.jpg', NULL, '$2y$10$z5FXLzqTCbOikZQm0GNxe.Pk0IUkmuDxQL0e/Bvizk1yaK69enIR2', NULL, '2022-11-29 06:24:18', '2022-11-30 00:05:59'),
(17, 'Aby Rohmansah, A. Md', 'aby15', 'example15@gmail.com', 'Guru', 'Aktif', '1669792215_Pak Aby.jpg', NULL, '$2y$10$SmGxSIoAJqBOufB6lC4xS.Js00h2SNPrVtfwMQ6xJh1bSu5WKuYXa', NULL, '2022-11-30 00:10:15', '2022-11-30 00:10:32'),
(18, 'Zulkarnain, S. Pd', 'zulkarnain,27', 'example16@gmail.com', 'Guru', 'Aktif', '1669792287_Pak Zul.jpg', NULL, '$2y$10$/RJojkGlTNSuMy2HrChtsuVCZLkQ5vp44w.I46T3aKeFs6cz/DfpW', NULL, '2022-11-30 00:11:27', '2022-11-30 00:17:07'),
(19, 'Syamsul Maolana, ST', 'syamsul29', 'example17@gmail.com', 'Guru', 'Aktif', '1669792409_Pak Syamsul.jpg', NULL, '$2y$10$8p3vL9.Qejctp3GnGZB3GuNNZkt0v0PQJGjMInWBUqusBUHwlGcam', NULL, '2022-11-30 00:13:29', '2022-11-30 00:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `users_details`
--

CREATE TABLE `users_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mengajar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkidln` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_details`
--

INSERT INTO `users_details` (`id`, `user_id`, `role`, `mengajar`, `nip`, `email`, `linkidln`, `instagram`, `twitter`, `facebook`, `youtube`, `website`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 2, 'Guru', 'Kepala Sekolah', NULL, 'example1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-05-29 01:16:00', '2022-11-29 23:53:45'),
(2, 3, 'Guru', 'Wakil Kurikulum', NULL, 'example2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-05-29 01:16:24', '2022-11-29 23:53:56'),
(3, 4, 'Guru', 'Wakil Hubungan Industri', NULL, 'example3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-05-29 01:16:54', '2022-11-29 23:54:11'),
(4, 5, 'Guru', 'Wakil Sarana Prasarana', NULL, 'example4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-05-29 01:17:20', '2022-11-29 23:54:29'),
(5, 6, 'PPDB', NULL, 321456987, 'nasrulkurniawan@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-05-29 01:40:12', '2022-05-29 01:40:12'),
(6, 7, 'Guru', 'Staff Kurikulum', NULL, 'example5@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-29 05:06:59', '2022-11-29 23:55:10'),
(7, 8, 'Guru', 'Bendahara Sekolah', NULL, 'example6@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-29 05:07:56', '2022-11-29 23:58:29'),
(8, 9, 'Guru', 'Office Boy', NULL, 'example7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-29 05:08:57', '2022-11-30 00:00:35'),
(9, 10, 'Guru', 'Bahasa Inggris', NULL, 'example8@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-29 05:09:37', '2022-11-30 00:01:39'),
(10, 11, 'Guru', 'PPKN', NULL, 'example9@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-29 05:10:27', '2022-11-30 00:01:53'),
(11, 12, 'Guru', 'Bahasa Indonesia', NULL, 'example10@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-29 05:11:09', '2022-11-30 00:02:08'),
(12, 13, 'Guru', 'Pendidikan Agama Islam', NULL, 'example11@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-29 05:11:44', '2022-11-30 00:02:31'),
(13, 14, 'Guru', 'Bahasa Inggris', NULL, 'example12@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-29 05:12:16', '2022-11-30 00:02:47'),
(14, 15, 'Guru', 'Kimia - Fisika', NULL, 'example13@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-29 05:13:00', '2022-11-30 00:04:46'),
(15, 16, 'Guru', 'Security', NULL, 'example14@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-29 06:24:18', '2022-11-30 00:05:59'),
(16, 17, 'Guru', 'Kepala Program Studi', NULL, 'example15@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-30 00:10:15', '2022-11-30 00:10:32'),
(17, 18, 'Guru', 'Guru Produktif', NULL, 'example16@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-30 00:11:27', '2022-11-30 00:17:07'),
(18, 19, 'Guru', 'Guru Produktif', NULL, 'example17@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-11-30 00:13:29', '2022-11-30 00:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `desc`, `url`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ATLANTIS SENIOR HIGH SCHOOL PROFILE', 'ATLANTIS SENIOR HIGH SCHOOL PROFILE', 'https://www.youtube.com/watch?v=3KhRLt8ZeC0&ab_channel=SMKATLANTISPLUS', '0', '2022-05-29 01:38:18', '2022-11-29 04:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `visimisis`
--

CREATE TABLE `visimisis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visimisis`
--

INSERT INTO `visimisis` (`id`, `visi`, `misi`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Visi adalah suatu rangkaian kata yang memuat impian, cita-cita, nilai, masa depan dari suatu organisasi, baik di dalam sebuah lembaga hingga perusahaan.', 'misi adalah bagaimana sebuah perusahaan dapat mewujudkan cita-citanya tersebut di masa depan.', '1669800396_SMK_AES.png', '2022-05-29 01:19:36', '2022-11-30 02:26:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_name_unique` (`name`);

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_title_unique` (`title`);

--
-- Indexes for table `berkas_murids`
--
ALTER TABLE `berkas_murids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_code_unique` (`book_code`);

--
-- Indexes for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `borrowings_borrow_code_unique` (`borrow_code`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `data_jurusans`
--
ALTER TABLE `data_jurusans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_jurusans_jurusan_id_foreign` (`jurusan_id`);

--
-- Indexes for table `data_murids`
--
ALTER TABLE `data_murids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_orang_tuas`
--
ALTER TABLE `data_orang_tuas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_title_unique` (`title`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_sliders`
--
ALTER TABLE `image_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jurusans_nama_unique` (`nama`),
  ADD UNIQUE KEY `jurusans_slug_unique` (`slug`),
  ADD UNIQUE KEY `jurusans_singkatan_unique` (`singkatan`);

--
-- Indexes for table `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_beritas_nama_unique` (`nama`);

--
-- Indexes for table `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kegiatans_nama_unique` (`nama`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_member_code_unique` (`member_code`),
  ADD UNIQUE KEY `members_user_id_unique` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profile_sekolahs`
--
ALTER TABLE `profile_sekolahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publishers_name_unique` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visimisis`
--
ALTER TABLE `visimisis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `berkas_murids`
--
ALTER TABLE `berkas_murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `borrowings`
--
ALTER TABLE `borrowings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_jurusans`
--
ALTER TABLE `data_jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `data_murids`
--
ALTER TABLE `data_murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_orang_tuas`
--
ALTER TABLE `data_orang_tuas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image_sliders`
--
ALTER TABLE `image_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_sekolahs`
--
ALTER TABLE `profile_sekolahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visimisis`
--
ALTER TABLE `visimisis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_jurusans`
--
ALTER TABLE `data_jurusans`
  ADD CONSTRAINT `data_jurusans_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2020 at 08:01 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id12918115_tranlien11`
--

-- --------------------------------------------------------

--
-- Table structure for table `Monan`
--

CREATE TABLE `Monan` (
  `id` int(11) NOT NULL COMMENT 'AUTO_INCREMENT',
  `tenMonan` text COLLATE utf8_unicode_ci NOT NULL,
  `anhMonan` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Monan`
--

INSERT INTO `Monan` (`id`, `tenMonan`, `anhMonan`, `noidung`) VALUES
(1, 'Cách làm bánh giò nhân thịt chay mặn mềm ngon tại nhà', 'https://webnauan.vn/wp-content/uploads/2020/02/cach-lam-banh-gio-ngon-360x216.jpg', '1.1. Nguyên liệu\r\n- 350 gram bột gạo\r\n- 200 gram thịt heo bằm\r\n- 200 gram hành tím băm\r\n- 30 gram nấm mèo\r\n- 1 muỗng canh hành phi\r\n- 10 quả trứng cút\r\n- 1 muỗng canh tỏi băm\r\n- 1 muỗng canh hành tây băm\r\n- 20 gram nấm hương\r\n- 80 gram bột năng\r\n- 10 lá chuối\r\n- 1,5 lít nước dùng gà\r\n- Gia vị nêm nếm: 1 muỗng canh muối, 1 muỗng canh hạt nêm, 1 muỗng canh tiêu, 2 muỗng canh dầu ăn\r\n1.2. Hướng dẫn cách làm bánh giò từ bột gạo gói bằng lá chuối\r\n1.2.1. Hướng dẫn làm nhân thịt nấm mèo trứng cút cho bánh giò\r\n- Nấm mèo, nấm hương mua về đem ngâm với nước ấm khoảng 15 phút cho nở mềm. Sau đó vớt ra rửa lại với nước, cắt bỏ chân và băm nhuyễn. Trứng cút luộc chín, bóc vỏ và để ra một góc riêng.\r\n- Tiếp đến đặt chảo lên bếp, cho vào 1 muỗng canh dầu ăn, vặn lửa vừa đến khi dầu nóng thì thêm vào 1 muỗng canh tỏi băm, 1 muỗng canh hành tây băm cùng 1 muỗng canh hành tím. Xào đến khi dậy mùi thì trút 200 gram thịt heo vào.\r\n- Tiếp tục đun lửa cho đến khi thịt săn lại thì thả nấm hương và nấm mèo vào, nêm 1 muỗng canh muối, 1 muỗng canh hạt nêm và 1 muỗng canh tiêu. Dùng đũa đảo đều, đun thêm 5 đến 7 phút nữa thì tắt bếp\r\n1.2.2. Hướng dẫn cách làm vỏ bánh giò mềm ngon từ bột gạo, bột năng.\r\n- Cho 1,5 lít nước dùng gà vào nồi, thêm 350 gram bột gạo, 80 gram bột năng cùng một ít muối, khuấy đều và bắc lên bếp đun với lửa nhỏ. Sau đó thêm vào 1 muỗng canh dầu ăn, khuấy liên tục đến khi bột sánh đặc lại thì tắt bếp.\r\n1.2.3. Hướng dẫn cách gói bánh giò bằng lá chuối\r\n- Lá chuối sau khi mua về đem trụng sơ qua nước sôi cho sạch và mềm, cách này giúp khi gói bánh không bị rách. Dùng khăn lau khô, sau đó trải một lớp màng bọc thực phẩm lên trên lá chuối và gấp chúng lại thành hình phễu.\r\n- Múc một muỗng bột cho vào phễu lá, dùng muỗng dàn đều sao cho ở giữa có một lỗ hổng. Sau đó cho phần nhân đã xào chín ở trên vào cùng 1 quả trứng cút rồi phủ thêm một lớp bột lên trên để nhân bánh không tràn ra ngoài.\r\n- Dùng dây cột bánh lại cho chắc rồi đặt vào xửng hấp. Đun lửa từ 25 đến 30 phút là bánh chín. Bánh giò nóng sau khi hoàn thành sẽ có mùi thơm phưng phức. Bột bánh dai dai, béo béo với lớp nhân thịt mặn mặn bên trong, ăn kèm với dưa leo và xúc xích nướng thì tuyệt vời.\r\n'),
(2, 'Cách làm bánh xèo kim chi Hàn Quốc (PaJeon) hải sản cực ngon', 'https://webnauan.vn/wp-content/uploads/2020/02/cach-lam-banh-xeo-kim-chi-han-quoc-hai-san-360x216.jpg', ' 1. Chuẩn bị nguyên liệu\r\n\r\n- 300 gram Kimchi cải thảo loại đóng gói sẵn (hoặc tự muối kim chi cải thảo tại nhà)\r\n- 80 gram tôm tươi\r\n- 80 gram nghêu\r\n- 70 gram nấm kim châm\r\n- 50 gram hẹ`\r\n- 150 gram bột mì đa dụng\r\n- 15 gram bột bắp\r\n- 2 quả trứng gà\r\n- 300 ml nước lọc\r\n- Gia vị: 1 muỗng canh đường, 1 muỗng cà phê muối, 1 muỗng canh dầu mè, 1/2 muỗng cà phê tiêu..\r\n\r\n2. Sơ chế các nguyên liệu hải sản\r\n\r\n- Cắt nhỏ 300 gram kimchi cải thảo, sau đó trộn đều với 1 muỗng canh đường. Để tô kim chi qua một bên cho ngấm vị.\r\nRửa sạch nấm kim châm, cắt bỏ gốc. Kế đến, bạn cắt nhỏ nấm và 50 gram hẹ.\r\n- Cắt nhỏ 80 gram tôm đã lột vỏ, để qua một bên, đem nghêu hấp với sả cho chín. Sau đó, lấy phần thịt tôm, nghêu, bỏ phần vỏ. Cho tôm và nghêu vào chung 1 tô, ướp với 1 muỗng canh dầu mè.\r\n\r\n3. Cách pha bột làm bánh xèo kim chi với hải sản Hàn Quốc ngon\r\n\r\n- Trộn 150 gram bột mì đa dụng với 15 gram bột bắp, 1 muỗng cà phê muối, 1/2 muỗng cà phê tiêu.\r\n- Từ từ chế 300 ml nước lọc vào hỗn hợp bột, nhẹ nhàng khuấy đều tay để bột tan mà không vón cục.\r\n- Tiếp tục cho kim chi, tôm, nghêu sơ chế và nấm kim châm, hẹ vào tô, trộn đều.\r\n- Cuối cùng, đập thêm 2 quả trứng gà và đánh đều lên với bột để tạo độ sánh mịn. Vậy là hoàn tất phần bột đổ bánh xèo kiểu Hàn.\r\n\r\n4. Cách đổ bánh xèo Hàn Quốc với kim chi hải sản giòn ngon\r\n \r\n- Cho một ít dầu vào chảo, tráng đều lòng chảo để chống dính và cháy.\r\n- Bật bếp lửa vừa làm nóng, rồi múc một ít hỗn hợp bột bánh với kim chi, hải sản đã trộn vào chảo.\r\n- Trong lúc đổ bánh, nhớ trở mặt bánh để chín đều.\r\n- Bánh chín nóng giòn thì vớt ra, thấm giấy hút dầu và dọn lên dĩa. Cuối cùng, trang trí món ăn theo sở thích và thưởng thức ngay cho nóng nhé.\r\n\r\n'),
(3, 'Cách làm bánh sữa chua Đài Loan ngon không cần bột bắp', 'https://webnauan.vn/wp-content/uploads/2020/03/cach-lam-banh-sua-chua-dai-loan-ngon-360x216.jpg', '1. Chuẩn bị nguyên liệu\r\n\r\n- 2 hũ sữa chua không đường (bạn có thể học cách ủ sữa chua tại nhà để chế biến món tráng miệng hợp khẩu vị hơn)\r\n- 1 muỗng canh sốt mayonnaise\r\n- 30 ml sữa đặc Ông Thọ có đường\r\n- 10 bánh sanwich\r\n- Dụng cụ làm bánh: túi bắt kem, tô, nĩa, nồi, gậy cán bột.\r\n\r\n2. Cách làm nhân kem sữa chua không cần bột bắp\r\n\r\n- Cho sữa đặc, sốt mayonnaise, sữa chua vào một nồi nhỏ, khuấy đều cho hòa quyện.\r\n- Bắc nồi sữa chua lên bếp, đun lửa nhỏ cho hỗn hợp nóng lên cho các thành phần đều hòa tan hết.\r\n- Hỗn hợp sữa sôi nhẹ thì tắt bếp. Để sữa chua thật nguội thì cho vào túi bắt kem, đặt vào tủ lạnh bảo quản.\r\n'),
(4, 'Cách làm bánh chưng chay nếp lứt nhân nấm, đậu ngày Tết', 'https://webnauan.vn/wp-content/uploads/2019/12/cac-lam-banh-chung-chay-ngay-tet-360x216.jpg', ''),
(5, 'Cách làm bánh nhãn ngày Tết xốp giòn mềm tan cực ngon tại nhà', 'https://webnauan.vn/wp-content/uploads/2019/12/cach-lam-banh-nhan-ngay-tet-gion-xop-360x216.jpg', ''),
(6, 'Cách làm sinh tố bơ ngon mịn tại nhà, không lo bị đắng', 'https://webnauan.vn/wp-content/uploads/2019/05/cach-lam-sinh-to-bo-360x216.jpg', ''),
(7, 'Sinh tố thanh long: 10 cách pha chế ngon, bổ dưỡng tại nhà', 'https://webnauan.vn/wp-content/uploads/2019/04/sinh-to-thanh-long-360x216.jpg', ''),
(8, 'Cách làm mứt dâu tây ăn với bánh mì ngon tuyệt cú mèo', 'https://webnauan.vn/wp-content/uploads/2019/12/cach-lam-mut-dau-tay-an-voi-banh-mi-ngon-360x216.jpg', ''),
(9, 'Cách làm kem nhãn tươi ngọt ngon đơn giản tại nhà', 'https://webnauan.vn/wp-content/uploads/2019/09/cach-lam-kem-nhan-don-gian-ngon-360x216.jpg', ''),
(10, 'Cách làm mứt khoai lang sấy bằng lò nướng nhâm nhi ngày Tết', 'https://webnauan.vn/wp-content/uploads/2019/12/cach-lam-mut-khoai-lang-say-deo-gion-360x216.jpg', ''),
(11, 'Cách làm kem dừa không trứng vẫn mềm mịn mát lạnh', 'https://webnauan.vn/wp-content/uploads/2019/09/cach-lam-kem-dua-khong-can-trung-360x216.jpg', ''),
(12, 'Cách làm sinh tố dưa hấu ngon, đập tan cơn khát ngày hè', 'https://webnauan.vn/wp-content/uploads/2019/04/cach-lam-sinh-to-dua-hau-360x216.jpg', ''),
(13, 'Cách làm bò tái chanh bóp thấu chua ngọt ngon chuẩn vị', 'https://webnauan.vn/wp-content/uploads/2020/02/cach-lam-bo-tai-chanh-bop-chua-ngot-360x216.jpg', ''),
(14, 'Cách làm kimbap chiên giòn ngon tại nhà đúng kiểu Hàn Quốc', 'https://webnauan.vn/wp-content/uploads/2020/03/cach-lam-kimbap-chien-gion-ngon-360x216.jpg', ''),
(15, 'Cách nấu vịt om sấu chuẩn vị – món ngon giải nhiệt ngày hè', 'https://webnauan.vn/wp-content/uploads/2019/08/cach-nau-vit-om-sau-ngon-360x216.jpg', ''),
(16, 'Cách làm bò bít tết bằng chảo chống dính mềm ngon tại nhà', 'https://webnauan.vn/wp-content/uploads/2020/03/cach-lam-bo-bit-tet-bang-chao-chong-dinh-555x333.jpg', ''),
(17, 'Cách làm cà phê bọt biển Dalgona “hot trend” bằng cà phê phin, hòa tan', 'https://webnauan.vn/wp-content/uploads/2020/03/cach-lam-ca-phe-bot-bien-bang-ca-phe-phin-sua-555x333.jpg', ''),
(18, 'Cách làm bánh mì bơ tỏi phô mai nướng tan chảy “trend” Hàn Quốc', 'https://webnauan.vn/wp-content/uploads/2020/03/cach-lam-banh-mi-bo-toi-pho-mai-han-quoc-tan-chay-555x333.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Monan`
--
ALTER TABLE `Monan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Monan`
--
ALTER TABLE `Monan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

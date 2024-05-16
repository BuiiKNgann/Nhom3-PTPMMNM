<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CountrySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $countries = array(
            array('code' => 'AG', 'name' => 'An Giang'),
            array('code' => 'VT', 'name' => 'Bà Rịa-Vũng Tàu'),
            array('code' => 'BL', 'name' => 'Bạc Liêu'),
            array('code' => 'BC', 'name' => 'Bắc Kạn'),
            array('code' => 'BG', 'name' => 'Bắc Giang'),
            array('code' => 'BN', 'name' => 'Bắc Ninh'),
            array('code' => 'BT', 'name' => 'Bến Tre'),
            array('code' => 'BD', 'name' => 'Bình Dương'),
            array('code' => 'BDinh', 'name' => 'Bình Định'),
            array('code' => 'BP', 'name' => 'Bình Phước'),
            array('code' => 'BThuan', 'name' => 'Bình Thuận'),
            array('code' => 'CM', 'name' => 'Cà Mau'),
            array('code' => 'CB', 'name' => 'Cao Bằng'),
            array('code' => 'CT', 'name' => 'Cần Thơ'),
            array('code' => 'DN', 'name' => 'Đà Nẵng'),
            array('code' => 'DL', 'name' => 'Đắk Lắk'),
            array('code' => 'DaKNong', 'name' => 'Đắk Nông'),
            array('code' => 'ĐN', 'name' => 'Đồng Nai'),
            array('code' => 'DT', 'name' => 'Đồng Tháp'),
            array('code' => 'DBien', 'name' => 'Điện Biên'),
            array('code' => 'GL', 'name' => 'Gia Lai'),
            array('code' => 'HG', 'name' => 'Hà Giang'),
            array('code' => 'HNam', 'name' => 'Hà Nam'),
            array('code' => 'HaNoi', 'name' => 'Hà Nội'),
            array('code' => 'HaTinh', 'name' => 'Hà Tỉnh'),
            array('code' => 'HaiDuong', 'name' => 'Hải Dương'),
            array('code' => 'HaiPhong', 'name' => 'Hải Phòng'),
            array('code' => 'HoaBinh', 'name' => 'Hoà Bình'),
            array('code' => 'HauGiang', 'name' => 'Hậu Giang'),
            array('code' => 'HungYen', 'name' => 'Hưng Yên'),
            array('code' => 'TPHCM', 'name' => 'Thành Phố Hồ Chí Minh'),
            array('code' => 'KhanhHoa', 'name' => 'Khánh Hoà'),
            array('code' => 'KienGiang', 'name' => 'Kiên Giang'),
            array('code' => 'KonTum', 'name' => 'Kon Tum'),
            array('code' => 'LaiChau', 'name' => 'Lai Châu'),
            array('code' => 'LaoCai', 'name' => 'Lào Cai'),
            array('code' => 'LangSon', 'name' => 'Lạng Sơn'),
            array('code' => 'LamDong', 'name' => 'Lâm Đồng'),
            array('code' => 'LongAn', 'name' => 'Long An'),
            array('code' => 'NamDinh', 'name' => 'Nam Định'),
            array('code' => 'NgheAn', 'name' => 'Nghệ An'),
            array('code' => 'NinhBinh', 'name' => 'Ninh Bình'),
            array('code' => 'NinhThuan', 'name' => 'Ninh Thuận'),
            array('code' => 'PhuTho', 'name' => 'Phú Thọ'),
            array('code' => 'PhuYen', 'name' => 'Phú Yên'),
            array('code' => 'QuangBinh', 'name' => 'Quảng Bình'),
            array('code' => 'QuangNam', 'name' => 'Quảng Nam'),
            array('code' => 'QuangNgai', 'name' => 'Quãng Ngãi'),
            array('code' => 'QuangNinh', 'name' => 'Quãng Ninh'),
            array('code' => 'QuangTri', 'name' => 'Quảng Trị'),
            array('code' => 'SocTrang', 'name' => 'Sóc Trăng'),
            array('code' => 'SonLa', 'name' => 'Sơn La'),
            array('code' => 'TayNinh', 'name' => 'tây Ninh'),
            array('code' => 'ThaiBinh', 'name' => 'thái Bình'),
            array('code' => 'ThaiNguyen', 'name' => 'Thái Nguyên'),
            array('code' => 'ThanhHoa', 'name' => 'Thanh Hoá'),
            array('code' => 'ThuaThienHue', 'name' => 'Thừa Thiên Huế'),
            array('code' => 'TienGiang', 'name' => 'Tiền Giang'),
            array('code' => 'TraVinh', 'name' => 'Trà Vinh'),
            array('code' => 'TuyenQuang', 'name' => 'Tuyên Quang'),
            array('code' => 'VinhLong', 'name' => 'Vĩnh Long'),
            array('code' => 'VinhPhuc', 'name' => 'Vĩnh Phúc'),
            array('code' => 'YenBai', 'name' => 'Yên Bái'),

        );

        DB::table('countries')->insert($countries);
    }
}

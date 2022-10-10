load "KhuPho.rb"
load "Nguoi.rb"
load "HoGiaDinh.rb"

khuPho_248 = KhuPho.new
thanhVienS_248 = []
hoGiaDinhS_248 = []

puts("*Nhập số hộ dân: ")
n_248 = gets.to_i

for i_248 in 0..(n_248-1) do
    puts("-- Nhập thông tin hộ dân số #{i_248 + 1} --")
    print("- Nhập số nhà: ")
    soNha_248 = gets.to_s
    print("*Nhập số thành viên trong gia đình: ")
    tv_248 = gets.to_i
    for a_248 in 0..(tv_248-1) do
        puts("-- Nhập thông tin cá nhân thành viên #{a_248 + 1} --")
        print("- Nhập họ và tên: ")
        hoTen_248 = gets.to_s
        print("- Nhập tuổi: ")
        tuoi_248 = gets.to_i
        print("- Nhập nghề nghiệp: ")
        ngheNghiep_248 = gets.to_s
        print("- Nhập CMND: ")
        cmnd_248 = gets.to_s
        thanhVien_248 = Nguoi.new(hoTen_248, tuoi_248, ngheNghiep_248, cmnd_248)
        khuPho_248.addMember(thanhVienS_248, thanhVien_248)
    end
    hoGiaDinh_248 = HoGiaDinh.new(soNha_248, thanhVienS_248)
    khuPho_248.addHouser(hoGiaDinhS_248, hoGiaDinh_248)
end
khuPho_248.showListMember(hoGiaDinhS_248, thanhVienS_248)
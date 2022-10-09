require_relative "ThiSinh"

class KhoiC < ThiSinh
    def initialize(soBaoDanh_248, hoTen_248, diaChi_248, mucUuTien_248)
        super(soBaoDanh_248, hoTen_248, diaChi_248, mucUuTien_248)
    end

    def showInformation()
        puts("-- Id: #{@soBaoDanh_248} - FullName: #{@hoTen_248} - Address: #{@diaChi_248} - Priority: #{@mucUuTien_248} - Subject A:  Literature, History, Geography")
    end
end
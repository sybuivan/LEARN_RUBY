require_relative "SinhVien"

class TheMuon < SinhVien
    attr_accessor :maPhieuMuon_248
    attr_accessor :ngayMuon_248
    attr_accessor :hanTra_248
    attr_accessor :soHieuSach_248

    def initialize(hoTen_248, tuoi_248, lop_248, maPhieuMuon_248, ngayMuon_248, hanTra_248, soHieuSach_248)
        super(hoTen_248, tuoi_248, lop_248)
        @maPhieuMuon_248 = maPhieuMuon_248
        @ngayMuon_248 = ngayMuon_248
        @hanTra_248 = hanTra_248
        @soHieuSach_248 = soHieuSach_248
    end

    def hienThiThongTin()
        puts("-- Full Name: #{@hoTen_248} - Age: #{@tuoi_248} - Class: #{lop_248} - Code coupon: #{@maPhieuMuon_248} - Borrowed date: #{@ngayMuon} - Deadline Day: #{@hanTra_248} - Code book: #{@soHieuSach_248}")
    end
end
require_relative 'phuongTien'

class Oto < PhuongTien
   @choNgoi_248
   @kieuDC_248
   @nhienLieu_248
   @soTuiKhi_248
   @ngaydk_248

   def initialize(id_248, hsx_248, namsx_248, dongXe_248, giaBan_248, bienSo_248, mauXe_248, choNgoi_248, kieuDC_248, nhienLieu_248, soTuiKhi_248, ngaydk_248)
      super(id_248, hsx_248, namsx_248, dongXe_248, giaBan_248, bienSo_248, mauXe_248)
      @choNgoi_248 = choNgoi_248
      @kieuDC_248 = kieuDC_248
      @nhienLieu_248 = nhienLieu_248
      @soTuiKhi_248 = soTuiKhi_248
      @ngaydk_248 = ngaydk_248
   end

   attr_accessor :choNgoi_248, :kieuDC_248, :nhienLieu_248, :soTuiKhi_248, :ngaydk_248

   def showInformation
      puts "Oto { Id: #{@id_248} - HangSx: #{@hsx_248} - DongXe: #{@dongXe_248} - GiaBan: #{@giaBan_248} BienSo: #{@bienSo_248} MauXe: #{@mauXe_248} ChoNgoi: #{@choNgoi_248} kieuDC: #{@kieuDC_248} - nhienLieu: #{@nhienLieu_248} SoTuiKhi: #{@soTuiKhi_248} ngayDK: #{@ngaydk_248}}"
   end
end
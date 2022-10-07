require_relative 'phuongTien'

class XeTai < PhuongTien
   @trongTai_248
   def initialize(id_248, hsx_248, namsx_248, dongXe_248, giaBan_248, bienSo_248, mauXe_248, trongTai_248)
      super(id_248, hsx_248, namsx_248, dongXe_248, giaBan_248, bienSo_248, mauXe_248)
      @trongTai_248 = trongTai_248
   end

   attr_accessor :trongTai_248, :trongTai_248

   def showInformation
      puts "XeTai { Id: #{@id_248} - HangSx: #{@hsx_248} - DongXe: #{@dongXe_248} - NamSx: #{@namsx_248}
      GiaBan: #{@giaBan_248} - BienSo: #{@bienSo_248} - MauXe: #{@mauXe_248} - TrongTai: #{@trongTai_248}}"
   end
end
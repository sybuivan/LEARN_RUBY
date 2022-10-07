require_relative 'phuongTien'

class XeMay < PhuongTien
   @congXuat_248
   @dungTich_248
   def initialize(id_248, hsx_248, namsx_248, dongXe_248, giaBan_248, bienSo_248, mauXe_248, congXuat_248, dungTich_248)
      super(id_248, hsx_248, namsx_248, dongXe_248, giaBan_248, bienSo_248, mauXe_248)
      @congXuat_248 = congXuat_248
      @dungTich_248 = dungTich_248
   end

   attr_accessor :congXuat_248, :dungTich_248

   def showInformation
      puts "XeMay { Id: #{@id_248} - HangSx: #{@hsx_248} - DongXe: #{@dongXe_248} - GiaBan: #{@giaBan_248} - BienSo: #{@bienSo_248} - MauXe: #{@mauXe_248} - CongXuat: #{@congXuat_248} - Dungeon: #{@dungTich_248}}"
   end
end
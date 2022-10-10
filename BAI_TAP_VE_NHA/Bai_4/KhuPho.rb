require_relative "Nguoi"
require_relative "HoGiaDinh"

class KhuPho
    def initialize
        
    end

    def addHouser(hoGiaDinhS_248, hoGiaDinh_248)
        hoGiaDinhS_248.push(hoGiaDinh_248)
    end

    def addMember(thanhVienS_248, thanhVien_248)
        thanhVienS_248.push(thanhVien_248)
    end

    def showListMember(hoGiaDinhS_248, thanhVienS_248)
      puts("** List of households **")
        for i_248 in 0..(hoGiaDinhS_248.length()-1) do
            for j_248 in 0..(thanhVienS_248.length()-1) do
                puts("================================")
                puts("*  STT #{i_248+1}: ")
                puts("-- Số nhà: #{hoGiaDinhS_248[i_248].soNha_248}")
                
                puts("**  Thành viên thứ #{j_248+1}: ")
                puts("--- Họ và tên: #{thanhVienS_248[j_248].hoTen_248}")
                puts("--- Tuổi: #{thanhVienS_248[j_248].tuoi_248}")
                puts("--- Nghề nghiệp: #{thanhVienS_248[j_248].ngheNghiep_248}")
                puts("--- CMND: #{thanhVienS_248[j_248].cmnd_248}")
                end           
        end
    end
end
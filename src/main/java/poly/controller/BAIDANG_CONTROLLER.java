package poly.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import poly.DAO.BAIDANG_DAO;
import poly.bean.BAIDANG;

public class BAIDANG_CONTROLLER {
	
	@Autowired
    private BAIDANG_DAO baiDangDao;
	
	@RequestMapping("/baiDang")
    public String getBaiDang(Model model) {
        ArrayList<BAIDANG> baiDang = baiDangDao.selectBaiDang();
        model.addAttribute("baiDang", baiDang);
        return "baiDang";
    }
    
    @RequestMapping("/duyetBaiDang")
    public String duyetBaiDang(Model model, @RequestParam("idMon") int idMon) {
        int ketQua = baiDangDao.updateTrangThai(idMon);

        if (ketQua > 0) {
            model.addAttribute("duyetThanhCong", "Duyệt bài đăng thành công");
        } else {
            model.addAttribute("duyetThatBai", "Duyệt bài đăng không thành công");
        }
        return "redirect:/baiDang";
    }
    
    @RequestMapping("/xoaBaiDang")
    public String xoaBaiDang(Model model, @RequestParam("idMon") int idMon) {
        BAIDANG baiDang = new BAIDANG();
        baiDang.setIdMon(idMon);
        int ketQua = baiDangDao.delete(baiDang);

        if (ketQua > 0) {
            model.addAttribute("xoaThanhCong", "Xóa bài đăng thành công");
        } else {
            model.addAttribute("xoaThatBai", "Xóa bài đăng không thành công");
        }
        return "redirect:/baiDang";
    }
}

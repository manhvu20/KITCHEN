package poly.controller;

import poly.DAO.MONAN_DAO;
import poly.bean.MONAN;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@Controller
public class MONAN_CONTROLLER {

    @Autowired
    private MONAN_DAO monAnDao;

    @RequestMapping("/monAn")
    public String getMonAn(Model model) {
        ArrayList<MONAN> monAn = monAnDao.selectAll();
        model.addAttribute("monAn", monAn);
        return "monAn";
    }
    
    @RequestMapping("/xoaMonAn")
    public String xoaMonAn(Model model, @RequestParam("idMon") int idMon) {
        MONAN monAn = new MONAN();
        monAn.setIdMon(idMon);
        int ketQua = monAnDao.delete(monAn);

        if (ketQua > 0) {
            model.addAttribute("xoaThanhCong", "Xóa món ăn thành công");
        } else {
            model.addAttribute("xoaThatBai", "Xóa món ăn không thành công");
        }

        return "redirect:/monAn";
    }

}


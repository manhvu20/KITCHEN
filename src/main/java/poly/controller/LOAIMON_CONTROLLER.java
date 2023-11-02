package poly.controller;

import poly.DAO.LOAIMON_DAO;
import poly.bean.LOAIMON;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@Controller
public class LOAIMON_CONTROLLER {

    @Autowired
    private LOAIMON_DAO loaiMonDao;

    @RequestMapping("/loaiMon")
    public String getLoaiMon(Model model) {
        ArrayList<LOAIMON> loaiMon = loaiMonDao.selectAll();
        model.addAttribute("loaiMon", loaiMon);
        return "loaiMon";
    }
    
    @RequestMapping(value = "/insertLoaiMon", method = RequestMethod.POST)
    public String insertLoaiMon(@RequestParam("tenLoai") String tenLoai) {
        LOAIMON loaiMon = new LOAIMON();
        loaiMon.setTenLoai(tenLoai);
        loaiMonDao.insert(loaiMon);
        return "redirect:/loaiMon";
    }

    @RequestMapping(value = "/updateLoaiMon", method = RequestMethod.POST)
    public String updateLoaiMon(@RequestParam("idLoai") int idLoai, @RequestParam("tenLoai") String tenLoai) {
        LOAIMON loaiMon = new LOAIMON(idLoai, tenLoai);
        loaiMonDao.update(loaiMon);
        return "redirect:/loaiMon";
    }

    @RequestMapping(value = "/deleteLoaiMon", method = RequestMethod.GET)
    public String deleteLoaiMon(@RequestParam("idLoai") int idLoai) {
        LOAIMON loaiMon = new LOAIMON(idLoai, null);
        loaiMonDao.delete(loaiMon);
        return "redirect:/loaiMon";
    }
}

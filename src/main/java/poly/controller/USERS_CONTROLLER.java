package poly.controller;

import poly.DAO.USERS_DAO;
import poly.bean.USERS;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
public class USERS_CONTROLLER {

    @Autowired
    private USERS_DAO usersDao;

    @RequestMapping("/users")
    public String getUsers(Model model) {
        ArrayList<USERS> users = usersDao.selectAll();
        model.addAttribute("users", users);
        return "users";
    }
}



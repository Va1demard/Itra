package by.itra.grinko.controller;

import by.itra.grinko.model.User;
import by.itra.grinko.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/app")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping
    public String getById(
            @RequestParam Long id,
            Model model
    ){

        model.addAttribute("user", userService.getById(id));

        return "user";
    }


}

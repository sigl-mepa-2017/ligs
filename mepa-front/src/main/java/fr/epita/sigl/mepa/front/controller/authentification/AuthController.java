package fr.epita.sigl.mepa.front.controller.authentification;

import fr.epita.sigl.mepa.core.domain.User;
import fr.epita.sigl.mepa.core.service.UserService;
import fr.epita.sigl.mepa.front.user.form.AddCustomUserFormBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

/**
 * Created by patrickear on 21/7/2016.
 */
@RequestMapping("/authentification")
@Controller
public class AuthController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/auth"})
    public String showAuth() {
        return "/authentification/signup";
    }

    @RequestMapping(value = {"/add"}, method = {RequestMethod.POST})
    public String processForm(HttpServletRequest request, ModelMap modelMap,
                              @Valid AddCustomUserFormBean addCustomUserFormBean, BindingResult result) {
        if (result.hasErrors()) {
            // Error(s) in form bean validation
            return "/authentification/signup";
        }
        User newUser = new User();
        newUser.setFirstName(addCustomUserFormBean.getFirstName());
        newUser.setLastName(addCustomUserFormBean.getLastName());
        newUser.setLogin(addCustomUserFormBean.getEmail());
        newUser.setPassword(addCustomUserFormBean.getCfmpassword());
        newUser.setBirthdate(addCustomUserFormBean.getBirthdate());
        this.userService.createUser(newUser);

        modelMap.addAttribute("user", newUser);

        return "/example/core/result";
    }
}

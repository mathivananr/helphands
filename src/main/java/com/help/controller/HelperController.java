package com.help.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.help.model.Helper;
import com.help.service.HelperService;

@Controller
public class HelperController {

	@Autowired
	HelperService helperService;

	@RequestMapping(value = "/home", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getHelpers(Model model, HttpServletRequest request) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("status", "Active");
		List<Helper> listOfHelpers = helperService.getHelpers(0, params);
		model.addAttribute("helper", new Helper());
		model.addAttribute("listOfHelpers", listOfHelpers);
		return "helpers";
	}

	@RequestMapping(value = "/getHelpers/{start}", method = RequestMethod.GET, headers = "Accept=application/json")
	@ResponseBody
	public List<Helper> getHelpers(@PathVariable int start, @RequestParam Map<String, String> parameters,
			HttpServletRequest request) {
		List<Helper> listOfHelpers = helperService.getHelpers(start, parameters);
		return listOfHelpers;
	}

	@RequestMapping(value = "/getHelper/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Helper getHelperById(@PathVariable Long id) {
		return helperService.getHelper(id);
	}

	@RequestMapping(value = "/addHelper", method = RequestMethod.POST, headers = "Accept=application/json")
	public String addHelper(@ModelAttribute("helper") Helper helper, HttpServletRequest request) {
		String ipAddress = request.getHeader("X-FORWARDED-FOR");
		if (ipAddress == null || "".equals(ipAddress)) {
			ipAddress = request.getRemoteAddr();
		}
		helper.setUpdatedIP(ipAddress);
		if (helper.getId() == null || helper.getId() == 0) {
			helper.setCreatedIP(ipAddress);
			helper.setStatus("Active");
			helperService.addHelper(helper);
		} else {
			helperService.updateHelper(helper);
		}

		return "redirect:/home";
	}

	@RequestMapping(value = "/updateHelper/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String updateHelper(@PathVariable("id") Long id, Model model, HttpServletRequest request) {
		model.addAttribute("helper", this.helperService.getHelper(id));
		model.addAttribute("listOfHelpers", this.helperService.getAllHelpers());
		return "helpers";
	}

	@RequestMapping(value = "/closePost/{id}/{mobileNo}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String closeHelper(@PathVariable("id") Long id, @PathVariable("mobileNo") String mobileNo, Model model,
			HttpServletRequest request) throws Exception {
		Helper helper = helperService.getHelper(id);
		if (helper.getMobileNo() != null && mobileNo != null && mobileNo.equals(helper.getMobileNo())) {
			helper.setStatus("Closed");
			String ipAddress = request.getHeader("X-FORWARDED-FOR");
			if (ipAddress == null || "".equals(ipAddress)) {
				ipAddress = request.getRemoteAddr();
			}
			helper.setUpdatedIP(ipAddress);
			helperService.updateHelper(helper);
		} else {
			throw new Exception("Mobile no and id not matched");
		}
		model.addAttribute("helper", helper);
		model.addAttribute("listOfHelpers", this.helperService.getAllHelpers());
		return "helpers";
	}

	@RequestMapping(value = "/deleteHelper/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String deleteHelper(@PathVariable("id") int id, HttpServletRequest request) {
		helperService.deleteHelper(id);
		return "redirect:/home";

	}
}

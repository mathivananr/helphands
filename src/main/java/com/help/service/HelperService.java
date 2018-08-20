package com.help.service;

import java.util.GregorianCalendar;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.help.dao.HelperDAO;
import com.help.model.Helper;

@Service("helperService")
public class HelperService {

	@Autowired
	HelperDAO helperDao;

	@Transactional
	public List<Helper> getAllHelpers() {
		return helperDao.getAllHelpers();
	}

	@Transactional
	public List<Helper> getHelpers(int start, Map<String, String> params) {
		return helperDao.getHelpers(start, params);
	}

	@Transactional
	public Helper getHelper(Long id) {
		return helperDao.getHelper(id);
	}

	@Transactional
	public void addHelper(Helper helper) {
		helper.setCreatedTime(new GregorianCalendar());
		helper.setUpdatedTime(new GregorianCalendar());
		helperDao.addHelper(helper);
	}

	@Transactional
	public void updateHelper(Helper helper) {
		helper.setUpdatedTime(new GregorianCalendar());
		helperDao.updateHelper(helper);

	}

	@Transactional
	public void deleteHelper(int id) {
		helperDao.deleteHelper(id);
	}
}

package com.help.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.help.model.Helper;

@Repository
public class HelperDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<Helper> getAllHelpers() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Helper> helperList = session.createQuery("from Helper where status='Active' order by createdTime desc").list();
		return helperList;
	}

	public List<Helper> getHelpers(int start, Map<String, String> params) {
		Session session = this.sessionFactory.getCurrentSession();
		String queryString = "from Helper";
		String whereString = null;
		String orderString = " order by createdTime desc";
		if (params != null) {
			for (String key : params.keySet()) {
				if (whereString == null) {
					whereString = " where " + key + " = '" + params.get(key) +"'";
				} else {
					whereString = whereString+ " and " + key + " = '" + params.get(key)+"'";
				}
			}
			if(whereString != null) {
				queryString = queryString + whereString;
			}
		}
		queryString = queryString + orderString;
		Query query = session.createQuery(queryString);
		if (start > 0) {
			query.setFirstResult(start);
		}
		query.setMaxResults(10);
		List<Helper> helperList = query.list();
		return helperList;
	}

	public Helper getHelper(Long id) {
		Session session = this.sessionFactory.getCurrentSession();
		Helper helper = (Helper) session.get(Helper.class, id);
		return helper;
	}

	public Helper addHelper(Helper helper) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(helper);
		return helper;
	}

	public void updateHelper(Helper helper) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(helper);
	}

	public void deleteHelper(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Helper p = (Helper) session.load(Helper.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}
}

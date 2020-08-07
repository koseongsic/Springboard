package org.zerock.web;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.MemberVo;
import org.zerock.persistence.MemberDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class MemberDAOTest {
	@Inject
	private MemberDAO dao;
	
	@Test
	public void testConnection() throws Exception {

		MemberVo vo = new MemberVo();
		vo.setUserid("seons");
		vo.setUserpw("ssss");
		vo.setUsername("seong");
		vo.setEmail("www@com");		
		dao.insertMember(vo);
	}
}
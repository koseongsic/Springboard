package org.zerock.web;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.persistence.BoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardDAOTest2 {
	@Inject
	private BoardDAO dao;
	private static Logger logger = LoggerFactory.getLogger(BoardDAOTest2.class);
	
	@Test
	public void testCreate() throws Exception {
//		int page =3;
//		
//		List<BoardVO> list = dao.listPage(page);
//		
//		for(BoardVO boardVO : list) {
//			System.out.println(boardVO.getContent());
//		}
		
		Criteria cri = new Criteria();
		cri.setPage(2);
		cri.setPerPageNum(20);
		System.out.println(cri.toString());
		List<BoardVO> list = dao.listCriteria(cri);
		
		for(BoardVO boardVO : list) {
			System.out.println(boardVO.getContent());
		}

	}

	
}
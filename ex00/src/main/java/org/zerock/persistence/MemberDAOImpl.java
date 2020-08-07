package org.zerock.persistence;

import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.MemberVo;


@Repository
public class MemberDAOImpl implements MemberDAO {
	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "org.zerock.mapper.MemberMapper";

	@Override
	public void insertMember(MemberVo vo) {
		// TODO Auto-generated method stub		
		sqlSession.insert(namespace+".insertMember",vo);
	}
}
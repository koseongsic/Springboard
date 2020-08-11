package org.zerock.persistence;

import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.BoardVO;
import org.zerock.domain.MemberVo;


@Repository
public class BoardDAOImpl implements BoardDAO {
	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "org.zerock.mapper.BoardMapper";

	@Override
	public void create(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".create",vo);
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {		
		return sqlSession.selectOne(namespace+".read",bno);
	}
	@Override
	public void update(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace+".update",vo);
	}
	@Override
	public void delete(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace+".delete",bno);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".listAll");
	}

	@Override
	public int getcount() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("namespace+.getcount");
	}
}
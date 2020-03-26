package com.spring.client.reply.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.client.reply.dao.ReplyDao;
import com.spring.client.reply.vo.ReplyVO;

@Service
@Transactional
public class ReplyServiceImpl implements ReplyService {
	private Logger log = LoggerFactory.getLogger(ReplyServiceImpl.class);
	
	@Autowired
	private ReplyDao replyDao;
	
	//글 목록 구현
	@Override
	public List<ReplyVO> replyList(Integer b_num) {
		List<ReplyVO> myList = null;
		myList = replyDao.replyList(b_num);
		return myList;
	}

	//글 입력 구현
	@Override
	public int replyInsert(ReplyVO rvo) {
		int result = 0;
		try {
			result = replyDao.replyInsert(rvo);
		}catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}
	
	@Override
	public int pwdConfirm(ReplyVO rvo) {
		int result = 0;
		result = replyDao.pwdConfirm(rvo);
		return result;
	}
	
	//글수정 구현
	@Override
	public int replyUpdate(ReplyVO rvo) {
		int result = 0;
		try {
			result = replyDao.replyUpdate(rvo);
		}catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

	//글삭제 구현
	@Override
	public int replyDelete(int r_num) {
		int result = 0;
		try {
			result = replyDao.replyDelete(r_num);
		}catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

}

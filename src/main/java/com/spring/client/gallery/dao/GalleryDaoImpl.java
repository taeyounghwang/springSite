package com.spring.client.gallery.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.client.gallery.vo.GalleryVO;

@Repository
public class GalleryDaoImpl implements GalleryDao {

	 @Autowired
	 private SqlSession session;
	 
	 //목록 구현
	@Override
	public List<GalleryVO> galleryList() {
		return session.selectList("galleryList");
	}
	//글입력 구현
	@Override
	public int galleryInsert(GalleryVO gvo) {
		return session.insert("galleryInsert");
	}
	 
}
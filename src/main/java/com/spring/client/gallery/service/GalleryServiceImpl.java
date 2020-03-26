package com.spring.client.gallery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.client.gallery.dao.GalleryDao;
import com.spring.client.gallery.vo.GalleryVO;

@Service
@Transactional
public class GalleryServiceImpl implements GalleryService{

	@Autowired
	private GalleryDao galleryDao;
	//글목록 구현
	@Override
	public List<GalleryVO> galleryList() {
		List<GalleryVO> myList = null;
		myList =galleryDao.galleryList();
		return myList;
	}

	@Override
	public int galleryInsert(GalleryVO gvo) {
		int result = 0;
		try {
			result = galleryDao.galleryInsert(gvo);
		}catch (Exception e) {
			e.printStackTrace();
			result=0;
		}
		return result;
	}
	
}

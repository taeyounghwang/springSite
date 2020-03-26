package com.spring.client.gallery.dao;

import java.util.List;

import com.spring.client.gallery.vo.GalleryVO;

public interface GalleryDao {
	public List<GalleryVO> galleryList();
	public int galleryInsert(GalleryVO gvo);
	
}

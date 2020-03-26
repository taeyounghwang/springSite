package com.spring.client.gallery.service;

import java.util.List;

import com.spring.client.gallery.vo.GalleryVO;

public interface GalleryService {
	public List<GalleryVO> galleryList();
	public int galleryInsert(GalleryVO gvo);
}

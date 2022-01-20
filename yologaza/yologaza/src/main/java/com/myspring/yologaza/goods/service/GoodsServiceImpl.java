package com.myspring.yologaza.goods.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


import com.myspring.yologaza.goods.dao.GoodsDAO;
import com.myspring.yologaza.goods.vo.GoodsVO;
import com.myspring.yologaza.goods.vo.ImageFileVO;

	@Service("goodsService")
	@Transactional(propagation=Propagation.REQUIRED)
	public class GoodsServiceImpl implements GoodsService{
		@Autowired
		private GoodsDAO goodsDAO;
		@Override
		public Map<String,List<GoodsVO>> listGoods() throws Exception {
			Map<String,List<GoodsVO>> goodsMap=new HashMap<String,List<GoodsVO>>();
			List<GoodsVO> goodsList=goodsDAO.selectGoodsList("hotel");
			goodsMap.put("hotel",goodsList);
			goodsList=goodsDAO.selectGoodsList("motel");
			goodsMap.put("motel",goodsList);
			
			goodsList=goodsDAO.selectGoodsList("pension");
			goodsMap.put("pension",goodsList);
			
			goodsList=goodsDAO.selectGoodsList("resort");
			goodsMap.put("resort",goodsList);
			
			goodsList=goodsDAO.selectGoodsList("guestHouse");
			goodsMap.put("guestHouse",goodsList);
			
			goodsList=goodsDAO.selectGoodsList("camping");
			goodsMap.put("camping",goodsList);
			
			goodsList=goodsDAO.selectGoodsList("hanok");
			goodsMap.put("hanok",goodsList);
			return goodsMap;
		}
		@Override
		public Map goodsDetail(String goods_id) throws Exception {
			Map goodsMap=new HashMap();
			GoodsVO goodsVO = goodsDAO.selectGoodsDetail(goods_id);
			goodsMap.put("goodsVO", goodsVO);
			List<ImageFileVO> imageList =goodsDAO.selectGoodsDetailImage(goods_id);
			goodsMap.put("imageList", imageList);
			List<GoodsVO> RoomList =goodsDAO.selectGoodsDetailRoom(goods_id);
			goodsMap.put("RoomList", RoomList);
			List<ImageFileVO> imageListRoom =goodsDAO.selectGoodsDetailImageRoom(goods_id);
			goodsMap.put("imageListRoom", imageListRoom);
			return goodsMap;
		}
		
		@Override
		public List<String> keywordSearch(String keyword) throws Exception {
			List<String> list=goodsDAO.selectKeywordSearch(keyword);
			return list;
		}
		@Override
		public List<GoodsVO> searchGoods(String searchWord) throws Exception{
			List goodsList=goodsDAO.selectGoodsBySearchWord(searchWord);
			return goodsList;
		}
}

package com.myspring.yologaza.goods.service;

import java.util.List;
import java.util.Map;

import com.myspring.yologaza.goods.vo.GoodsVO;

public interface GoodsService {
	public Map<String,List<GoodsVO>> listGoods() throws Exception;
}

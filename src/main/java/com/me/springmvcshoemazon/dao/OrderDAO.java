package com.me.springmvcshoemazon.dao;

import java.util.List;

import com.me.springmvcshoemazon.model.CartInfo;
import com.me.springmvcshoemazon.model.OrderDetailInfo;
import com.me.springmvcshoemazon.model.OrderInfo;
import com.me.springmvcshoemazon.model.PaginationResult;

public interface OrderDAO {

	public void saveOrder(CartInfo cartInfo);

	public PaginationResult<OrderInfo> listOrderInfo(int page, int maxResult, int maxNavigationPage);

	public OrderInfo getOrderInfo(String orderId);

	public List<OrderDetailInfo> listOrderDetailInfos(String orderId);

}

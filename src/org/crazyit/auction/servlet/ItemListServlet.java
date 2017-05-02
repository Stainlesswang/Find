package org.crazyit.auction.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import org.crazyit.auction.servlet.base.BaseServlet;
import org.crazyit.auction.business.ItemBean;
import org.crazyit.auction.service.AuctionManager;
import java.io.*;
import org.json.*;
import java.util.*;
@WebServlet(urlPatterns="/android/itemList.jsp")
public class ItemListServlet extends BaseServlet
{
    public void service(HttpServletRequest request ,
		HttpServletResponse response)
		throws IOException , ServletException
	{
		request.setCharacterEncoding("gbk");
		// ��ȡ��Ʒ����ID
		String kindId = request.getParameter("kindId");
		// ��ȡҵ���߼����
		AuctionManager auctionManager = (AuctionManager)getCtx().getBean("mgr");
		// ����ҵ���߼���������ȡȫ����Ʒ
		List<ItemBean> items = auctionManager
			.getItemsByKind(Integer.parseInt(kindId));
		// ����Ʒ�б��װ��JSONArray
		JSONArray jsonArr= new JSONArray(items);
		response.setContentType("text/html; charset=GBK");
		response.getWriter().println(jsonArr.toString());
	}
}
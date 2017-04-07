package org.crazyit.auction.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import org.crazyit.auction.servlet.base.BaseServlet;
import org.crazyit.auction.service.AuctionManager;
import org.crazyit.auction.business.*;
import java.io.*;
import org.json.*;

@WebServlet(urlPatterns="/android/getItem.jsp")
public class GetItemServlet extends BaseServlet
{
    public void service(HttpServletRequest request ,
		HttpServletResponse response)
		throws IOException , ServletException
	{
		request.setCharacterEncoding("gbk");
		// ��ȡ��Ʒ��ID
		String itemId = request.getParameter("itemId");
		// ��ȡҵ���߼����
		AuctionManager auctionManager = (AuctionManager)getCtx().getBean("mgr");
		// ����ҵ���߼�����
		ItemBean itemBean = auctionManager.getItem(Integer.parseInt(itemId));
		// �����е���Ʒ�����װ��JSONObject
		JSONObject jsonObj = new JSONObject(itemBean);
		response.setContentType("text/html; charset=GBK");
		response.getWriter().println(jsonObj.toString());
	}
}
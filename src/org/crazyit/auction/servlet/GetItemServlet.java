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
		// 获取物品的ID
		String itemId = request.getParameter("itemId");
		// 获取业务逻辑组件
		AuctionManager auctionManager = (AuctionManager)getCtx().getBean("mgr");
		// 调用业务逻辑方法
		ItemBean itemBean = auctionManager.getItem(Integer.parseInt(itemId));
		// 将所有的物品种类包装成JSONObject
		JSONObject jsonObj = new JSONObject(itemBean);
		response.setContentType("text/html; charset=GBK");
		response.getWriter().println(jsonObj.toString());
	}
}
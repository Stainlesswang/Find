package org.crazyit.auction.dao;

import java.util.List;

import org.crazyit.common.dao.*;

import org.crazyit.auction.domain.*;
import org.crazyit.auction.business.*;

public interface AuctionUserDao extends BaseDao<AuctionUser>
{
	/**
	 * 根据用户名，密码查找用户
	 * @param username 查询所需的用户名
	 * @param pass 查询所需的密码
	 * @return 指定用户名、密码对应的用户
	 */
	AuctionUser findUserByNameAndPass(String username , String pass);

	int RegisterUser(AuctionUser auctionUser);
}
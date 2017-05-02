package org.crazyit.auction.dao.impl;

import java.util.*;

import org.crazyit.common.dao.impl.*;

import org.crazyit.auction.domain.*;
import org.crazyit.auction.business.*;
import org.crazyit.auction.dao.*;

public class AuctionUserDaoHibernate
	extends BaseDaoHibernate4<AuctionUser> implements AuctionUserDao
{

	/**
	 * �����û�������������û�
	 * @param username ��ѯ������û���
	 * @param pass ��ѯ���������
	 * @return ָ���û����������Ӧ���û�
	 */
	public AuctionUser findUserByNameAndPass(String username , String pass)
	{
		// ִ��HQL��ѯ
		List<AuctionUser> ul = (List<AuctionUser>)find(
			"from AuctionUser au where au.username=?0 and au.userpass=?1" ,
			username , pass);
		// ���ز�ѯ�õ��ĵ�һ��AuctionUser����
		if (ul.size() == 1)
		{
			return (AuctionUser)ul.get(0);
		}
		return null;
	}

	@Override
	public int RegisterUser(AuctionUser auctionUser) {
		save(auctionUser);
		return 0;
	}
}
package org.crazyit.auction.dao.impl;

import java.util.*;

import org.crazyit.common.dao.impl.*;

import org.crazyit.auction.domain.*;
import org.crazyit.auction.business.*;
import org.crazyit.auction.dao.*;
public class ItemDaoHibernate
	extends BaseDaoHibernate4<Item> implements ItemDao
{

	/**
	 * ��ȡȫ�������Լ���ȫ��item
	 * @return ȫ���Ĳ����Լ�����Ѱ���е�Item
	 */
	public List<Item> findItemAll(Integer userID) {
		return find("from Item as i where i.itemState.id=1 and i.owner.id!=?0"
		,userID);

	}

	/**
	 * ���ݲ�Ʒ���࣬��ȡ��ǰ������ȫ����Ʒ
	 * @param kindId ����id;
	 * @return �����ȫ����Ʒ
	 */
	public List<Item> findItemByKind(Integer kindId)
	{
		return find(
			"from Item as i where i.kind.id=?0 and i.itemState.id=1"
			, kindId);
	}

	/**
	 * ���������߲��Ҵ��������е���Ʒ
	 * @param useId ������Id;
	 * @return ָ���û����������е�ȫ����Ʒ
	 */
	public List<Item> findItemByOwner(Integer userId)
	{
		return (List<Item>)find(
			"from Item as i where i.owner.id=?0 and i.itemState.id=1"
			, userId);
	}

	/**
	 * ����Ӯȡ�߲�����Ʒ
	 * @param userId Ӯȡ��Id;
	 * @return ָ���û�Ӯȡ��ȫ����Ʒ
	 */
	public List<Item> findItemByWiner(Integer userId)
	{
		return find("from Item as i where i.winer.id =?0 and i.itemState.id=2"
			,userId);
	}

	/**
	 * ������Ʒ״̬������Ʒ
	 * @param stateId ״̬Id;
	 * @return ��״̬�µ�ȫ����Ʒ
	 */
	public List<Item> findItemByState(Integer stateId)
	{
		return find("from Item as i where i.itemState.id = ?0" , stateId);
	}
}
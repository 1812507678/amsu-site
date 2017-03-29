package com.amsu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amsu.dao.InformationDao;
import com.amsu.pojo.Information;
import com.amsu.pojo.InformationQuery;
import com.amsu.pojo.Page;
import com.amsu.service.MessageService;
@Service
public class MessageServiceImpl implements MessageService {
	@Autowired
	private InformationDao informationDao;

	@Override
	public Information selectTopInformation() {
		return informationDao.selectTopInformation();
	}

	@Override
	public List<Information> selectInformationsByPage(Page page) {
		return informationDao.selectInformationsByPage(page);
	}

	@Override
	public int countByExample(InformationQuery example) {
		return informationDao.countByExample(example);
	}
	
}

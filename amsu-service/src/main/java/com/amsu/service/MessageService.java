package com.amsu.service;

import java.util.List;

import com.amsu.pojo.Information;
import com.amsu.pojo.InformationQuery;
import com.amsu.pojo.Page;

public interface MessageService {
	public Information selectTopInformation();
	public List<Information> selectInformationsByPage(Page page);
	int countByExample(InformationQuery example);
}

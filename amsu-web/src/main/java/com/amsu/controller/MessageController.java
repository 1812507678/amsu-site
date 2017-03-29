package com.amsu.controller;

import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.amsu.pojo.Information;
import com.amsu.pojo.InformationQuery;
import com.amsu.pojo.InformationQuery.Criteria;
import com.amsu.pojo.Page;
import com.amsu.pojo.ReturnPage;
import com.amsu.service.MessageService;

@Controller
public class MessageController {
	@Autowired
	private MessageService messageService;

	@RequestMapping("/toConsultjsp")
	public String toConsultjsp(Model model) {
		// // 查询出置顶的新闻 orders=1
		// Information topInformation = messageService.selectTopInformation();
		// model.addAttribute("information", topInformation);
		// // 查询出其他新闻(不置顶, 分页的)
		// Page page = new Page();
		// page.setPageNumber(1);
		// page.setNumbers(3);
		// page.setPrenumbers();
		// List<Information> list =
		// messageService.selectInformationsByPage(page);
		// for (Information information : list) {
		// SimpleDateFormat sdfy = new SimpleDateFormat("yyyy");
		// String year = sdfy.format(information.getDate());
		// SimpleDateFormat sdfmd = new SimpleDateFormat("MM/dd");
		// String monthAndDay = sdfmd.format(information.getDate());
		// information.setYear(year);
		// information.setMonthAndDay(monthAndDay);
		// }
		// 查询数据库中一共有几条数据
		InformationQuery example = new InformationQuery();
		Criteria criteria = example.createCriteria();
		criteria.andOrdersIsNull();
		int count = messageService.countByExample(example);
		int pageNumbers = 0;
		// 一共有多少页
		if (count % 3 != 0) {
			pageNumbers = (count / 3) + 1;
		} else {
			pageNumbers = count / 3;
		}
		
		
		model.addAttribute("pageNumbers", pageNumbers);
		return "consult";
	}

	@RequestMapping("/toConsultjspAjax")
	@ResponseBody
	public ReturnPage toConsultjspAjax(Model model, @RequestParam(defaultValue = "1") Integer pageNumber) {
		// 查询出置顶的新闻 orders=1
		Information topInformation = messageService.selectTopInformation();
		// // 查询出其他新闻(不置顶, 分页的)
		Page page = new Page();
		page.setPageNumber(pageNumber);
		page.setNumbers(3);
		page.setPrenumbers();
		List<Information> list = messageService.selectInformationsByPage(page);
		for (Information information : list) {
			SimpleDateFormat sdfy = new SimpleDateFormat("yyyy");
			String year = sdfy.format(information.getDate());
			SimpleDateFormat sdfmd = new SimpleDateFormat("MM/dd");
			String monthAndDay = sdfmd.format(information.getDate());
			information.setYear(year);
			information.setMonthAndDay(monthAndDay);
		}

		ReturnPage returnpage = new ReturnPage();
		returnpage.setList(list);
		returnpage.setTopInformation(topInformation);

		return returnpage;
	}       
	@RequestMapping(value="/demo")
	public void demo() throws Exception{
		File file = new File("files/qtmba.xlsx");
		String path = file.getCanonicalPath();
		System.out.println(path);
		FileInputStream i = new FileInputStream(file);
		System.out.println(i);
	}

}

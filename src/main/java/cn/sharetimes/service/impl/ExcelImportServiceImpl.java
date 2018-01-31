package cn.sharetimes.service.impl;

import cn.sharetimes.mapper.ExcelMapper;
import cn.sharetimes.pojo.Excel;
import cn.sharetimes.service.HxlsOptRowsInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by sharetimes on 2017/11/2.
 */
@Service
@Transactional
public class ExcelImportServiceImpl implements HxlsOptRowsInterface{

    @Autowired
    private ExcelMapper excelMapper;

    @Override
    public String saveOptRows(int sheetIndex, int curRow, List<String> rowlist) throws Exception {
        //木蚂蚁，上海漪澜，迅迈，启创汇聚
     /*   String theday = rowlist.get(0);
        String name = rowlist.get(1);
        String income = rowlist.get(2);
        String num = rowlist.get(3);
        String price = rowlist.get(4);
        String channel = rowlist.get(5);

        Excel excel = new Excel();
        excel.setTheday(theday);
        excel.setName(name);
        excel.setIncome(income);
        excel.setNum(num);
        excel.setPrice(price);
        excel.setChannel(channel);*/

        //珠海慈心园，上海拓畅，瑞萨斯，漩涡科技
        //霍尔果斯宝盛
/*        String theday = rowlist.get(0);
        String name = rowlist.get(1);
        String income = rowlist.get(2);
        String num = rowlist.get(3);
        String price = rowlist.get(4);
        String channel = rowlist.get(5);
        String model = rowlist.get(6);
        String discount = rowlist.get(7);

        Excel excel = new Excel();
        excel.setTheday(theday);
        excel.setName(name);
        excel.setIncome(income);
        excel.setNum(num);
        excel.setPrice(price);
        excel.setChannel(channel);
        excel.setModel(model);
        excel.setDiscount(discount);*/

        //乐盟
/*        String name = rowlist.get(0);
        String num = rowlist.get(1);
        String channel = rowlist.get(2);
        String theday = rowlist.get(3);
        String model = rowlist.get(4);
        String price = rowlist.get(5);
        String income = rowlist.get(6);

        Excel excel = new Excel();
        excel.setModel(model);
        excel.setName(name);
        excel.setIncome(income);
        excel.setTheday(theday);
        excel.setNum(num);
        excel.setPrice(price);
        excel.setChannel(channel);*/

       //分享
        String name = rowlist.get(0);
        String model = rowlist.get(1);
        String price = rowlist.get(2);
        String theday = rowlist.get(3);
        String channel = rowlist.get(4);

        Excel excel = new Excel();
        excel.setName(name);
        excel.setModel(model);
        excel.setPrice(price);
        excel.setTheday(theday);
        excel.setChannel(channel);

        excelMapper.insertExcel(excel);

        return SUCCESS;
    }
}

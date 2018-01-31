package cn.sharetimes.service.impl;

import cn.sharetimes.mapper.ExcelMapper;
import cn.sharetimes.pojo.Excel;
import cn.sharetimes.pojo.ExcelQuery;
import cn.sharetimes.service.ExcelService;
import com.github.pagehelper.PageHelper;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by sharetimes on 2017/5/24.
 * @author captain
 */
@Service
@Transactional
public class ExcelServiceImpl implements ExcelService {

    @Autowired
    private ExcelMapper excelMapper;

    @Override
    public List<Excel> findAll() {
        PageHelper.startPage(1, 50);
        List<Excel> excelList = this.excelMapper.findAll();

        return excelList;
    }

    @Override
    public List<Excel> select(String startTime, String endTime, String name, Integer pageIndex, Integer pageSize) {
        if(pageIndex != null && pageSize != null) {
            PageHelper.startPage(pageIndex, pageSize);
        }

        if(startTime == ""){
            startTime = null;
        }
         if(endTime == ""){
             endTime = null;
        }
         if(name == ""){
             name = null;
        }

        ExcelQuery query = new ExcelQuery();
        query.setStartTime(startTime);
        query.setEndTime(endTime);
        query.setName(name);

        List<Excel> excelList = this.excelMapper.selectData(query);
        return excelList;
    }

    @Override
    public List<String> getNameList() {
        List<String> nameList = this.excelMapper.getNameList();
        return nameList;
    }

    @Override
    public Integer count() {
        Integer count = this.excelMapper.count();
        return count;
    }

    @Override
    public Integer countQuery(String startTime, String endTime, String name) {
        if(startTime == ""){
            startTime = null;
        }
        if(endTime == ""){
            endTime = null;
        }
        if(name == ""){
            name = null;
        }
        ExcelQuery query = new ExcelQuery();
        query.setStartTime(startTime);
        query.setEndTime(endTime);
        query.setName(name);
        Integer count = this.excelMapper.countQuery(query);
        return count;
    }

    @Override
    public String insertData(String name, String model, String price, String theday,String channel) {
        Excel excel = new Excel();
        excel.setName(name);
        excel.setModel(model);
        excel.setPrice(price);
        excel.setTheday(theday);
        excel.setChannel(channel);
        int i = this.excelMapper.insertData(excel);

        if(i > 0) {
            return "success";
        }
        return "0";
    }


}

package cn.sharetimes.service;

import cn.sharetimes.pojo.Excel;

import java.util.List;

/**
 * Created by sharetimes on 2017/5/24.
 */
public interface ExcelService {
    List<Excel> findAll();

    List<Excel> select(String startTime, String endTime, String name, Integer pageIndex, Integer pageSize);

    List<String> getNameList();

    Integer count();

    Integer countQuery(String startTime, String endTime, String name);

    String insertData(String name, String model, String price, String theday, String channel);
}

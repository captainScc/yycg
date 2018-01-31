package cn.sharetimes.mapper;

import cn.sharetimes.pojo.Excel;
import cn.sharetimes.pojo.ExcelQuery;
import com.github.abel533.mapper.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by sharetimes on 2017/5/24.
 */
@Repository(value = "excelMapper")
public interface ExcelMapper extends Mapper<Excel> {

    List<Excel> findAll();

    List<Excel> selectData(ExcelQuery query);

    List<String> getNameList();

    Integer count();

    Integer countQuery(ExcelQuery query);

    void insertExcel(Excel excel);

    int insertData(Excel excel);
}

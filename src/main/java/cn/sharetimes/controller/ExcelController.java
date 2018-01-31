package cn.sharetimes.controller;

import cn.sharetimes.pojo.*;
import cn.sharetimes.service.ExcelService;
import cn.sharetimes.service.HxlsOptRowsInterface;
import cn.sharetimes.service.UserService;
import cn.sharetimes.utils.*;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by sharetimes on 2017/5/24.
 */
@Controller
public class ExcelController {

    @RequestMapping(value = {"/", "index"}, method = RequestMethod.GET)
    public String index(){
        //一
        //1.1木蚂蚁
//        return "jsp/login_ant";
        //1.2上海漪澜
//        return "jsp/login_shyl";
         //1.3启创汇聚
//        return "jsp/login_qchj";
         //1.4瑞萨斯
//        return "jsp/login_rss";
         //1.5上海拓畅
//        return "jsp/login_shtc";
         //1.6漩涡科技
//        return "jsp/login_xwkj";
         //1.7迅迈
//        return "jsp/login_xm";
         //1.8珠海慈心园
//        return "jsp/login_zhcxy";
        //======================
//        return "jsp/login_lm";
        return "jsp/login_fx";
        //====================================================
        //2.1霍尔果斯宝盛
//        return "jsp/login_hegsbs";
      //2.2云客科技
//        return "jsp/login_ykkj";
      //2.3云峰智慧
//        return "jsp/login_yfzh";
      //2.4中诺思
//        return "jsp/login_zns";
      //2.5零世纪
//        return "jsp/login_lsj";
      //2.6流量圈
//        return "jsp/login_llq";
      //2.7上方传媒
//        return "jsp/login_sfcm";
      //2.8北青网
//        return "jsp/login_bqw";
      //2.9河北世航
//        return "jsp/login_hbsh";
  //3
//        return "jsp/login_syhd";
    }

    @Autowired
    private ExcelService excelService;

    @Autowired
    private UserService userService;

    @Autowired
    private HxlsOptRowsInterface hxlsOptRowsInterface;

    @RequestMapping(value = "login")
    private String login(String username, String password, HttpSession session){
        User user = this.userService.findUser(username, password);

        if(user != null) {
            session.setAttribute("username",user.getUsername());
            return "redirect:/all.do";
        } else {
            //二
            //1.1木蚂蚁后台
//            return "jsp/login_ant";
            //1.2上海漪澜后台
//            return "jsp/login_shyl";
            // 1.3启创汇聚后台
//            return "jsp/login_qchj";
             // 1.4瑞萨斯后台
//            return "jsp/login_rss";
             // 1.5上海拓畅后台
//            return "jsp/login_shtc";
             // 1.6漩涡科技后台
//            return "jsp/login_xwkj";
             // 1.7迅迈后台
//            return "jsp/login_xm";
             // 1.8珠海慈心园后台
//            return "jsp/login_zhcxy";
            //======================
//            return "jsp/login_lm";
            return "jsp/login_fx";

            //======================
             // 2.1霍尔果斯宝盛
//            return "jsp/login_hegsbs";
            //2.2云客科技
//        return "jsp/login_ykkj";
            //2.3云峰智慧
//        return "jsp/login_yfzh";
            //2.4中诺思
//        return "jsp/login_zns";
            //2.5零世纪
//        return "jsp/login_lsj";
            //2.6流量圈
//        return "jsp/login_llq";
            //2.7上方传媒
//        return "jsp/login_sfcm";
            //2.8北青网
//        return "jsp/login_bqw";
            //2.9河北世航
//        return "jsp/login_hbsh";
// 3 视游互动
//            return "jsp/login_syhd";

        }

    }

    /**
     * 查询所有
     */
    @RequestMapping(value = "all")
    public ModelAndView findAll() {

        List<Excel> excelList = this.excelService.findAll();
        List<String> nameList = this.excelService.getNameList();
        Integer count = this.excelService.count();
        if(count == null) {
            count = 0;
        }

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject(excelList);
        modelAndView.addObject(nameList);
        modelAndView.getModel().put("totalPage",count/50 + 1);
        modelAndView.getModel().put("pageIndex",1);
//三

        //1.1.木蚂蚁
//      modelAndView.setViewName("jsp/excel_ant");
        //1.2.上海漪澜
//      modelAndView.setViewName("jsp/excel_shyl");
        //1.3启创汇聚
//      modelAndView.setViewName("jsp/excel_qchj");
        //1.4瑞萨斯
//        modelAndView.setViewName("jsp/excel_rss");
        //1.5上海拓畅
//        modelAndView.setViewName("jsp/excel_shtc");
        //1.6漩涡科技
//        modelAndView.setViewName("jsp/excel_xwkj");
        //1.7迅迈
//        modelAndView.setViewName("jsp/excel_xm");
        //1.8珠海慈心园
//        modelAndView.setViewName("jsp/excel_zhcxy");
        //======================
//       modelAndView.setViewName("jsp/excel_lm");
       modelAndView.setViewName("jsp/excel_fx");

        //========================
        //2.1霍尔果斯宝盛
//        modelAndView.setViewName("jsp/excel_hegsbs");
        //2.2云客科技
//        modelAndView.setViewName("jsp/excel_ykkj");
        //2.3云峰智慧
//         modelAndView.setViewName("jsp/excel_yfzh");
        //2.4中诺思
//         modelAndView.setViewName("jsp/excel_zns");
        //2.5零世纪
//         modelAndView.setViewName("jsp/excel_lsj");
//        2.6流量圈
//        modelAndView.setViewName("jsp/excel_llq");
        //2.7上方传媒
//         modelAndView.setViewName("jsp/excel_sfcm");
        //2.8北青网
//         modelAndView.setViewName("jsp/excel_bqw");
        //2.9河北世航
//         modelAndView.setViewName("jsp/excel_hbsh");
        //3 视游互动
//        modelAndView.setViewName("jsp/excel_syhd");
        return modelAndView;
    }

   /**
     * 条件查询数据库的接口
     */
    @RequestMapping(value = "selectData")
    public ModelAndView select(Integer pageIndex, String startTime, String endTime, String name) {
       if(pageIndex == null) {
           pageIndex = 1;
       }
        int pageSize = 50;

       //天霸学院不用加这条
        List<String> nameList = this.excelService.getNameList();

        List<Excel> excelList = this.excelService.select(startTime, endTime, name, pageIndex, pageSize);
        Integer count = this.excelService.countQuery(startTime, endTime, name);
        if(count == null) {
            count = 0;
        }

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject(excelList);
        //天霸学院不加
        modelAndView.addObject(nameList);
        modelAndView.getModel().put("startTime",startTime);
        modelAndView.getModel().put("endTime",endTime);
        modelAndView.getModel().put("name",name);
        modelAndView.getModel().put("totalPage",count/50+1);
        modelAndView.getModel().put("pageIndex",pageIndex);
//四

        //1.1木蚂蚁后台
//        modelAndView.setViewName("jsp/excel_ant");
        //1.2上海漪澜后台
//        modelAndView.setViewName("jsp/excel_shyl");
        //1.3启创汇聚后台
//        modelAndView.setViewName("jsp/excel_qchj");
        //1.4瑞萨斯后台
//        modelAndView.setViewName("jsp/excel_rss");
        //1.5上海拓畅后台
//        modelAndView.setViewName("jsp/excel_shtc");
        //1.6漩涡科技后台
//        modelAndView.setViewName("jsp/excel_xwkj");
        //1.7迅迈后台
//        modelAndView.setViewName("jsp/excel_xm");
        //1.8珠海慈心园后台
//        modelAndView.setViewName("jsp/excel_zhcxy");
        //======================
//        modelAndView.setViewName("jsp/excel_lm");
        modelAndView.setViewName("jsp/excel_fx");


        //=========================
     //2.1霍尔果斯宝盛
//        modelAndView.setViewName("jsp/excel_hegsbs");
        //2.2云客科技
//        modelAndView.setViewName("jsp/excel_ykkj");
        //2.3云峰智慧
//         modelAndView.setViewName("jsp/excel_yfzh");
        //2.4中诺思
//         modelAndView.setViewName("jsp/excel_zns");
        //2.5零世纪
//         modelAndView.setViewName("jsp/excel_lsj");
        //2.6流量圈
//        modelAndView.setViewName("jsp/excel_llq");
        //2.7上方传媒
//         modelAndView.setViewName("jsp/excel_sfcm");
        //2.8北青网
//         modelAndView.setViewName("jsp/excel_bqw");
        //2.9河北世航
//         modelAndView.setViewName("jsp/excel_hbsh");
//3 视游互动
//        modelAndView.setViewName("jsp/excel_syhd");

        return modelAndView;
    }

    /**
     * 将查询数据导出到Excel
     */
    @RequestMapping(value = "export")
    public String export(Model model, String startTime, String endTime, String name) throws Exception {

        List<Excel> excelList = this.excelService.select(startTime, endTime, name,null,null);

        //六、选择导出的数据列
        //七、选择导入的数据格式（结束）
        //列表名称
        //lemeng
  /*      List<String> fieldNames = new ArrayList<String>();
        fieldNames.add("产品");
        fieldNames.add("信息费");
        fieldNames.add("合作方式");
        fieldNames.add("月份");
        fieldNames.add("cpa");
        fieldNames.add("分成/单价");
        fieldNames.add("结算金额");

        //需要显示数据的javabean属性，与fieldNames列表名称对应关系。
        List<String> fieldCodes = new ArrayList<String>();
        fieldCodes.add("name");
        fieldCodes.add("num");
        fieldCodes.add("channel");
        fieldCodes.add("theday");
        fieldCodes.add("model");
        fieldCodes.add("price");
        fieldCodes.add("income");*/

  //分享-乐盟
        List<String> fieldNames = new ArrayList<String>();
        fieldNames.add("订单号");
        fieldNames.add("应用id");
        fieldNames.add("单价");
        fieldNames.add("日期");
        fieldNames.add("user_code");

        //需要显示数据的javabean属性，与fieldNames列表名称对应关系。
        List<String> fieldCodes = new ArrayList<String>();
        fieldCodes.add("name");
        fieldCodes.add("model");
        fieldCodes.add("price");
        fieldCodes.add("theday");
        fieldCodes.add("channel");

/*
        List<String> fieldNames = new ArrayList<String>();
        fieldNames.add("日期");
        fieldNames.add("产品名称");
//        fieldNames.add("收入");
        fieldNames.add("曝光");
        fieldNames.add("点击");
//        fieldNames.add("推广个数");
//        fieldNames.add("单价");
//        fieldNames.add("渠道");
        fieldNames.add("广告主名称");
        fieldNames.add("投放模式");
//        fieldNames.add("折扣率");

        //需要显示数据的javabean属性，与fieldNames列表名称对应关系。
        List<String> fieldCodes = new ArrayList<String>();
        fieldCodes.add("theday");
        fieldCodes.add("name");
        fieldCodes.add("income");
        fieldCodes.add("num");
//        fieldCodes.add("price");
        fieldCodes.add("channel");
        fieldCodes.add("model");
//        fieldCodes.add("discount");
*/

        //五
        //本地测试
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("D:/download/", "D:/download/", "data", fieldNames, fieldCodes, 100);
        //1.1木蚂蚁后台
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/ant-tomcat-8080/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
        //1.2上海漪澜后台
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/shyl-tomcat-8081/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
        //1.3启创汇聚后台
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/qchj-tomcat-9077/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
         //1.4瑞萨斯后台
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/rss-tomcat-9092/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
         //1.5上海拓畅后台
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/shtc-tomcat-8057/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
         //1.6漩涡科技后台
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/xwkj-tomcat-9045/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
        //1.6漩涡科技南阳
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/xwkjny-tomcat-9088/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
         //1.7迅迈后台
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/xm-tomcat-8081/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
         //1.8珠海慈心园后台
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/zhcxy-tomcat-8063/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
//=====================================
         //1.9乐盟后台
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/lemeng-tomcat-8081/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
       //分享-乐盟
        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/fx-tomcat-8082/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);

        //==================================
          //2.1霍尔果斯宝盛
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/hegsbs-tomcat-8088/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
           //2.2云客科技
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/ykkj-tomcat-8142/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
             //2.3云峰智慧
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/yfzh-tomcat-8252/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
            //2.4 中诺思
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/zns-tomcat-9547/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);
  //2.5 零世纪
//        ExcelExportSXSSF exportSXXSSF = ExcelExportSXSSF.start("/usr/local/java/lsj-tomcat-9329/webapps/download/", "/download/", "data", fieldNames, fieldCodes, 100);

        //设置需要写入数据
        exportSXXSSF.writeDatasByObject(excelList);
        //导出文件，将数据写入excel文件，返回写入excel文件路径
        String path = exportSXXSSF.exportFile();

        //提示
        String str = "您本次导出数据" + excelList.size()+ "条，<a href='"+path+"'>点击下载</a>";

        model.addAttribute("download", str);

        return "jsp/download";
    }

    @RequestMapping(value = "import")
    public String import_reword() {
        return "jsp/importexcel";
    }

    /**
     * 药品信息导入 功能
     * @throws Exception
     */
    @RequestMapping(value = "importData")
    public void importData(HttpServletRequest request, HttpServletResponse response) throws Exception{
        response.setContentType("application/json;charset=UTF-8");
        //文件上传到哪里
        MultipartHttpServletRequest mr = (MultipartHttpServletRequest) request;
        //获取上传的文件
        MultipartFile multiFile = (MultipartFile) mr.getFile("file");

        String fname = multiFile.getOriginalFilename();

//        String pathfile = "D:/upload/" + System.currentTimeMillis() + fname;
        String pathfile = "/upload/" + System.currentTimeMillis() + fname;

        File file = new File(pathfile);
        try {
            multiFile.transferTo(file);
        } catch (Exception e) {
            e.printStackTrace();
        }

        //2.2 解析,并保存
        HxlsRead hxlsRead = new HxlsRead(file.getAbsolutePath(), 0, hxlsOptRowsInterface);
        hxlsRead.process();

        //3 提示
        String str = "已成功导入"+hxlsRead.getOptRows_success()+"条，失败"+hxlsRead.getOptRows_failure()+"条!";
        //失败提示信息
        List<ResultInfo> list = new ArrayList<>();

        for (String failMsg : hxlsRead.getFailmsgs()) {
            list.add(ResultUtil.createFail(failMsg));
        }

        FastJsonUtil.write_object(response, ResultUtil.createSubmitResult(str));

    }

    @RequestMapping(value = "getNameList")
    @ResponseBody
    public List<String> getNameList() {

        List<String> nameList = this.excelService.getNameList();

        return nameList;
    }

    //插入数据到分享-乐盟
    @RequestMapping(value = "insertData")
    @ResponseBody
    public String insertData(String name, String model, String price, String theday, String channel) {
        Map<String, Object> map = new HashMap<>();
        if(StringUtils.isBlank(name) || StringUtils.isBlank(model) || StringUtils.isBlank(price) || StringUtils.isBlank(theday)) {
            map.put("code", 101);
            map.put("msg", "参数缺失");
        }
        String msg = this.excelService.insertData(name, model, price, theday, channel);
        if(msg.equals("0")) {
            map.put("code", 102);
            map.put("msg", "异常");
        } else {
            map.put("code", 200);
            map.put("msg", msg);
        }
        String json = JsonUtils.objectToJson(map);

        return json;
    }
}

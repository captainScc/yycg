package cn.sharetimes.pojo;

import java.io.File;

/**
 * Created by sharetimes on 2017/11/1.
 */
public class ExcelVo {
    //上传文件内容
    private File excelimportFile;

    //文件名称，必须以FileName结尾
    private  String excelimportFileName;

    public File getExcelimportFile() {
        return excelimportFile;
    }

    public void setExcelimportFile(File excelimportFile) {
        this.excelimportFile = excelimportFile;
    }

    public String getExcelimportFileName() {
        return excelimportFileName;
    }

    public void setExcelimportFileName(String excelimportFileName) {
        this.excelimportFileName = excelimportFileName;
    }
}

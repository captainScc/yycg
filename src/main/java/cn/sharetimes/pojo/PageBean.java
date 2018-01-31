package cn.sharetimes.pojo;

/**
 * Created by sharetimes on 2017/11/3.
 */
public class PageBean {
    private Integer currentPage;
    private Integer totalPage;

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }
}

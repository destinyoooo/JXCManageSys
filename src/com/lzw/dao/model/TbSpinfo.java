package com.lzw.dao.model;

public class TbSpinfo implements java.io.Serializable {
    private String id;      //id属性
    private String spname;  //商品名称
    private String jc;      //商品简称
    private String cd;      //产地
    private String dw;      //单位
    private String gg;      //规格
    private String bz;      //包装
    private String ph;      //批号
    private String pzwh;    //批准文号
    private String memo;    //备注
    private String gysname; //供应商名称
    public TbSpinfo(){
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSpname() {
        return spname;
    }

    public void setSpname(String spname) {
        this.spname = spname;
    }

    public String getJc() {
        return jc;
    }

    public void setJc(String jc) {
        this.jc = jc;
    }

    public String getCd() {
        return cd;
    }

    public void setCd(String cd) {
        this.cd = cd;
    }

    public String getDw() {
        return dw;
    }

    public void setDw(String dw) {
        this.dw = dw;
    }

    public String getGg() {
        return gg;
    }

    public void setGg(String gg) {
        this.gg = gg;
    }

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }

    public String getPh() {
        return ph;
    }

    public void setPh(String ph) {
        this.ph = ph;
    }

    public String getPzwh() {
        return pzwh;
    }

    public void setPzwh(String pzwh) {
        this.pzwh = pzwh;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getGysname() {
        return gysname;
    }

    public void setGysname(String gysname) {
        this.gysname = gysname;
    }

    @Override
    public String toString() {
        return getSpname();
    }

    @Override
    public int hashCode() {
        final int PRIMR=31;
        int result=1;
        result=PRIMR * result + ((bz==null) ? 0 : bz.hashCode());
        result=PRIMR * result + ((cd==null) ? 0 : cd.hashCode());
        result=PRIMR * result + ((dw==null) ? 0 : dw.hashCode());
        result=PRIMR * result + ((gg==null) ? 0 : gg.hashCode());
        result=PRIMR * result + ((gysname==null) ? 0 : gysname.hashCode());
        result=PRIMR * result + ((id==null) ? 0 : id.hashCode());
        result=PRIMR * result + ((jc==null) ? 0 : jc.hashCode());
        result=PRIMR * result + ((memo==null) ? 0 : memo.hashCode());
        result=PRIMR * result + ((ph==null) ? 0 : ph.hashCode());
        result=PRIMR * result + ((pzwh==null) ? 0 : pzwh.hashCode());
        result=PRIMR * result + ((spname==null) ? 0 : spname.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        final TbSpinfo other=(TbSpinfo) obj;
        if (bz == null){
            if (other.bz !=null)
                return false;
        }else if (!bz.equals(other.bz))
            return false;
        if (dw == null){
            if (other.dw !=null)
                return false;
        }else if (!dw.equals(other.dw))
            return false;
        if (gg == null){
            if (other.gg !=null)
                return false;
        }else if (!gg.equals(other.gg))
            return false;
        if (gysname == null){
            if (other.gysname !=null)
                return false;
        }else if (!gysname.equals(other.gysname))
            return false;
        if (id == null){
            if (other.id !=null)
                return false;
        }else if (!id.equals(other.id))
            return false;
        if (jc == null){
            if (other.jc !=null)
                return false;
        }else if (!jc.equals(other.jc))
            return false;
        if (memo == null){
            if (other.memo !=null)
                return false;
        }else if (!memo.equals(other.memo))
            return false;
        if (ph == null){
            if (other.ph !=null)
                return false;
        }else if (!ph.equals(other.ph))
            return false;
        if (pzwh == null){
            if (other.pzwh !=null)
                return false;
        }else if (!pzwh.equals(other.pzwh))
            return false;
        return true;
    }
}

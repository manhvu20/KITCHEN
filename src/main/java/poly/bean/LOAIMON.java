package poly.bean;

public class LOAIMON {
	private int idLoai;
	private String tenLoai;
	private int soLuongMonAn;
	
	public LOAIMON() {
		
	}
	
	public LOAIMON(int idLoai, String tenLoai) {
		this.idLoai = idLoai;
		this.tenLoai = tenLoai;
	}
	
	public int getIdLoai() {
		return idLoai;
	}
	
	public void setIdLoai(int idLoai) {
		this.idLoai = idLoai;
	}
	
	public String getTenLoai() {
		return tenLoai;
	}
	
	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}

	public int getSoLuongMonAn() {
        return soLuongMonAn;
    }

    public void setSoLuongMonAn(int soLuongMonAn) {
        this.soLuongMonAn = soLuongMonAn;
    }
	
	@Override
	public String toString() {
		return "LOAIMON [idLoai=" + idLoai + ", tenLoai=" + tenLoai + ", soLuongMonAn=" + soLuongMonAn + "]";
	}
	
}

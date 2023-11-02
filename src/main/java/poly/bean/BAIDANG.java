package poly.bean;

public class BAIDANG {
	private int idMon;
	private String tenMon;
	private String hinhAnh;
	private String moTa;
	private int idLoai;
	private int id_ND;
	private int idCongThuc;
	private int trangThai;
	private String tenNguoiDang;
	
	public BAIDANG() {	
	}
	
	public BAIDANG(int idMon, String tenMon, String hinhAnh, String moTa, int idLoai,  int id_ND, int idCongThuc, int trangThai, String tenNguoiDang) {
		this.idMon = idMon;
		this.tenMon = tenMon;
		this.hinhAnh = hinhAnh;
		this.moTa = moTa;
		this.idLoai = idLoai;
		this.id_ND = id_ND;
		this.idCongThuc = idCongThuc;
		this.trangThai = trangThai;
		this.tenNguoiDang = tenNguoiDang;
	}
	
	public int getIdMon() {
		return idMon;
	}
	
	public void setIdMon(int idMon) {
		this.idMon = idMon;
	}
	
	public String getTenMon() {
		return tenMon;
	}
	
	public void setTenMon(String tenMon) {
		this.tenMon = tenMon;
	}
	
	public String getHinhAnh() {
		return hinhAnh;
	}
	
	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	
	public String getMoTa() {
		return moTa;
	}
	
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	
	public int getIdLoai() {
		return idLoai;
	}
	
	public void setIdLoai(int idLoai) {
		this.idLoai = idLoai;
	}
	
	public int getId_ND() {
		return id_ND;
	}
	
	public void setId_ND(int id_ND) {
		this.id_ND = id_ND;
	}
	
	public int getIdCongThuc() {
		return idCongThuc;
	}
	
	public void setIdCongThuc(int idCongThuc) {
		this.idCongThuc = idCongThuc;
	}
	
	public int getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}
	
	public int getTenNguoiDang() {
		return trangThai;
	}

	public void setTenNguoiDang(String tenNguoiDang) {
		this.tenNguoiDang = tenNguoiDang;
	}
	
	@Override
	public String toString() {
		return "MONAN [idMon=" + idMon + ", tenMon=" + tenMon + ", hinhAnh=" + hinhAnh + ", moTa=" + moTa + ", idLoai="
				+ idLoai + ", id_ND=" + id_ND + ", idCongThuc=" + idCongThuc + ", trangThai=" + trangThai + ", tenNguoiDang=" + tenNguoiDang +  "]";
	}
	
}

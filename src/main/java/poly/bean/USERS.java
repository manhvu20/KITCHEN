package poly.bean;

public class USERS {
	private int id_ND;
	private String tenND;
	private String email;
	private String password;
	private int trangThai;
	private int idVT;
	
	public USERS() {
	}
	
	public USERS(int id_ND, String tenND, String email, String password, int trangThai, int idVT) {
		this.id_ND = id_ND;
		this.tenND = tenND;
		this.email = email;
		this.password = password;
		this.trangThai = trangThai;
		this.idVT = idVT;
	}
	
	public int getid_ND(){
		return id_ND;
	}
	
	public void setid_ND(int id_ND){
		this.id_ND = id_ND;
	}
	
	public String getTenND(){
		return tenND;
	}
	
	public void setTenND(String tenND){
		this.tenND = tenND;
	}
	
	public String getEmail(){
		return email;
	}
	
	public void setEmail(String email){
		this.email = email;
	}
	
	public String getPassword(){
		return password;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public int getTrangThai(){
		return trangThai;
	}
	
	public void setTrangThai(int trangThai){
		this.trangThai = trangThai;
	}
	
	public int getidVT(){
		return idVT;
	}
	
	public void setidVT(int idVT){
		this.idVT = idVT;
	}

	@Override
	public String toString() {
		return "USERS [id_ND=" + id_ND + ", tenND=" + tenND + ", email=" + email + ", password=" + password
				+ ", trangThai=" + trangThai + ", idVT=" + idVT + "]";
	}
	
	
}

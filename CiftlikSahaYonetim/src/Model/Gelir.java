package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Helper.DBConnection;

public class Gelir {
	
	DBConnection conn = new DBConnection();
	Connection con = conn.connDb();
	Statement st = null;
	ResultSet rs = null;
	PreparedStatement preparedStatement = null;
	
	private int sira_no;
	private String tarih, gelir_type, miktar, personel, tahsilat, name, tcno, telefon, adres;
	public Gelir(int sira_no, String tarih, String gelir_type, String miktar, String personel, String tahsilat,
			String name, String tcno, String telefon, String adres) {
		super();
		this.sira_no = sira_no;
		this.tarih = tarih;
		this.gelir_type = gelir_type;
		this.miktar = miktar;
		this.personel = personel;
		this.tahsilat = tahsilat;
		this.name = name;
		this.tcno = tcno;
		this.telefon = telefon;
		this.adres = adres;
	}
	public Gelir() {
		
	}
	public int getSira_no() {
		return sira_no;
	}
	public void setSira_no(int sira_no) {
		this.sira_no = sira_no;
	}
	public String getTahsilat() {
		return tahsilat;
	}
	public void setTahsilat(String tahsilat) {
		this.tahsilat = tahsilat;
	}
	public String getTarih() {
		return tarih;
	}
	public void setTarih(String tarih) {
		this.tarih = tarih;
	}
	public String getGelir_type() {
		return gelir_type;
	}
	public void setGelir_type(String gelir_type) {
		this.gelir_type = gelir_type;
	}
	public String getMiktar() {
		return miktar;
	}
	public void setMiktar(String miktar) {
		this.miktar = miktar;
	}
	public String getPersonel() {
		return personel;
	}
	public void setPersonel(String personel) {
		this.personel = personel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTcno() {
		return tcno;
	}
	public void setTcno(String tcno) {
		this.tcno = tcno;
	}
	public String getTelefon() {
		return telefon;
	}
	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}
	public String getAdres() {
		return adres;
	}
	public void setAdres(String adres) {
		this.adres = adres;
	}
	
	public ArrayList<Gelir> getGelirList() throws SQLException{
		ArrayList<Gelir> list = new ArrayList<>();
		
		Connection con = conn.connDb();
		try {
			st = con.createStatement();
			rs = st.executeQuery("SELECT*FROM gelir ORDER BY sira_no ASC");
			while(rs.next()) {
				Gelir obj = new Gelir();
				obj.setSira_no(rs.getInt("sira_no"));
				obj.setTarih(rs.getString("tarih"));
				obj.setGelir_type(rs.getString("gelir_type"));
				obj.setMiktar(rs.getString("miktar"));
				obj.setPersonel(rs.getString("personel"));
				obj.setTahsilat(rs.getString("tahsilat"));
				obj.setName(rs.getString("name"));
				obj.setTcno(rs.getString("tcno"));
				obj.setTelefon(rs.getString("telefon"));
				obj.setAdres(rs.getString("adres"));
				list.add(obj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			con.close();
			st.close();
			rs.close();
		}
		return list;
	}
	public boolean addGelir(String tarih, String gelir_type, String miktar, String personel, String tahsilat,
			String name, String tcno, String telefon, String adres) {
		String query = "INSERT INTO gelir"+"(tarih, gelir_type, miktar, personel, tahsilat, name, tcno, telefon, adres) VALUES"+"(?,?,?,?,?,?,?,?,?)";
	
		boolean key = false;
		try {
			st = con.createStatement();
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, tarih);
			preparedStatement.setString(2, gelir_type);
			preparedStatement.setString(3, miktar);
			preparedStatement.setString(4, personel);
			preparedStatement.setString(5, tahsilat);
			preparedStatement.setString(6, name);
			preparedStatement.setString(7, tcno);
			preparedStatement.setString(8, telefon);
			preparedStatement.setString(9, adres);
			preparedStatement.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(key)
		return true;
		else
		return false;
	}
	public boolean deleteGelir(int sira_no) {
		String query = "DELETE FROM gelir WHERE sira_no = ?";
		boolean key = false;
		try {
			st = con.createStatement();
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, sira_no);
			preparedStatement.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(key)
		return true;
		else
		return false;
	}
	public boolean updateGelir(int sira_no, String tarih, String gelir_type, String miktar, String personel, String tahsilat,
			String name, String tcno, String telefon, String adres) {
		String query = "UPDATE gelir SET tarih = ?, gelir_type = ?, miktar = ?, personel = ?, tahsilat = ?, name = ?, tcno= ?, telefon = ?, adres = ? WHERE sira_no = ?";
		Connection con = conn.connDb();
		boolean key = false;
		try {
			Statement st = con.createStatement();
			PreparedStatement preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, tarih);
			preparedStatement.setString(2, gelir_type);
			preparedStatement.setString(3, miktar);
			preparedStatement.setString(4, personel);
			preparedStatement.setString(5, tahsilat);
			preparedStatement.setString(6, name);
			preparedStatement.setString(7, tcno);
			preparedStatement.setString(8, telefon);
			preparedStatement.setString(9, adres);
			preparedStatement.setInt(10, sira_no);
			preparedStatement.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(key)
		return true;
		else
		return false;
		
	}

}

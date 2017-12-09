package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Offer;

@Repository
public class OfferDAO {
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource datasource){
		jdbcTemplate = new JdbcTemplate(datasource);
	}
	public int getRowCount(){
		String sqlStatement = "select count(*) from classinfo";
		return jdbcTemplate.queryForObject(sqlStatement, Integer.class);
	}
	public List<Offer> getOffers(){
		String sqlStatement = "select *from classinfo";
		
		return jdbcTemplate.query(sqlStatement, new RowMapper<Offer>(){
			public Offer mapRow(ResultSet rs, int rowNum) throws SQLException{
				Offer offer = new Offer();
				offer.setId(rs.getInt("id"));
				offer.setYear(rs.getString("year"));
				offer.setSemester(rs.getString("semester"));
				offer.setCode(rs.getString("code"));
				offer.setClassname(rs.getString("classname"));
				offer.setDivision(rs.getString("division"));
				offer.setPoint(rs.getString("point"));
				
				return offer;
			}
		});
	}
	public boolean insert(Offer offer){
		
		String year = offer.getYear();
		String semester = offer.getSemester();
		String code = offer.getCode();
		String classname = offer.getClassname();
		String division = offer.getDivision();
		String point = offer.getPoint();
						
		String sqlStatement = "insert into classinfo(year, semester, code, classname, division, point) values(?,?,?,?,?,?)";
		
		return (jdbcTemplate.update(sqlStatement, new Object[]{year, semester, code, classname, division, point})==1);
			
	}
}

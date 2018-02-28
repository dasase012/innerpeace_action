package controller.member;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;




public class JoinDBBean {
	//Singleton : getInstance
	private static JoinDBBean instance = new JoinDBBean();
	public static JoinDBBean getInstance() {
		return instance;
	}
	private JoinDBBean() {	
	}
	
	//Connection method
	public static Connection getConnection(){
		Connection conn = null;
		try {
			/*String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";//	HOME*/
			String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:orcl";  //	SIST
			String dbId = "scott";
			String dbPass = "tiger";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
					
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	//close method
	public void close(Connection con, ResultSet rs,PreparedStatement pstmt) {
		if(rs!=null) 
			try {rs.close();}catch(SQLException ex) {}
		if(pstmt!=null) 
			try {pstmt.close();}catch(SQLException ex) {}
		if(con!=null) 
			try {con.close();}catch(SQLException ex) {}
		}
	//login
	public int login(String id, String pwd) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			
			
		String sql = "SELECT pwd, name FROM member WHERE id=?";
	
		
		System.out.println("db:"+sql);
		
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			System.out.println("id:"+id);
			System.out.println("password:"+ pwd);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			System.out.println("rs==="+rs);
			if(rs.next()) {
				if(rs.getString(1).equals(pwd)) {
					
					return 1;	//로그인 성공
				}
				else {
					System.out.println("불일치");
					return 0;	//비밀번호 불일치
				}
			}
			System.out.println("아이디 없다");
			return -1; //아이디가 없다
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}
	
	//getMemberCount
	public int getMemberCount(){
		int x=0;
		String sql="select nvl(count(*),0) from member ";
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int number = 0;
		
		try {
		pstmt=con.prepareStatement(sql);
		
		
		rs=pstmt.executeQuery();
		if(rs.next()) {x=rs.getInt(1);}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(con,rs,pstmt);
		}
		return x;
	}
	
	//getMembers
	public List getMembers(int startRow, int endRow) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List memberList = null;
		String sql="";
		
		try {
			conn = getConnection();
			sql = "select * from " 
					+"(select rownum rnum,a.* "
					+" from (select id,name,pwd,gender,birthdate,tel,email,"
					+ "con_past,con_date,con_cat,position,regdate	"
					+ "from member order by regdate desc) "
					+ " a ) where rnum between ? and ? ";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs=pstmt.executeQuery();
			
		if(rs.next()) {
			memberList = new ArrayList();
			do{
				JoinDataBean members = new JoinDataBean();
				members.setId(rs.getString("id"));
				members.setName(rs.getString("name"));
				members.setPwd(rs.getString("pwd"));
				members.setGender(rs.getString("gender"));
				members.setBirthdate(rs.getString("birthdate"));
				members.setTel(rs.getString("tel"));
				members.setEmail(rs.getString("email"));
				members.setCon_past(rs.getString("con_past"));
				members.setCon_date(rs.getString("con_date"));
				members.setCon_cat(rs.getString("con_cat"));
				members.setPosition(rs.getString("position"));
				members.setRegdate(rs.getTimestamp("regdate"));
				memberList.add(members);
			}while(rs.next());}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			close(conn,rs,pstmt);
		}
		return memberList;
	}
	
	//getMember
	public JoinDataBean getMember(String id, String chk) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JoinDataBean members = null;
		String sql="";
		
		try {
			conn = getConnection();
			
			if(chk.equals("content")) {
			sql="update member where id = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			}
			
			sql="select * from member where id = ? ";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				members = new JoinDataBean();
				members.setId(rs.getString("id"));
				members.setName(rs.getString("name"));
				members.setPwd(rs.getString("pwd"));
				members.setGender(rs.getString("gender"));
				members.setBirthdate(rs.getString("birthdate"));
				members.setTel(rs.getString("tel"));
				members.setEmail(rs.getString("email"));
				members.setCon_past(rs.getString("con_past"));
				members.setCon_date(rs.getString("con_date"));
				members.setCon_cat(rs.getString("con_cat"));
				members.setPosition(rs.getString("position"));
				members.setRegdate(rs.getTimestamp("regdate"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn,rs,pstmt);
		}return members;
		
	}
	
	
	//insert
	public void insertData(JoinDataBean info) {
		String sql="";
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String id = "";
		
		try {
			
		sql = "insert into member(id,name,pwd,gender,birthdate,tel,email,"
				+ "con_past,con_date,con_cat,position,regdate) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,sysdate)";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,info.getId());
		pstmt.setString(2,info.getName());
		pstmt.setString(3,info.getPwd());
		pstmt.setString(4,info.getGender());
		pstmt.setString(5,info.getBirthdate());
		pstmt.setString(6,info.getTel());
		pstmt.setString(7,info.getEmail());
		pstmt.setString(8,info.getCon_past());
		pstmt.setString(9,info.getCon_date());
		pstmt.setString(10,info.getCon_cat());
		pstmt.setString(11,info.getPosition());
		pstmt.executeUpdate();
		}catch(SQLException e1) {
			e1.printStackTrace();
		}finally {
			close(con,rs,pstmt);
		}	
	}	
	
	//delete
	public int deleteData(String id, String pwd)throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "delete from member where id=? and pwd=?";
		int x = -1;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			x=pstmt.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			close(conn,rs,pstmt);
		}return x;
		
	}
	//deleteAdmin
	public int deleteAdmin(String id, String pwd)throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="delete from member where id=?";
		int x = -1;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			x=pstmt.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			close(conn,rs,pstmt);
		}return x;
		
	}
	//update  
	public int updateData(JoinDataBean info) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		int chk = 0;
		
		try {			
			conn = getConnection();
			String sql = "update member set name=?,pwd=?, email=?,birthdate=?,tel=? where id=? and pwd=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,info.getName());
			pstmt.setString(2,info.getPwd());
			pstmt.setString(3,info.getEmail());
			pstmt.setString(4,info.getBirthdate());
			pstmt.setString(5,info.getTel());
			pstmt.setString(6,info.getId());
			pstmt.setString(7,info.getPwd());
			chk=pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn,null,pstmt);
		}return chk;
	}

}

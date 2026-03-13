package jesus;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class Dataset
{

	public static void main(String[] args) 
	{
File f =new File("D:\\Files\\aa.xls");
		
		try
		{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/kayo","root","root");
		    PreparedStatement query=con.prepareStatement("truncate table data");
		    query.executeUpdate();

		    con.setAutoCommit(false);
		    PreparedStatement pstm = null ;
		    FileInputStream input = new FileInputStream(f.getAbsolutePath());
		    POIFSFileSystem fs = new POIFSFileSystem( input );
		    HSSFWorkbook wb = new HSSFWorkbook(fs);
		    HSSFSheet sheet = wb.getSheetAt(0);
		    HSSFRow row;
		    for(int i=1; i<=sheet.getLastRowNum(); i++)
		    {
		        row = sheet.getRow(i);
		        
		        
		        String author = row.getCell(0).getStringCellValue();
		        //String coa = row.getCell(1).getStringCellValue();
		        
		        
		        String sql = "INSERT INTO data(site) VALUES('"+author+"')";
		        pstm = (PreparedStatement) con.prepareStatement(sql);
		        pstm.execute();
		        System.out.println("Import rows "+i);
		        con.commit();
		        pstm.close();
		    }
		    con.close();
		    input.close();
		    System.out.println("Success import excel to mysql table");
		}catch(Exception e)
		{
		    System.out.println(e);
		}
			
	}
		
	}



package com.cafe.model.dao;

import java.sql.SQLException;
import com.cafe.model.beans.Menu;

public interface MenuDao 
{
	boolean insertMenu(Menu menu) throws ClassNotFoundException, SQLException;
	boolean updateMenu(Menu menu) throws ClassNotFoundException, SQLException;
	Menu searchMenu(String day) throws ClassNotFoundException, SQLException;
	
	

}

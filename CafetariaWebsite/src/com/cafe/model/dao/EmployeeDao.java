package com.cafe.model.dao;

import java.sql.SQLException;
import java.util.List;

import com.cafe.model.beans.Employee;

public interface EmployeeDao
{
	List<Employee> listAllEmployees() throws ClassNotFoundException, SQLException;

	Employee searchEmployee(String id) throws ClassNotFoundException, SQLException;
	
	boolean updateEmployee(String ein,String value) throws SQLException, ClassNotFoundException;
	boolean updateEmployee(String columnName, int value) throws SQLException, ClassNotFoundException;
	boolean insertEmployee(Employee employee) throws ClassNotFoundException, SQLException;
	int employeeFoodExpense(String ein)throws ClassNotFoundException, SQLException;
	
}

package com.cafe.model.beans;
//Employee POJO
public class Employee 
{
	private String EIN;
	private String employeeName;
	private String hasOpted;
	private int monthlyFoodExpense;
	private String password;
	public Employee()
	{
		
	}
	public Employee(String eIN, String employeeName, String hasOpted, int monthlyFoodExpense, String password) {
		super();
		EIN = eIN;
		this.employeeName = employeeName;
		this.hasOpted = hasOpted;
		this.monthlyFoodExpense = monthlyFoodExpense;
		this.password = password;
	}
	@Override
	public String toString() {
		return String.format("%-10s|", EIN)+ String.format("%-20s|", employeeName) + String.format("%-5s|", hasOpted)
				+ String.format("%-10d|", monthlyFoodExpense)  ;
	}
	public String getEIN() {
		return EIN;
	}
	public void setEIN(String eIN) {
		EIN = eIN;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getHasOpted() {
		return hasOpted;
	}
	public void setHasOpted(String hasOpted) {
		this.hasOpted = hasOpted;
	}
	public int getMonthlyFoodExpense() {
		return monthlyFoodExpense;
	}
	public void setMonthlyFoodExpense(int monthlyFoodExpense) {
		this.monthlyFoodExpense = monthlyFoodExpense;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}

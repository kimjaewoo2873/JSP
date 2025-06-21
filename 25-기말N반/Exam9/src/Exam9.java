//<%@ page contentType="text/html; charset=utf-8"%>
//<%@ page import="dto.Book"%>
import dto.Book;
//<%@ page import="dao.BookRepository"%>
import dao.BookRepository;

import java.util.ArrayList;

public class Exam9 {
  public static void main(String args[]) {
/*
<%
	request.setCharacterEncoding("UTF-8");

	String bookId = request.getParameter("productId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");
*/
	String bookId = "1bookId";
	String name = "2name";
	String unitPrice = "3";
	String description = "4description을 처음 접하는 독자를 대상으로 일대일 수업처럼 자세히 설명한 책이다. 꼭 알아야 할 핵심 개념은 기본 예제로 최대한 쉽게 설명했으며, 중요한 내용은 응용 예제, 퀴즈, 셀프 스터디, 예제 모음으로 한번 더 복습할 수 있다.";
	String publisher = "5publisher";
	String category = "6category";
	String unitsInStock = "7";
	String condition = "8condition";

	Integer price;

	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);

	long stock;

	if (unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);

	Book newBook = new Book();
	newBook.setBookId(bookId);
	newBook.setName(name);
	newBook.setUnitPrice(price);
	newBook.setDescription(description);
	newBook.setPublisher(publisher);
	newBook.setCategory(category);
	newBook.setUnitsInStock(stock);
	newBook.setCondition(condition);

	// 본인이 작성하라
	BookRepository repos = BookRepository.getInstance();
	repos.plusBook(newBook);
	
	// 본인이 작성 종료
/*
	response.sendRedirect("products.jsp");
%>
*/
	ArrayList<Book> listOfProducts = repos.getAllBooks();
	for (int i = 0; i < listOfProducts.size(); i++) {
	  Book product = listOfProducts.get(i);
	  System.out.println("----------");
	  System.out.println(product.getName());
	  System.out.println(product.getDescription().substring(0,60));
	  System.out.println(product.getUnitPrice()+"원");
	}
  }
}

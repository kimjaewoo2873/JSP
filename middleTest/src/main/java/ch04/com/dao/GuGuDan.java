package ch04.com.dao;

public class GuGuDan{
	private StringBuffer sb;
	public GuGuDan() {
		sb = new StringBuffer();
	}
	public StringBuffer process(int n) {
		for(int i=1; i<10; i++) {
			sb.append(n + " * " + i + " = " + (n*i) + "<br>");
		}
		return sb;
	}
}
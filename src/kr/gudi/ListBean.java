package kr.gudi;

public class ListBean {
	String title;
	String contentes;
	
	public ListBean(String title, String contents){
		this.title = title ;
		this.contentes = contents;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContentes() {
		return contentes;
	}
	public void setContentes(String contentes) {
		this.contentes = contentes;
	}
	@Override
	public String toString() {
		return "ListBean [title=" + title + ", contentes=" + contentes + "]";
	}
	
	
}

package basic_p;

import java.util.ArrayList;
import java.util.HashMap;

import jakarta.servlet.http.HttpServletRequest;

public class HomeExam {

	public String mainPageUrl;
	public HomeExam(HttpServletRequest request){
		

		String category = "story";	
		if(request.getParameter("category")!=null) {
			category = request.getParameter("category");
		}
		String categoryUrl =  "menu/"+category+".jsp";
			
		String mainPage = "intro";
		if(request.getParameter("main")!=null) {
			mainPage = request.getParameter("main");
		}
		mainPageUrl = category+"/"+mainPage+".jsp";
		
		HashMap<String, ArrayList<Menu>> menuMap = new HashMap();
		
		//각 카테고리별 목록
		ArrayList<Menu> story = new ArrayList();
		story.add(new Menu("story", "intro", "브랜드 스토리"));
		story.add(new Menu("story", "health", "재료 이야기"));
		story.add(new Menu("story", "global", "글로벌 뜨레쥬르"));
		story.add(new Menu("story", "news", "뉴스&공지사항"));
		
		ArrayList<Menu> bread = new ArrayList();
		bread.add(new Menu("bread", "new", "New 뚜레쥬르 살펴보기"));
		bread.add(new Menu("bread", "intro", "건강한 데일리 베이커리"));
		
		ArrayList<Menu> product = new ArrayList();
		product.add(new Menu("product", "new", "신제품"));
		product.add(new Menu("product", "bread", "빵"));
		product.add(new Menu("product", "cake", "케이크"));
		product.add(new Menu("product", "drink", "음료"));
		
		ArrayList<Menu> event = new ArrayList();
		event.add(new Menu("event", "now", "진행중인 이벤트"));
		event.add(new Menu("event", "membership", "제휴혜택"));
	
		
		menuMap.put("story", story);
		menuMap.put("bread", bread);
		menuMap.put("product", product);
		menuMap.put("event", event);
		
		request.setAttribute("menus", menuMap.get(category));
	}
}

package com.test.scrap;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class JavaCrawl {
	
	private static List<String> imgTagList = new ArrayList<String>();
	private static List<String> hrefSrc = new ArrayList<String>();
	
	public JavaCrawl() {
		crawlImgTag();
	}
	
	public List<String> getImgTagList() {
		return imgTagList;
	}

	public List<String> getHrefSrc() {
		return hrefSrc;
	}

	public void crawlImgTag() {

		Document doc = null;
		String url = "";
		// 1페이지 start=1
		// 2페이지 start=11
		// 3페이지 start=21
		// 4페이지 start=31
		// 5페이지 start=41
		// 6페이지 start=51
		// ........
		// 페이지당 10개의 게시글

		for (int i = 0; i < 6; i++) {
			
			url = "https://search.naver.com/search.naver?date_from=&date_option=0&date_to=&dup_remove=1&nso=&post_blogurl=&post_blogurl_without=&query=%EC%A0%9C%EC%A3%BC%20%EC%B2%AD%EB%B3%B4%EB%A6%AC&sm=tab_pge&srchby=all&st=sim&where=post&start="+i+"1";
		

			try {
				doc = Jsoup.connect(url).get();
				System.out.println("---------------- CONNECT ---------------");
			} catch (IOException e) {
				System.err.println("[Error] URL 오류!");
			}

			System.out.println("---------------- IMAGE TAG ---------------");
			Elements elements = doc.select("a").select("img.sh_blog_thumbnail");

			for (Element els : elements) {
				String html = els.html();
//			imgTagList.add(html);
				System.out.println(html);
			}

			System.out.println("---------------- IMAGE SRC ---------------");
			for (Element els : elements) {
				// buff.append(els.attr("src"));
				imgTagList.add(els.attr("src"));
				System.out.println("src: " + els.attr("src"));
			}

			System.out.println("---------------- DEFINITION TAG ---------------");
			Elements difTag = doc.select("dl").select("dt").select("a");

			for (Element dif : difTag) {
				String title = dif.attr("title");
				System.out.println("title : " + title);
			}
		}

	}

}

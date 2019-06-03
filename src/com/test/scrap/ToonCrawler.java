package com.test.scrap;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URL;

import javax.imageio.ImageIO;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class ToonCrawler {
	 
    public static void main(String[] args) throws IOException {
        
        Document doc = Jsoup.connect("https://www.instagram.com/explore/tags/%EA%B5%AD%EB%82%B4%EC%97%AC%ED%96%89/?hl=ko").get();
        String folder = doc.title();
        Element element = doc.select("div.KL4Bh").get(0);
        Elements img = element.select("img");
        int page = 0;
        for (Element e : img) {
            String url = e.getElementsByAttribute("src").attr("src");
            
            URL imgUrl = new URL(url);
            BufferedImage jpg = ImageIO.read(imgUrl);
            File file = new File("경로"+folder+"\\"+page+".jpg");
            ImageIO.write(jpg, "jpg", file);
            page+=1;
        }
    }
}

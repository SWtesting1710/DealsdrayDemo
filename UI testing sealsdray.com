package org.dealsdray;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class UITdealsdray {

	public static void main(String[] args) throws IOException {
		
		WebDriverManager.chromedriver().setup();
		
		WebDriver driver = new ChromeDriver();
		
		driver.get("https://www.getcalley.com/page-sitemap.xml");
		
		TakesScreenshot t = (TakesScreenshot)driver;
		
		driver.findElement(By.xpath("//a[@href='https://www.getcalley.com/']")).click();
		File a= t.getScreenshotAs(OutputType.FILE);
		File b = new File("C:\\Users\\jaiki\\eclipse-workspace\\A1_Testing\\target\\Image\\screen.png");
		FileUtils.copyFile(a, b);
	 
		TakesScreenshot t1 = (TakesScreenshot)driver;
		driver.findElement(By.xpath("//a[@href='https://www.getcalley.com/calley-call-from-browser/']")).click();
		File a1= t1.getScreenshotAs(OutputType.FILE);
		File b1 = new File("C:\\Users\\jaiki\\eclipse-workspace\\A1_Testing\\target\\Image\\screen1.png");
		FileUtils.copyFile(a1, b1);
		
		
		TakesScreenshot t2 = (TakesScreenshot)driver;
		driver.findElement(By.xpath("//a[@href='https://www.getcalley.com/calley-pro-features/']")).click();
		File a2= t2.getScreenshotAs(OutputType.FILE);
		File b2 = new File("C:\\Users\\jaiki\\eclipse-workspace\\A1_Testing\\target\\Image\\screen2.png");
		FileUtils.copyFile(a2, b2);
		
		TakesScreenshot t3 = (TakesScreenshot)driver;
      	driver.findElement(By.xpath("//a[@href='https://www.getcalley.com/best-auto-dialer-app/']")).click();
	    File a3= t3.getScreenshotAs(OutputType.FILE);
		File b3 = new File("C:\\Users\\jaiki\\eclipse-workspace\\A1_Testing\\target\\Image\\screen2.png");
		FileUtils.copyFile(a3, b3);
		
		TakesScreenshot t4 = (TakesScreenshot)driver;
		driver.findElement(By.xpath("//a[@href='https://www.getcalley.com/how-calley-auto-dialer-app-works/']")).click(); 
		File a4= t3.getScreenshotAs(OutputType.FILE);
		File b4 = new File("C:\\Users\\jaiki\\eclipse-workspace\\A1_Testing\\target\\Image\\screen2.png");
		FileUtils.copyFile(a3, b3);
		
	}
}

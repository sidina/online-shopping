package net.sdn.onlinebackend.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.sdn.onlinebackend.dao.CategoryDao;
import net.sdn.onlinebackend.dto.Category;


@Repository("categoryDao")
public class CategotyDaoImpl implements CategoryDao {
	
	
	private static List<Category> categories =new ArrayList<>();
	
	static {
		
		Category category=new Category();
		
		category.setId(1);
		category.setName("Televison");
		category.setDescription("dsc of tv");
		category.setImgaeURL("image-1.png");
		
		Category category1=new Category();
		
		category1.setId(2);
		category1.setName("Mobile");
	  	category1.setDescription("dsc of mobile");
		category1.setImgaeURL("image-2.png");
		
		Category category2=new Category();
		
		category2.setId(3);
		category2.setName("Laptop");
		category2.setDescription("dsc of phone");
		category2.setImgaeURL("image-3.png");
		
		categories.add(category);
		categories.add(category1);
		categories.add(category2);
	}

	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

	@Override
	public Category get(int id) {
		//enchanced loop
		for(Category category: categories) {
			if(category.getId()==id) return category;
		}
		return null;
	}

}

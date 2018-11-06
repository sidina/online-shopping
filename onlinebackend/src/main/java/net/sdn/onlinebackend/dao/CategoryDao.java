package net.sdn.onlinebackend.dao;

import java.util.List;
import net.sdn.onlinebackend.dto.Category;

public interface CategoryDao {
	
	List<Category> list();
	Category get(int id);

}

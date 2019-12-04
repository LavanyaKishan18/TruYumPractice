package com.truYum.Dao;

import java.util.List;
/**
 * @author Lavanya_K
 *
 */

import com.truYum.model.MenuItem;

public interface MenuItemDao {
	public List<MenuItem> getMenuItemListAdmin();

	public List<MenuItem> getMenuItemListCustomer();

	public void modifyMenuItem(MenuItem menuItem);

	public MenuItem getMenuItem(long menuItemId);
}

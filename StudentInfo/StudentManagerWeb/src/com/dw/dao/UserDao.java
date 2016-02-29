package com.dw.dao;


import com.dw.model.User;
/**
 *  数据库访问层-管理员的CRUD操作
 * @author zengxiangpeng
 *
 */
public interface UserDao {
	    /**
	     * 登陆用户验证
	     * @param page
	     * @return
	     */
	  public boolean isLogin(User user);

		 /**
		  * 修改用户的密码
		  * @param page
		  * @return
		  */
		
		public int updateUserPassWord(User  user);
}

package com.dw.dao;

/**
 * 
 * ���ݷ��ʲ㣬ѧ����ϢCRUD����
 * @author zengxiangpeng
 * 
 */

import java.util.List;

import com.dw.model.Student;

public interface StudentDao {
	
	/**
	 * ��ȡָ�����Ñ�(����ҳ�����ʹ��)
	 * 
	 * @param id
	 * @return stu
	 */
	public Student findStudentByid(int id);
		

	/**
	 * ���ѧ����Ϣ
	 * 
	 * @param stu
	 * @return flag
	 */
	public boolean addStudent(Student stu);

	/**
	 * ɾ��ѧ����Ϣ
	 * 
	 * @param id
	 * @return flag
	 */
	public boolean delStudent(int id);

	/**
	 * ����ѧ����Ϣ
	 * 
	 * @param stu
	 * @return flag
	 */
	public boolean updateStudent(Student stu);

	/**
	 * ��ѯȫ��ѧ����Ϣ
	 * 
	 * @return list
	 */
	@SuppressWarnings("unchecked")
	public List StSelect();
	/**
	 * ����ID��ѯѧ����Ϣ
	 * 
	 * @return Student
	 */
	public Student findStudentById(String id);
	
	/**
	 * ��ѯѧ������
	 * 
	 * @return int
	 */
	public int queryCount(int pagerows) throws Exception;
	
	public List<Student> queryByPage(int pageno,int pagerows)throws Exception;
		 

}

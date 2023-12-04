package com.example.service;

import com.example.entity.Course;
import com.example.mapper.CourseMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CourseService {
    @Resource
    private CourseMapper courseMapper;
    public PageInfo<Course> selectPage(Integer pageNum,Integer pageSize,Course course){
        //PageNum当前页码   PageSize是每页个数
        PageHelper.startPage( pageNum, pageSize);
        List<Course> courseList = courseMapper.selectAll(course);
        return  PageInfo.of(courseList);

    }
//新增数据
    public void add(Course course) {
        courseMapper.insert(course);
    }

    public void updateById(Course course) {
        courseMapper.updateById(course);
    }

    public void deleteById(Integer id) {
        courseMapper.deleteById(id);
    }
}

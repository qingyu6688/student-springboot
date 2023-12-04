package com.example.controller;

import com.example.common.Result;
import com.example.entity.Student;
import com.example.entity.StudentCourse;
import com.example.service.StudentCourseService;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@RestController
@RequestMapping("/studentCourse")
public class StudentCourseController {
    @Resource
    StudentCourseService studentCourseService;

    /*
    学生选课
     */
    @PostMapping("/add")
    public Result add(@RequestBody StudentCourse studentCourse){
        studentCourseService.add(studentCourse);
        return Result.success();
    }

    // 根据id删除课程
    @DeleteMapping("/delete/{id}")
    public Result delete(@PathVariable Integer id) {
        // 根据id删除课程
        studentCourseService.deleteById(id);
        // 返回成功结果
        return Result.success();
    }
    /**
     * 分页查询
     * @param
     * @return
     */
    @GetMapping("/selectPage")
    public Result selectPage( @RequestParam(defaultValue = "1") Integer pageNum,
                              @RequestParam(defaultValue = "5") Integer pageSize,
                              StudentCourse studentCourse){
        PageInfo<StudentCourse> pageInfo = studentCourseService.selectPage(pageNum,pageSize,studentCourse);
        return Result.success(pageInfo);
    }
}

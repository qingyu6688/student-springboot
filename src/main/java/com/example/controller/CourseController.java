package com.example.controller;

import com.example.common.Result;
import com.example.entity.Course;
import com.example.service.CourseService;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@RestController
@RequestMapping("/course")
public class CourseController {
    @Resource
   private CourseService courseService;

    @GetMapping("/selectPage")
    public Result selectPage(@RequestParam(defaultValue ="1") Integer pageNum,
                             @RequestParam(defaultValue ="5" ) Integer pageSize,
                             Course course){ //?name=xxx&no=xxx
        //根据页码和每页数量，以及课程信息，查询课程信息
        PageInfo<Course> pageInfo = courseService.selectPage(pageNum, pageSize,course);
        return  Result.success(pageInfo);
    }
    @PostMapping("/add")
    public Result add(@RequestBody Course course) {
        //添加课程信息
        courseService.add(course);
        return Result.success();
    }
  @PutMapping("/update")
    public Result update(@RequestBody Course course) {
        // 通过Course对象更新数据
        courseService.updateById(course);
        // 返回更新成功的结果
        return Result.success();
    }
   // 根据id删除课程
    @DeleteMapping("/delete/{id}")
    public Result delete(@PathVariable Integer id) {
        // 根据id删除课程
        courseService.deleteById(id);
        // 返回成功结果
        return Result.success();
    }
}

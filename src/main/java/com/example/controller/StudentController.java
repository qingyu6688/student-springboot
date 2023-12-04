package com.example.controller;

import com.example.common.Result;
import com.example.entity.Student;
import com.example.service.StudentService;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@RestController
@RequestMapping("/student")
public class StudentController {
    @Resource
    StudentService studentService;

    /**
     * 新增
     * @param
     * @return
     */
    @PostMapping("/add")
    public Result add(@RequestBody Student student){
        studentService.add(student);
        return Result.success();
    }
    /**
     * 删除
     * @param
     * @return
     */
    @DeleteMapping("/delete/{id}")
    public Result delete(@PathVariable Integer id){
        studentService.deleteById(id);
        return Result.success();
    }

    /**
     * 更新
     * @param
     * @return
     */
    @PutMapping("/update")
    public Result update(@RequestBody Student student){
        studentService.updateById(student);
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
                              Student student){
        PageInfo<Student> pageInfo = studentService.selectPage(pageNum,pageSize,student);
        return Result.success(pageInfo);
    }
}


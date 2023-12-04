package com.example.controller;

import com.example.common.Result;
import com.example.entity.Course;
import com.example.entity.Grade;
import com.example.service.GradeService;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/*
成绩接口
 */
@RestController
@RequestMapping("/grade")
public class GradeController {
    @Resource
    GradeService gradeService;
/*
查询成绩
 */
    @GetMapping("/selectPage")
    public Result selectPage(@RequestParam(defaultValue ="1") Integer pageNum,
                             @RequestParam(defaultValue ="5" ) Integer pageSize,
                             Grade grade){ //?name=xxx&no=xxx
        //根据页码和每页数量，以及课程信息，查询课程信息
        PageInfo<Grade> pageInfo = gradeService.selectPage(pageNum, pageSize,grade);
        return  Result.success(pageInfo);
    }
    @PutMapping("/update")
    public Result update(@RequestBody Grade grade){
        gradeService.update(grade);
        return  Result.success();
    }
    @PostMapping("/add")
    public Result add(@RequestBody Grade grade){

        gradeService.add(grade);
        return  Result.success();
    }
/*
删除成绩
 */
    @DeleteMapping("/delete/{id}")
    public Result delete(@PathVariable Integer id) {
        // 根据id删除课程
        gradeService.deleteById(id);
        // 返回成功结果
        return Result.success();
    }
}

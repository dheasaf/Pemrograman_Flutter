package com.dhea.MataKuliah.controller;


import com.dhea.MataKuliah.service.MataKuliahService;
import com.dhea.MataKuliah.entity.MataKuliah;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api/v1/matakuliah")
public class MataKuliahController {
    @Autowired
    private MataKuliahService matakuliahService;
     @GetMapping
    public List<MataKuliah> getAll(){
        return matakuliahService.getAll();
    }
    
    @PostMapping
    public void insert(@RequestBody MataKuliah matakuliah){
        matakuliahService.insert(matakuliah);
    }
}

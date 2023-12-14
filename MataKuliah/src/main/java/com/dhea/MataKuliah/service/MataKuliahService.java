/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dhea.MataKuliah.service;
import com.dhea.MataKuliah.entity.MataKuliah;
import com.dhea.MataKuliah.repository.MataKuliahRepository;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ASUS
 */
@Service
public class MataKuliahService {
    private final MataKuliahRepository MataKuliahRepository;
    
    @Autowired
    public MataKuliahService(MataKuliahRepository matakuliahRepository){
        this.MataKuliahRepository = matakuliahRepository;
    }
    
    public MataKuliah getMahasiswa(Long idmahasiswa){
        return MataKuliahRepository.findById(idmahasiswa).get();
    }
    
    public List<MataKuliah> getAll(){
        return MataKuliahRepository.findAll();
    }
    
    public void insert(MataKuliah matakuliah){
        Optional<MataKuliah> matakuliahOptional = 
                MataKuliahRepository.findMatakuliahByKode(matakuliah.getKode());
        if(matakuliahOptional.isPresent()){
            throw new IllegalStateException("Email Sudah Ada");
        }
        MataKuliahRepository.save(matakuliah);
    }

    private static class Mahasiswa {

        public Mahasiswa() {
        }
    }
}
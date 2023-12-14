/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dhea.MataKuliah.repository;

import com.dhea.MataKuliah.service.MataKuliahService;
import java.util.List;
import com.dhea.MataKuliah.entity.MataKuliah;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


/**
 *
 * @author Dhea
 * 
 */
@Repository
public interface MataKuliahRepository extends JpaRepository<MataKuliah, Long> {
 public Optional<MataKuliah> findMatakuliahByKode(Long kode);    
}

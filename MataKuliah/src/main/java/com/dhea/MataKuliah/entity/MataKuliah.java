package com.dhea.MataKuliah.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "matakuliah")
public class MataKuliah {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long kode;
    private String nama;
    private Long sks;

    public MataKuliah() {
    }

    public MataKuliah(Long kode, String nama, Long sks) {
        this.kode = kode;
        this.nama = nama;
        this.sks = sks;
    }

    public Long getKode() {
        return kode;
    }

    public void setKode(Long kode) {
        this.kode = kode;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public Long getSks() {
        return sks;
    }

    public void setSks(Long sks) {
        this.sks = sks;
    }

    @Override
    public String toString() {
        return "MataKuliah{" +
                "kode=" + kode +
                ", nama='" + nama + '\'' +
                ", sks=" + sks +
                '}';
    }
}

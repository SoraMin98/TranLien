package com.example.foodsapp.object;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import org.json.JSONObject;

import java.io.Serializable;

public class MonAn implements Serializable {
    JSONObject jsonObject;

    @SerializedName("Id")
    @Expose
    private String id;
    @SerializedName("TenMonan")
    @Expose
    private String tenMonan;
    @SerializedName("LinkAnh")
    @Expose
    private String linkAnh;
    @SerializedName("NoiDung")
    @Expose
    private String noiDung;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTenMonan() {
        return tenMonan;
    }

    public void setTenMonan(String tenMonan) {
        this.tenMonan = tenMonan;
    }

    public String getLinkAnh() {
        return linkAnh;
    }

    public void setLinkAnh(String linkAnh) {
        this.linkAnh = linkAnh;
    }

    public String getNoiDung() {
        return noiDung;
    }

    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }

}
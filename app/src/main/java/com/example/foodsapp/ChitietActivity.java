package com.example.foodsapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.example.foodsapp.object.MonAn;
import com.google.android.material.appbar.CollapsingToolbarLayout;

public class ChitietActivity extends AppCompatActivity {

    TextView txvTenMonans;
    ImageView imgAnhMonans;
    MonAn monAn;
    TextView txtCachLam;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_chitiet);

        getSupportActionBar().hide();

        init();
        anhXa();
        setUp();
        setClick();
    }
    private void init() {

        Intent intent = getIntent();
        monAn = (MonAn) intent.getSerializableExtra("monan");

    }
    private void anhXa(){
        CollapsingToolbarLayout collapsingToolbarLayout = findViewById(R.id.collapsingtoolbar_id);
        collapsingToolbarLayout.setTitleEnabled(true);

        imgAnhMonans = findViewById(R.id.imgAnhMonans);
        txvTenMonans = findViewById(R.id.txvTenMonans);
        txtCachLam = findViewById(R.id.txtCachLam);

    }
    private void setUp(){
        txvTenMonans.setText(monAn.getTenMonan());
        Glide.with(this).load(monAn.getLinkAnh()).into(imgAnhMonans);
        txtCachLam.setText(monAn.getNoiDung());
    }

    private void setClick(){

    }
}

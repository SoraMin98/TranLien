package com.example.foodsapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.Toast;

import com.example.foodsapp.adapter.MonanAdapter;
import com.example.foodsapp.api.ApiLayMonan;
import com.example.foodsapp.interfaces.LayMonanVe;
import com.example.foodsapp.object.MonAn;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity implements LayMonanVe {
    GridView gdvDSMonan;
    MonanAdapter adapter;
    ArrayList<MonAn> monAnArrayList;
    EditText edtTimKiem;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        init();
        anhXa();
        setUp();
        setClick();
        new ApiLayMonan(this).execute();

    }
    private void init(){
        monAnArrayList=new ArrayList<>();

        adapter = new MonanAdapter(MainActivity.this,0, monAnArrayList);

    }
    private void anhXa(){
        gdvDSMonan=findViewById(R.id.gdvDSMonan);
        edtTimKiem=findViewById(R.id.edtTimKiem);
    }
    private void setUp(){
        gdvDSMonan.setAdapter(adapter);
    }
    private void setClick(){
        edtTimKiem.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                String s= edtTimKiem.getText().toString();
                adapter.sortMonan(s);
            }
        });
        gdvDSMonan.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
//                MonAn monAn = monAnArrayList.get(i);
//                Bundle b = new Bundle();
//                b.putSerializable("monan",monAn);
//                Intent intent = new Intent(MainActivity.this,ChitietActivity.class);
//                intent.putExtra("data",b);
//                startActivity(intent);

                Intent intent = new Intent(MainActivity.this, ChitietActivity.class);
                intent.putExtra("monan",monAnArrayList.get(i));
                startActivity(intent);
            }
        });
    }

    @Override
    public void batDau() {
        Toast.makeText(this,"Đang lấy về",Toast.LENGTH_SHORT).show();
    }

    @Override
    public void ketThuc(String data) {
        try {
//            Toast.makeText(MainActivity.this, "avca", Toast.LENGTH_SHORT).show();
            monAnArrayList.clear();
            JSONArray arr = new JSONArray(data);
            for (int i=0; i<arr.length();i++){
                JSONObject o = arr.getJSONObject(i);
                MonAn monAn = new MonAn();
                monAn.setId(o.getString("Id"));
                monAn.setTenMonan(o.getString("TenMonan"));
                monAn.setLinkAnh(o.getString("LinkAnh"));
                monAn.setNoiDung(o.getString("NoiDung"));
                monAnArrayList.add(monAn);
            }
//            Toast.makeText(MainActivity.this, "zczxc"+monAnArrayList.get(2).getTenMonan(), Toast.LENGTH_SHORT).show();
            adapter = new MonanAdapter(this,0, monAnArrayList);
            gdvDSMonan.setAdapter(adapter);
        }catch (JSONException e){
            Log.e("ERR",e.getMessage());
        }
    }

    @Override
    public void biLoi() {
        Toast.makeText(this,"Lỗi kết nối",Toast.LENGTH_SHORT).show();
    }

    public void update(View view) {
        new ApiLayMonan(this).execute();
    }
}

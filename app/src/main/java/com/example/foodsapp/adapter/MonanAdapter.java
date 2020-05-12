package com.example.foodsapp.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.example.foodsapp.R;
import com.example.foodsapp.object.MonAn;

import java.util.ArrayList;
import java.util.List;

public class MonanAdapter extends ArrayAdapter<MonAn> {
    private Context ct;
    private ArrayList<MonAn> arr;

    public MonanAdapter(Context context, int resource, List<MonAn> objects) {
        super(context, resource, objects);
        this.ct= context;
        this.arr=new ArrayList<>(objects);
    }
    public void sortMonan(String s){
        s=s.toUpperCase();
        int k=0;
        for (int i=0; i<arr.size();i++ ){
            MonAn m= arr.get(i);
            String ten= m.getTenMonan().toUpperCase();
            if(ten.indexOf(s)>=0){
                arr.set(i,arr.get(k));
                arr.set(k,m);
                k++;

            }
        }
        notifyDataSetChanged();
    }
    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            LayoutInflater inflater =(LayoutInflater)ct.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView=inflater.inflate(R.layout.item_monan,null);
        }
        if (arr.size()>0){
            MonAn monAn= this.arr.get(position);

            TextView tenTenMonan=convertView.findViewById(R.id.txvTenMonan);
            ImageView imgAnhmonan=convertView.findViewById(R.id.imgAnhMonan);


            tenTenMonan.setText(monAn.getTenMonan());
            Glide.with(this.ct).load(monAn.getLinkAnh()).into(imgAnhmonan);
        }
        return convertView;
    }
}

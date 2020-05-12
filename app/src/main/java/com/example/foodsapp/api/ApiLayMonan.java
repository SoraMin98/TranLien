package com.example.foodsapp.api;

import android.os.AsyncTask;

import com.example.foodsapp.interfaces.LayMonanVe;
import com.example.foodsapp.interfaces.LayMonanVe;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;

import java.io.IOException;

public class ApiLayMonan extends AsyncTask<Void,Void,Void>{
    String data;
    LayMonanVe layMonanVe;

    public ApiLayMonan(LayMonanVe layMonanVe) {
        this.layMonanVe = layMonanVe;
        this.layMonanVe.batDau();
    }

    @Override
    protected Void doInBackground(Void... voids) {
        OkHttpClient client=new OkHttpClient();
        Request request= new Request.Builder()
                .url("http://tranlien11.000webhostapp.com/layMonan.php")
                .build();
        data=null;
        try {
            Response response= client.newCall(request).execute();
            ResponseBody body=response.body();
            data=body.string();
        }catch (IOException e){
            data=null;
        }
        return null;
    }

    @Override
    protected void onPostExecute(Void aVoid) {
        if (data==null){
            this.layMonanVe.biLoi();
        }else {
            this.layMonanVe.ketThuc(data);
        }
    }
}

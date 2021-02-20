/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;
import java.util.Random;
import javax.swing.text.DateFormatter;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class Util {

    public static final Random rand = new Random();

    public static String generateRandomID(int length) {
        String str = "abcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            sb.append(str.charAt(rand.nextInt(str.length())));
        }
        return sb.toString();
    }
    
    public static LocalTime parseTime(Time time){
       return LocalTime.parse((CharSequence) time.toString());
    }
    
    
    public static String formatLocalTime(LocalTime time){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm a", Locale.ENGLISH);
        String now = time.format(formatter);
        return now;
    }
    
    
    public static String formatDate(Date date){
        String pattern = "MM/dd/yyyy";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);      
        return simpleDateFormat.format(date);
    }
    
     public static String formatDateTime(Date date){
        String pattern = "MM/dd/yyyy HH:mm:ss";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);      
        return simpleDateFormat.format(date);
    }
    
    public static LocalTime generateRandomTime() {
        
        final int millisInDay = 24 * 60 * 60 * 1000;
        final long randMil = (long) rand.nextInt(millisInDay);
        return parseTime(new Time((long) Math.floor(randMil / 600000) * 600000));
        
    }
    
    public static void main(String[] args) {
       // Time t = generateRandomTime();
      //  System.out.println("time = " + parseTime(t));
    }
    
    
}

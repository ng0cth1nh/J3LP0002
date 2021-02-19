/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Time;
import java.util.Random;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class Util {

    private static final Random rand = new Random();

    public static String generateRandomID(int length) {
        String str = "abcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            sb.append(str.charAt(rand.nextInt(str.length())));
        }
        return sb.toString();
    }

    public static Time generateRandomTime() {
        
        final int millisInDay = 24 * 60 * 60 * 1000;
        final long randMil = (long) rand.nextInt(millisInDay);
        return new Time((long) Math.floor(randMil / 600000) * 600000);
        
    }
}

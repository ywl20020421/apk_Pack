package org.calvin;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class rc4 {
    //rc4加密
    private int[] s;
    private int i;
    private int j;

    public rc4(byte[] key) {
        s = new int[256];
        for (int k = 0; k < 256; k++) {
            s[k] = k;
        }

        int j = 0;
        for (int k = 0; k < 256; k++) {
            j = (j + s[k] + key[k % key.length]) & 0xFF;
            swap(k, j);
        }

        i = 0;
        j = 0;
    }

    private void swap(int a, int b) {
        int temp = s[a];
        s[a] = s[b];
        s[b] = temp;
    }

    public byte[] encrypt(byte[] data) {
        return process(data);
    }

    public void encrypt(String inputFilePath, String outputFilePath) throws IOException {
        try (FileInputStream fis = new FileInputStream(inputFilePath);
             FileOutputStream fos = new FileOutputStream(outputFilePath)) {
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = fis.read(buffer)) != -1) {
                byte[] encryptedBuffer = process(buffer, bytesRead);
                fos.write(encryptedBuffer);
            }
        }
    }

    public byte[] decrypt(byte[] data) {
        return process(data);
    }

    private byte[] process(byte[] data) {
        return process(data, data.length);
    }

    private byte[] process(byte[] data, int length) {
        byte[] output = new byte[length];
        for (int k = 0; k < length; k++) {
            i = (i + 1) & 0xFF;
            j = (j + s[i]) & 0xFF;
            swap(i, j);
            int t = (s[i] + s[j]) & 0xFF;
            output[k] = (byte) (data[k] ^ s[t]);
        }
        return output;
    }
}

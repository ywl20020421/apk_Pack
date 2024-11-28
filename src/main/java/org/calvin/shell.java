package org.calvin;

import brut.apktool.Main;
import com.iyxan23.zipalignjava.ZipAlign;
import org.apache.commons.io.FileUtils;

import java.io.*;
import java.util.Arrays;

public class shell {

    public static void main(String[] args) throws Exception {
        // 设计流程 ：1. 提取apk 信息 androidmanifest.xml 的 application name属性值  2,提取apk所有dex 文件 进行加密 3.编写配置信息 4.添加shell加载器 回打包
        System.out.println("-f dest.apk");
        String apkPath = args[1];
        File apkfile = new File(apkPath.replace(".apk",""));

        //将apk解压
        System.out.println("apk解压");
        zip.decompressFile(apkPath,apkfile.getAbsolutePath());
        System.out.println("apk解压完成");

        //提取dex文件
        String[] dexPaths = apkfile.list(new FilenameFilter() {
            @Override
            public boolean accept(File dir, String name) {
                return name.endsWith(".dex");
            }
        });

        System.out.println("dex文件数量："+dexPaths.length);

//
        //初始化rc4
        rc4 rc4 = new rc4("I like Lao Wang cooking!".getBytes("utf-8"));

        //使用rc4 对dex文件加密
        for (String dexPath : dexPaths) {
            String encryptDexPath =apkfile.getAbsolutePath()+File.separator+ dexPath.replace(".dex",".encrypt.dex");
            rc4.encrypt(apkfile.getAbsolutePath()+File.separator+ dexPath,encryptDexPath);
            org.calvin.file.deleteDirectory(apkfile.getAbsolutePath()+File.separator+ dexPath);
            System.out.println("加密完成 "+encryptDexPath);
        }


//
//
        // 将资源文件classes.dex 添加到apk中
        try (InputStream inputStream = shell.class.getClassLoader().getResourceAsStream("classes.dex")) {
            if (inputStream == null) {
                System.err.println("config.properties not found");
                return;
            }
            //将文件转存到file目录下
            File file1 = new File(apkfile.getAbsolutePath()+"/classes.dex");
            FileUtils.copyInputStreamToFile(inputStream,file1);
        }

        String applicationName = apk.getApplicationName(apkfile.getAbsolutePath()+File.separator+"AndroidManifest.xml");
        System.out.println("applicationName:"+applicationName);

        apk.editAName(apkfile.getAbsolutePath()+File.separator+"AndroidManifest.xml","com.crack.loader.shell");

        //添加配置文件
        file.writeFile(apkfile.getAbsolutePath()+"/shell.xml",applicationName+"\r\n");

        //apk打包
        zip.compressFiles(zip.listFilesForFolder(apkfile),apkPath.replace(".apk","out.apk"));

        file.deleteDirectory(apkfile.getAbsolutePath());
        System.out.println("删除"+apkfile.getAbsolutePath());





    }
}

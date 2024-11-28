package org.calvin;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class file {

    /**
     * 检查文件是否存在
     * @param filePath 文件路径
     * @return 文件存在返回 true，否则返回 false
     */
    public static boolean exists(String filePath) {
        File file = new File(filePath);
        return file.exists();
    }

    /**
     * 读取文件内容
     * @param filePath 文件路径
     * @return 文件内容
     * @throws IOException 如果读取文件时发生错误
     */
    public static String readFile(String filePath) throws IOException {
        StringBuilder content = new StringBuilder();
        try (FileReader reader = new FileReader(filePath)) {
            int ch;
            while ((ch = reader.read()) != -1) {
                content.append((char) ch);
            }
        }
        return content.toString();
    }

    /**
     * 写入文件内容
     * @param filePath 文件路径
     * @param content 要写入的内容
     * @throws IOException 如果写入文件时发生错误
     */
    public static void writeFile(String filePath, String content) throws IOException {
        try (FileWriter writer = new FileWriter(filePath)) {
            writer.write(content);
        }
    }

    /**
     * 删除文件
     * @param filePath 文件路径
     * @return 删除成功返回 true，否则返回 false
     */

    public static boolean deleteDirectory(String filePath) {
        File dir = new File(filePath);
        if (dir.isDirectory()) {
            File[] files = dir.listFiles();
            if (files != null) {
                for (File file : files) {
                    try {
                        if (file.isDirectory()) {
                            deleteDirectory(file.getAbsolutePath());
                        } else {
                            if (!file.delete()) {
                                System.err.println("Failed to delete file: " + file.getAbsolutePath());
                            }
                        }
                    } catch (Exception e) {
                        System.err.println("Error deleting file: " + file.getAbsolutePath() + " - " + e.getMessage());
                    }
                }
            }
        }
        try {
            if (!dir.delete()) {
                System.err.println("Failed to delete directory: " + dir.getAbsolutePath());
            }
        } catch (Exception e) {
            System.err.println("Error deleting directory: " + dir.getAbsolutePath() + " - " + e.getMessage());
        }
        return !dir.exists();
    }

    /**
     * 重命名文件
     * @param oldFilePath 原文件路径
     * @param newFilePath 新文件路径
     * @return 重命名成功返回 true，否则返回 false
     */
    public static boolean renameFile(String oldFilePath, String newFilePath) {
        File oldFile = new File(oldFilePath);
        File newFile = new File(newFilePath);
        return oldFile.renameTo(newFile);
    }

    /**
     * 读取文件并返回字节数组。
     *
     * @param filePath 文件路径
     * @return 字节数组
     * @throws IOException 如果读取文件时发生错误
     */
    public static byte[] readFileToByteArray(String filePath) throws IOException {
        return Files.readAllBytes(Paths.get(filePath));
    }
}

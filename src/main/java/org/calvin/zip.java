package org.calvin;
import net.lingala.zip4j.ZipFile;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.ZipParameters;
import net.lingala.zip4j.model.enums.CompressionLevel;
import net.lingala.zip4j.model.enums.EncryptionMethod;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
public class zip {

    /**
     * 遍历指定目录下的所有文件（不包括子目录），并将它们添加到列表中。
     * @param directory 目录路径
     * @return 包含所有文件的列表
     */
    public static List<File> listFilesForFolder(final File directory) {
        List<File> files = new ArrayList<>();
        if (directory.exists() && directory.isDirectory()) {
            for (final File fileEntry : directory.listFiles()) {
                files.add(fileEntry);

            }
        }
        return files;
    }


    /**
     * 压缩文件或文件夹到指定路径。
     * @param sourceFiles 需要压缩的文件或文件夹列表
     * @param zipFilePath 输出的压缩文件路径
     * @throws ZipException 如果压缩过程中发生错误
     */
    public static void compressFiles(List<File> sourceFiles, String zipFilePath) throws ZipException {
        ZipFile zipFile = new ZipFile(zipFilePath);
        ZipParameters parameters = new ZipParameters();
        parameters.setCompressionLevel(CompressionLevel.NORMAL);

        for (File file : sourceFiles) {
            if (file.isDirectory()) {
                zipFile.addFolder(file, parameters);
            } else {
                zipFile.addFile(file, parameters);
            }
        }
    }



    /**
     * 解压文件到指定目录。
     * @param zipFilePath 要解压的压缩文件路径
     * @param outputFolder 解压后的输出目录
     * @throws ZipException 如果解压过程中发生错误
     */
    public static void decompressFile(String zipFilePath, String outputFolder) throws ZipException {
        ZipFile zipFile = new ZipFile(zipFilePath);
        zipFile.extractAll(outputFolder);
    }


}

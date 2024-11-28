package org.calvin;

import com.wind.meditor.ManifestEditorMain;
import pxb.android.axml.AxmlParser;

import java.io.IOException;

public class apk {

    public static void editAName(String file,String newName){
        ManifestEditorMain.main(new String[]{file,"-an",newName,"-o",file+".bak"});
        org.calvin.file.deleteDirectory(file);
        org.calvin.file.renameFile(file+".bak",file);
    }



    public static String getValue(String file,String tag,String ns,String attrName)  {
        byte[] axmlData = null;
        try {
            axmlData = org.calvin.file.readFileToByteArray(file);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        AxmlParser axmlParser = new AxmlParser(axmlData);
        try {
            while (axmlParser.next() != AxmlParser.END_FILE) {
                if (axmlParser.getAttrCount() != 0 && !axmlParser.getName().equals(tag)) {
                    continue;
                }
                for (int i = 0; i < axmlParser.getAttrCount(); i++) {
                    if (axmlParser.getNamespacePrefix().equals(ns) && axmlParser.getAttrName(i).equals(attrName)) {
                        return (String) axmlParser.getAttrValue(i);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String getApplicationName(String file) {
        return getValue(file,"application","android","name");
    }
}

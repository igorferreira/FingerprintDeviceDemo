package com.timmy.util;

import com.timmy.mapper.EnrollInfoMapper;
import com.timmy.mapper.MachineCommandMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import java.util.Base64;

import java.io.*;
import java.util.Date;

public class ImageProcess {

    @Autowired
    EnrollInfoMapper enrollInfoMapper;


    @Autowired
    MachineCommandMapper machineCommandMapper;

    public static boolean base64toImage(String base64String, String picName) {
        Date now = new Date();
        String imagePath = "C:/dynamicface/picture/";
        String file = picName + ".jpg";
        System.out.println("Image Path: " + imagePath + file);
        File file2 = new File(imagePath + file);

        if (base64String == null) {
            return false;
        } else {
            try {
                if (!file2.exists()) {
                    file2.getParentFile().mkdirs();
                    file2.createNewFile();
                }

                byte[] b = Base64.getDecoder().decode(base64String);

                try (OutputStream out = new FileOutputStream(file2)) {
                    out.write(b);
                }
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
    }

	public static String multipartFileToBASE64(MultipartFile mFile) throws Exception {
		String[] suffixArray = mFile.getOriginalFilename().split("\\.");
		String prefix = "data:image/jpg;base64,".replace("jpg", suffixArray[suffixArray.length - 1]);
		String base64EncodedImg = prefix + Base64.getEncoder().encodeToString(mFile.getBytes()).replaceAll("[\\s*\t\n\r]", "");
		return base64EncodedImg;
	}

    /**
     * 图片转base64字符串
     *
     * @param imgFile 图片路径
     * @return
     */
    public static String imageToBase64Str(String imgFile) {
        InputStream inputStream = null;
        byte[] data = null;
        try {
            inputStream = new FileInputStream(imgFile);
            data = new byte[inputStream.available()];
            inputStream.read(data);
            inputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        // 加密
        //   BASE64Encoder encoder = new BASE64Encoder();
        /*
         * String s=encoder.encode(data); String s2=s.replaceAll("[+]", "%2B");
         */
        return org.apache.commons.codec.binary.Base64.encodeBase64String(data);
    }


    public static void main(String[] args) {


    }
}

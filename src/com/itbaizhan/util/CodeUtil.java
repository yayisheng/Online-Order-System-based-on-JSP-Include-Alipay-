package com.itbaizhan.util;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Random;

public class CodeUtil {
	 // 验证码长度
    private static int CODE_LENGTH = 5;
    // 单个验证码的宽度
    private static int SINGLECODE_WIDTH = 15;
    // 单个验证码的高度
    private static int SINGLECODE_HEIGHT = 30;
    // 单个验证码之间的间隔
    private static int SINGLECODE_GAP = 5;
    // 验证码图片的宽度
    private static int IMG_WIDTH = CODE_LENGTH * (SINGLECODE_WIDTH + SINGLECODE_GAP);
    // 验证码图片的长度
    private static int IMG_HEIGHT = SINGLECODE_HEIGHT;
 
    /**
     * 获取验证码
     *
     * @return 返回验证码值字符串
     */
    public static String getCode() {
        String code = "";
        for (int i = 0; i < CODE_LENGTH; i++) {
            code += (new Random()).nextInt(10);
        }
        return code;
    }
 
    /**
     * 画一张验证码图片
     *
     * @return 返回一张验证码图片
     */
    public static BufferedImage getCodeImg(String code) {
        BufferedImage img = new BufferedImage(IMG_WIDTH, IMG_HEIGHT, BufferedImage.TYPE_INT_BGR);
        // 得到图片上的一个画笔
        Graphics g = img.getGraphics();
        // 设置画笔的颜色，用来做背景色
        g.setColor(Color.YELLOW);
        // 用画笔填充一个矩形，矩形的左上角坐标，宽和高
        g.fillRect(0, 0, IMG_WIDTH, IMG_HEIGHT);
        // 将画笔颜色设置为黑色，用来写字
        g.setColor(Color.BLACK);
        // 设置字体：微软雅黑、不带格式的、字号
        g.setFont(new Font("微软雅黑", Font.PLAIN, SINGLECODE_HEIGHT + 5));
        // 输出数字
        char c;
        for (int i = 0; i < code.toCharArray().length; i++) {
            // 取到对应位置的字符
            c = code.charAt(i);
            // 画出一个字符串：要画的内容，开始的位置，高度
            g.drawString(c + "", i * (SINGLECODE_WIDTH + SINGLECODE_GAP) + SINGLECODE_GAP / 2, IMG_HEIGHT);
        }
        // 实例化一个随机数对象
        Random random = new Random();
        // 干扰因素
        for (int i = 0; i < 20; i++) {
            int x = random.nextInt(IMG_WIDTH);
            int y = random.nextInt(IMG_HEIGHT);
            int x2 = random.nextInt(IMG_WIDTH);
            int y2 = random.nextInt(IMG_HEIGHT);
            // 画干扰线
            g.drawLine(x, y, x + x2, y + y2);
        }
        return img;
    }
}

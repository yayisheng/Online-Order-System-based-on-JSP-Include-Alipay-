package com.itbaizhan.util;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Random;

public class CodeUtil {
	 // ��֤�볤��
    private static int CODE_LENGTH = 5;
    // ������֤��Ŀ��
    private static int SINGLECODE_WIDTH = 15;
    // ������֤��ĸ߶�
    private static int SINGLECODE_HEIGHT = 30;
    // ������֤��֮��ļ��
    private static int SINGLECODE_GAP = 5;
    // ��֤��ͼƬ�Ŀ��
    private static int IMG_WIDTH = CODE_LENGTH * (SINGLECODE_WIDTH + SINGLECODE_GAP);
    // ��֤��ͼƬ�ĳ���
    private static int IMG_HEIGHT = SINGLECODE_HEIGHT;
 
    /**
     * ��ȡ��֤��
     *
     * @return ������֤��ֵ�ַ���
     */
    public static String getCode() {
        String code = "";
        for (int i = 0; i < CODE_LENGTH; i++) {
            code += (new Random()).nextInt(10);
        }
        return code;
    }
 
    /**
     * ��һ����֤��ͼƬ
     *
     * @return ����һ����֤��ͼƬ
     */
    public static BufferedImage getCodeImg(String code) {
        BufferedImage img = new BufferedImage(IMG_WIDTH, IMG_HEIGHT, BufferedImage.TYPE_INT_BGR);
        // �õ�ͼƬ�ϵ�һ������
        Graphics g = img.getGraphics();
        // ���û��ʵ���ɫ������������ɫ
        g.setColor(Color.YELLOW);
        // �û������һ�����Σ����ε����Ͻ����꣬��͸�
        g.fillRect(0, 0, IMG_WIDTH, IMG_HEIGHT);
        // ��������ɫ����Ϊ��ɫ������д��
        g.setColor(Color.BLACK);
        // �������壺΢���źڡ�������ʽ�ġ��ֺ�
        g.setFont(new Font("΢���ź�", Font.PLAIN, SINGLECODE_HEIGHT + 5));
        // �������
        char c;
        for (int i = 0; i < code.toCharArray().length; i++) {
            // ȡ����Ӧλ�õ��ַ�
            c = code.charAt(i);
            // ����һ���ַ�����Ҫ�������ݣ���ʼ��λ�ã��߶�
            g.drawString(c + "", i * (SINGLECODE_WIDTH + SINGLECODE_GAP) + SINGLECODE_GAP / 2, IMG_HEIGHT);
        }
        // ʵ����һ�����������
        Random random = new Random();
        // ��������
        for (int i = 0; i < 20; i++) {
            int x = random.nextInt(IMG_WIDTH);
            int y = random.nextInt(IMG_HEIGHT);
            int x2 = random.nextInt(IMG_WIDTH);
            int y2 = random.nextInt(IMG_HEIGHT);
            // ��������
            g.drawLine(x, y, x + x2, y + y2);
        }
        return img;
    }
}

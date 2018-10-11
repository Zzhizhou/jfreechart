import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.title.LegendTitle;
import org.jfree.data.general.DefaultPieDataset;

import javax.imageio.ImageIO;
import java.awt.*;
import java.io.File;
import java.io.IOException;

/**
 * Created by Administrator on 2018/10/9.
 */
public class TestJFreeChart {
    public static void main(String[] args) throws IOException {
        DefaultPieDataset dataset = new DefaultPieDataset();
        dataset.setValue("��Ӽ���&Ͷ�ݼ���", 10);;
        dataset.setValue("�޸ļ���������", 8);
        dataset.setValue("��¼ע��", 2);
        dataset.setValue("������������Ϣ֪ͨ", 4);
        dataset.setValue("����Ա�鿴��������������", 5);
        dataset.setValue("�ο�ȷ�����Բ�����Ա¼���ο�", 2);
        dataset.setValue("�ο͹��ܲ���ȫ�����", 1);
        //������ͼ�����������ԣ������ײ�����
        JFreeChart jFreeChart = ChartFactory.createPieChart3D("��Ŀ���ȱ�ͼ", dataset, true, false, false);
        //���ñ�����Ϊ���壬�����������
        jFreeChart.getTitle().setFont(new Font("����", Font.PLAIN, 30));
        //���õײ�����Ϊ���壬�����������
        LegendTitle lTitle = jFreeChart.getLegend();
        lTitle.setItemFont(new Font("����", Font.PLAIN, 20));
        //���û�ͼ��Ϊ���壬�����������
        PiePlot3D plot = (PiePlot3D) jFreeChart.getPlot();
        plot.setLabelFont(new Font("����", Font.PLAIN, 20));
        //���û�ͼ������ͼ
       /* plot.setBackgroundImage(ImageIO.read(new File("C:\\Users\\Administrator\\Desktop\\�ص�1.jpg")));
        jFreeChart.setBackgroundImage(ImageIO.read(new File("C:\\Users\\Administrator\\Desktop\\�ص�2.jpg")));*/
        //���ɱ�ͼ���ҵ�f��
        ChartUtilities.saveChartAsJPEG(new File("f://pie.jpg"), jFreeChart, 800, 640);
    }
}

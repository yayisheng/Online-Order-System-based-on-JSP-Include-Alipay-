<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>点餐数据可视化分析</title>
<script src="echarts.min.js"></script>
</head>
<body style="background:url(img/bg1.jpeg)">
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 1500px;height:800px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '在线点餐数据可视化'
            },
            tooltip: {},
            legend: {
                data:['销量']
            },
            xAxis: {
                data: ["炒肉滑子菇","大骨","黄瓜拉皮","酱骨架","酱猪耳","木须肉"]
            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                data: [50, 22, 31, 3, 8, 1]
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</body>
</html>
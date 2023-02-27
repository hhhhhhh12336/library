<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" >

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js" ></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js" ></script>
   	<style type="text/css" rel="sheetstyle">
   		body{
   			background: url('${pageContext.request.contextPath}/assets/image/78e32f90b51b0469e2b1481ade9a08f8.jpg') no-repeat 0/cover;
   		}
        .error{
            color: red;
            font-size: 16px;
            margin-left: 3px;
        }
        .input-wrap{
            display: flex;
            align-items: center;
            justify-content: flex-start;
        }
        .input-wrap input{
            width: 400px;
        }
   	</style>
</head>
<body>

    <%!
       // 定义最大的结果值
       private static final Integer MAX = 20;
       // 创建随机数对象
       private static final Random RANDOM = new Random();
       // 定义运算符数组 通过随机下标来确定使用+或者-
       private static final String [] SYMBOL = {"+", "-"};

    %>

    <%

        // 随机题目数量 范围为10 - 20
        int quantity = RANDOM.nextInt(10) + 10;

        // 创建题目集合
        List<Object[]> list = new ArrayList<>();

        // 通过数量作为条件遍历创建题目
        for (int i = 0; i < quantity; i++) {
            String rd = SYMBOL[RANDOM.nextInt(2)];

            // 生成第一个数字 范围为2 - 20
            int first = RANDOM.nextInt(MAX - 2) + 2;

            int second = 0;
            int answer = 0;

            switch (rd) {
                // 加法运算结果不大于20
                case "+": {
                    second = RANDOM.nextInt(MAX - first);
                    answer = first + second;
                    break;
                }
                //减法运算结果不小于0
                case "-": {
                    second = RANDOM.nextInt(first);
                    answer = first - second;
                    break;
                }
//                //减法运算不大于20
//                case "*": {
//                    second = RANDOM.nextInt(MAX / first);
//                    answer = first * second;
//                    break;
//                }
//                //除法运算不小于0
//                case "/": {
//                    List<Integer> list1 = new ArrayList<>();
//                    for (int j = 1; j <= first; j++) {
//                        if (first % j == 0){
//                            list1.add(j);
//                        }
//                    }
//                    int index = RANDOM.nextInt(list1.size());
//                    second = list1.get(index);
//                    answer = first / second;
//                    break;
//                }
            }
            // 将运算信息存入 题目数组中 再将数组存入集合 一个Object[] 相当于一个数组
            Object [] objects = new Object[4];
            objects[0] = first;
            objects[1] = rd;
            objects[2] = second;
            objects[3] = answer;

            list.add(objects);

        }

        request.setAttribute("list", list);

    %>


    <div class="container">
        <form action="" onsubmit="return answer(this)" id="data-form">
            <%--通过jstl表达式 forEach 遍历渲染 题目--%>
            <c:forEach items="${list}" var="item" varStatus="sts">
                <h2>
                    <p>第${sts.index + 1}道题</p>
                    <c:forEach items="${item}" var="el" varStatus="status">
                        <c:if test="${!status.last}">
                            ${el}
                        </c:if>
                    </c:forEach>
                    =
                    <input type="hidden" name="answer${sts.index}" value="${item[3]}">
                    <div class="input-wrap">
                        <input type="number" name="answerOwn${sts.index}" class="form-control" step="1" >
                    </div>
                </h2>
            </c:forEach>
            <input type="submit" class="btn">
        </form>

        <%--输出 答题结果--%>
        <div class="result-wrap">

        </div>

    </div>


    <script type="text/javascript"  >

        function answer(e){
            const value = 10
            let score = 0
            let arr =  $(e).serializeArray()
            let errorArr = []
            arr.forEach(function(item, idx){
                if (idx % 2 === 0){
                    if (item.value === arr[idx + 1].value){
                        score += value
                    }else {
                        errorArr.push({
                            name: idx / 2 + 1,
                            value: item.value
                        })
                    }
                }
            })
            $('.result-wrap').html('')
            .append('<p>您的分数为：' + score + '，每道题' + value + '分</p>')
            $('#data-form h2').each((index, item) =>{
                let find = errorArr.find(el => el.name === index + 1)
                let error = $(item).find('p.error')
                console.log(error.length)
                if (find){
                    if (error.length){
                        error.text('第' + find.name + '道题错误，正确答案为' + find.value)
                    }else {
                        $('.input-wrap').append('<p class="error">第' + find.name + '道题错误，正确答案为' + find.value + '</p>')
                    }
                }else {
                    error.length && error.remove()
                }
            })

            return false
        }

    </script>

</body>
</html>

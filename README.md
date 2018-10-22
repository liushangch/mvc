# 后端框架
|序号|框架|版本|
|:-:|-|:-:|
|1|Spring MVC|4.3.9.RELEASE|
|2|Hiberante Validator|4.3.2.Final|
|3|Fastjson|1.2.43|
|4|||
|5|||
|6|||
|7|||
|8|||
|9|||
|10|||
# 前端框架
|序号|框架|版本|
|:-:|-|:-:|
|1|jQuery|3.2.1|
|1|jQueryUI|1.12.1|
|2|Bootstrap|3.3.7|
|3|BootstrapValidator|-|
|4|layer|-|
|5|ladda|-|
||wysihtml|-|
||bootstrap-datepicker|1.6.4|
||Font-Awesome|4.7.0|
||ionicons|2.0.1|
||||
||||
||||
||||
||||
||||
||||
||||
||||
||||
||||


大标题
========== 
中标题
----------
# 一级标题  
## 二级标题  
### 三级标题  
#### 四级标题  
##### 五级标题  
###### 六级标题  

[百度][baidu]
![美女1][tp1]
[![美女2][tp2]][baidu]

***加粗斜体***
**加粗**
*斜体*

可以回车换行  

``醒目``
```java
public class Test{
    public static void main(String[] args){
            int a = 0;
            System.out.println(a);
        }
}
```
### Maven配置引用
```xml
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <groupId>ceremony</groupId>
    <artifactId>ceremony</artifactId>
    <packaging>war</packaging>
    <version>1.0-SNAPSHOT</version>
    <name>ceremony Maven Webapp</name>
    <url>http://maven.apache.org</url>

    <!-- 版本号 -->
    <properties>
        <spring.version>4.3.9.RELEASE</spring.version>
        <slf4j.version>1.7.25</slf4j.version>
        <aspectj.version>1.7.2</aspectj.version>
        <jackson.version>2.9.0</jackson.version>
    </properties>

    <dependencies>
        <!-- spring依赖关系 -->
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-test</artifactId>
            <version>${spring.version}</version>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-jdbc</artifactId>
            <version>${spring.version}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-webmvc</artifactId>
            <version>${spring.version}</version>
        </dependency>
        <!-- sqlite-jdbc -->
        <dependency>
            <groupId>org.xerial</groupId>
            <artifactId>sqlite-jdbc</artifactId>
            <version>3.20.0</version>
        </dependency>
        <!-- mybatis -->
        <dependency>
            <groupId>org.mybatis</groupId>
            <artifactId>mybatis</artifactId>
            <version>3.4.5</version>
        </dependency>
        <dependency>
            <groupId>org.mybatis</groupId>
            <artifactId>mybatis-spring</artifactId>
            <version>1.3.1</version>
        </dependency>
        <!-- servlet -->
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>javax.servlet-api</artifactId>
            <version>3.0.1</version>
        </dependency>
        <!-- jackson,springMVC对象转换成json -->
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-databind</artifactId>
            <version>${jackson.version}</version>
        </dependency>
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-core</artifactId>
            <version>${jackson.version}</version>
        </dependency>
        <!-- junit测试包 -->
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.12</version>
            <scope>test</scope>
        </dependency>
        <!-- slf4j日志框架 -->
        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>slf4j-log4j12</artifactId>
            <version>${slf4j.version}</version>
        </dependency>
        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>slf4j-api</artifactId>
            <version>${slf4j.version}</version>
        </dependency>
        <!-- 读配置文件 -->
        <dependency>
            <groupId>commons-configuration</groupId>
            <artifactId>commons-configuration</artifactId>
            <version>1.10</version>
        </dependency>
        <!-- 处理常用的编码方法的工具类包 -->
        <dependency>
            <groupId>commons-codec</groupId>
            <artifactId>commons-codec</artifactId>
            <version>1.10</version>
        </dependency>
        <!-- dom4j处理xml -->
        <dependency>
            <groupId>dom4j</groupId>
            <artifactId>dom4j</artifactId>
            <version>1.6.1</version>
        </dependency>
        <!-- c3p0数据库连接池 -->
        <dependency>
            <groupId>com.mchange</groupId>
            <artifactId>c3p0</artifactId>
            <version>0.9.5.2</version>
        </dependency>
        <!--spring和c3p0整合相关包-->
        <dependency>
            <groupId>org.aspectj</groupId>
            <artifactId>aspectjweaver</artifactId>
            <version>${aspectj.version}</version>
        </dependency>
    </dependencies>
    <build>
        <finalName>ceremony</finalName>
    </build>
</project>
```

```diff
+ 鸟宿池边树，僧敲月下门
- 鸟宿池边树，僧推月下门
```
- 1
    - 1.1
        - 1.1.1
        - 1.1.2
- 2
- 3

1. 呵呵
    1. 原来如此
        1. 学习了
2. 嘿嘿
3. 哈哈

- [x] 需求分析
- [x] 系统设计
- [x] 详细设计
- [ ] 编码
- [ ] 测试
- [ ] 交付

|表头|测试|
| ---------- | -----------|
|32|3|
|2222222222222|22|
|222222222|33|

>数据结构
>>树
>>>二叉树
>>>>平衡二叉树
>>>>>满二叉树




# ceremony

法会信息收集和展示页面
## 系统架构
spring-test<br>
spring-jdbc<br>
spring-webmvc<br>

[百度](https://www.baidu.com/ "百度")


    fdsfs
    fsdfsd
fsdfds<br>


[回到顶部](#readme)
[大标题](#大标题)


[tp1]:https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1504694886207&di=1bfb0e4d2fda6ef38ec50ed43a4d13d6&imgtype=0&src=http%3A%2F%2Fwww.pp3.cn%2Fuploads%2F201410%2F2014102406.jpg "美女"
[tp2]:https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1504695061256&di=4af4796e5b5857929e93c01bc3302e86&imgtype=0&src=http%3A%2F%2Fiphone.tgbus.com%2FUploadFiles%2F201410%2F2014102209460144.jpg "美女"
[baidu]:https://www.baidu.com/ "百度"
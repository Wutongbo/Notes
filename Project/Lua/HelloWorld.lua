--类型打印
print("Hello world!")

print(type("Hello world"))

print(type(true))

print(type(print))

print(type(10.4*3))

print(type(type))

print(type(nil))

--nil比较要带双引号
print(type(x) == "nil")

--[[]] --包含字符串
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>]]

print(html)

--数字字符串进行算术运算会被当成数字运算
print("2" + "6")

--字符串连接符..
print(157 .. 428)

--#原来计算字符串长度
len = "www.runoob.com"
print(#len)

print(#"www.runoob.com")

--表操作
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end

--以1为初始索引
local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("Key", key,"value",val)
end

--长度自增
a3 = {}
for i = 1, 10 do
    a3[i] = i
end
a3["key"] = "val"
print(a3["key"])
print(a3["none"])

--函数存储在变量中
function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))

--匿名函数
function testFun(tab,fun)
    for k ,v in pairs(tab) do
        print(fun(k,v));
    end
end


tab={key1="val1",key2="val2"};
testFun(tab,
function(key,val)--匿名函数
    return key.."="..val;
end
);
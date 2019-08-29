# 一个 dockerfile 的开头必须总是导入基本镜像
# 我们使用关键词 'FROM' 来导入
# 在这个例子中，我们导入python镜像
# 所以我们使用python作为镜像名称，latest为版本
FROM python:latest

# 为了运行我们的python代码，我们必须将它导入我们的镜像
# 我们可以使用关键词 'COPY'来做这件事
# 第一个参数 'main.py' 是主机上的python文件的文件名
# 第二个参数 '/' 是镜像上放置该文件的路径
# 我们将python文件放在镜像的根目录
COPY main.py /

# 我们需要定义容器运行时需要执行的命令
# 使用关键词'CMD'来做这件事
# 以下命令执行 "python ./main.py"
CMD [ 
"python"
, 
"./main.py"
 ]
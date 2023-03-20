# 使用官方 Python 3.9 镜像作为基础镜像
FROM python:3.9

# 将工作目录切换到 /app
WORKDIR /app

# 复制项目依赖列表并安装
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 将应用程序代码复制到容器中
COPY . .

# 暴露端口号 8000
EXPOSE 8000

# 在容器中运行 Gunicorn 服务器
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]

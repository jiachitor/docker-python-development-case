FROM python:3.6

# ADD 与 COPY 的区别
# 总体来说 ADD 和 COPY 都是添加文件的操作，其中 ADD 比 COPY 功能更多，ADD 允许后面的参数为 URL，还有 ADD 添加的文件为压缩包的话，它将自动解压。

RUN mkdir -p /app
WORKDIR /app
ADD . /app/web

ADD requirements.txt requirements.txt  
RUN pip3 install -r requirements.txt  

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh && \
    chmod +x /app/web/pymonitor.py

EXPOSE 80
ENTRYPOINT ["docker-entrypoint.sh"]  
# CMD python3 /app/web/myhttpserver.py
# CMD ["bash"]  
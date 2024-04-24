FROM jupyter/datascience-notebook
WORKDIR /app
COPY . /app
RUN pip install numpy
RUN pip install pandas
RUN pip install matplotlib
EXPOSE 8888
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
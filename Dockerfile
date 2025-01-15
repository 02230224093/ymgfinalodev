# Ubuntu 24.04 tabanlı bir imaj kullandım.
FROM ubuntu:24.04

# Python 3 ve pip'i kurdum.
RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

# Çalışma dizinini ayarlamak için;
WORKDIR /app

# Uygulama dosyalarını kopyalamak için;
COPY requirements.txt .

# Sanal ortam oluşturmak için;
RUN python3 -m venv venv

# Sanal ortamı aktif hale getirdim ve pip ile bağımlılıkları yükledim
RUN . venv/bin/activate && pip install --no-cache-dir -r requirements.txt

# Uygulama dosyalarını kopyalamak için;
COPY . .

# Portu belirlemek;
EXPOSE 5000

# ENTRYPOINT ile uygulama başlatıyorum
ENTRYPOINT ["/app/venv/bin/python", "app.py"]
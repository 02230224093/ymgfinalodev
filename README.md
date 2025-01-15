Docker ile Flask Uygulaması Yapımı
Bu proje, Docker kullanarak bir Flask uygulaması oluşturmayı gösteriyor. Flask, Python ile yapılan basit web uygulamaları için bir framework. Bu projede, Docker ile Python ortamı kurup, Flask ile bir web servisi başlatıyoruz.

Adımlar
Proje Dosyaları

app.py: Flask ile yazılmış basit bir uygulama.
docker-compose.yaml: Docker Compose dosyası. Birden fazla servisi yönetmek için kullanılıyor.
Dockerfile: Docker imajını oluşturmak için kullanılan dosya.
requirements.txt: Flask bağımlılığı burada belirtiliyor.
Flask Uygulaması
app.py dosyasında basit bir Flask uygulaması yazdım. Bu uygulama, 5000 portunda çalışacak ve tarayıcıya "Merhaba, Docker ile çalışan bir Python uygulaması!" mesajını gösterecek.

Bağımlılıkları Belirlemek
Flask’ı yüklemek için requirements.txt dosyasına ekledim.

Dockerfile
Dockerfile, Flask uygulamasını çalıştıracak ortamı hazırlıyor. ENTRYPOINT komutu ile uygulamanın başlatılmasını sağlıyoruz.

Docker Compose
docker-compose.yaml dosyası ile uygulamayı kolayca başlatabiliyoruz. Bu dosya, Docker konteyneri için port eşleme ve dizin bağlama işlemlerini yapıyor.

Uygulama Çalıştırma

İlk olarak Docker imajını oluşturuyoruz:
docker build -t python-ubuntu-app .
Sonra konteynerı başlatıyoruz:
docker run -p 5000:5000 python-ubuntu-app
Erişim
Uygulama çalıştığında, tarayıcıda http://localhost:5000 adresine giderek uygulamayı görebilirsiniz.

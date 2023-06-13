<h1 align="center">Job Challenge</h1>
<p align="center"><img src="./challenge.png"/></p>

**Ushbu topshiriqlar yarkamarkada intervyuda g'o'lib bo'lgan va saralab olingan nomzodlar uchun tayyorlangan. Topshiriqlar ishga olish jarayoni uchun oxirgi bosqich hisoblanadi. Ya'ni nomzodning ishga olinish yoki olinmasligi topshiriq natijalariga bog'liq.**

> Topshiriqlarni rus tilida o'qish uchun quyidagi [havolaga](./README_RU.md) o'ting.

## Yo'nalishlar

- Veb dasturlash
- Dasturiy ta'minot muhandisligi
- Tarmoqlar

## Topshiriqlarni tugatish muddati
Topshiriq yuklangan github repositoriyasi havolasi 20-iyun 23:59ga qadar Uzinfocom <a href="https://github.com/uzinfocom-org/challenge/discussions">Github muhokama</a>sining General bo'limiga joylanishi kerak.

## Eslatma

Topshiriqlarni bajarish davomida yordamchi ChatBOT'lardan (ChatGPT, Bing) foydalanish taqiqlanadi. Yechimni o'z bilimlaringizga tayangan holda yechishingiz lozim. Qanchalik rasvo yechim bo'lmasin, o'zingiz yozgan kodlar sizga yaxshiroq natija olib kelish ehtimolini oshiradi.

### Veb dasturlash

Ushbu yo'nalishda sizdan hech qanday frameworklarsiz API servisi uchun MVC yasash talab qilinadi. Bunga ko'ra servisdagi vazifalar alohida modellarga bo'lishi va controllerlar orqali routerlarga asoslanib endpointlar boshqarilishi lozim.

Shuningdek servis uchun ma'lumotlar bazasi bilan ishlay olish imkoni ham talab etiladi. Ma'lumotlar bazasi adaptori sifatida esa o'zingizga qulay bo'lgan texnologiyalardan foydalanishingiz mumkin.

Routerlarda GET, POST, PUT, DELETE so'rovlarni alohida ishlata olish va avtorizatsiyalar qo'shilda nur ustiga a'lon nur bo'ladi.

**Yordamchi resurslar:**

- https://drogonframework.github.io/drogon-docs/#/
- https://github.com/ipkn/crow
- https://oatpp.io/docs/start/
- https://github.com/cutelyst/cutelyst/wiki

## Dasturiy ta'minot muhandisligi

Desktop platformalari uchun QtC++ frameworkidan foydalangan holda biror dastur yarating. Asosiy navbatda dastur multiplatform uchun javob bersin, ya'ni bir vaqtning o'zida windows, linux va macos apilaridan foydalansin. Shuningdek tarmoqga ulana olsa va yuqoridagi veb dastur bilan integratsiya qilinsa siz uchun yanada foydali baho olib kelishi mumkin.

**Yordamchi resurslar:**

- https://doc.qt.io
- https://doc.qt.io/qt-6/json.html

## Tarmoqlar

Lokal tarmoq doirasida rel vaqtda ishlaydigan xabar almashini dasturini yozing. Dasturda server va mijoz qismlari bo'lsin. Shuningdek dastur tuzish uchun frameworklardan foydalanmagan holda faqatgina winsock2.h, sys/socket.h tizim apilaridan foydalanish lozim. Ilovani grafik yoki konsol rejimida tayyorlash va istalgan operatsion tizimdan foydalanish mumkin. 

Server uchun qo'yiladigan talablar: 

- Server qismi TCP/IP protokoli yordamida bir nechta mijozlardan ulanishlarni qabul qilishi kerak;
- Real vaqt rejimida ekranda barcha ulangan mijozlarning IP manzillari ro'yxatini ko'rsatish;
- Bitta mijozdan kelgan xabarlar barcha ulangan mijozlarga yuborilishi kerak.

Mijoz qismi uchun qo'yiladigan talablar:

- TCP/IP protokoli orqali serverga ulanish;
- Matnli xabarlarni yuborish, qabul qilish va ko‘rsatish.

Qo'shimcha ravishda:

Har qanday qo'shimcha funksiyalar, masalan, grafik interfeysning mavjudligi, foydalanuvchi avtorizatsiyasi, ma'lumotlar bazasida xabarlar jurnalini saqlash, shifrlashdan foydalanish va boshqalar. Dasturchining ixtiyoriga ko'ra amalga oshirilishi mumkin va test punkti natijalarini ko'rib chiqishda qo'shimcha baholanishga sabab bo'ladi.

Malumot ma'lumotlari:

https://www.binarytides.com/socket-programming-c-linux-tutorial/

https://www.binarytides.com/winsock-socket-programming-tutorial/

<p align="center"><b>Ushbu berilgan topshiriqlarni bajarib bo'lgach, o'z GitHub profilingizga loyihalarni yuklab bizning <a href="https://github.com/uzinfocom-org/challenge/discussions">github sahifamiz</a>da bo'lishishingiz mumkin!</b></p>

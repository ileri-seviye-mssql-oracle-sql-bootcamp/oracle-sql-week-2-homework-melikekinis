-- Kotasi limitsiz olan ürünler hangileridir? ----Telco semasi için

SELECT * 
FROM 
    telco.product
WHERE product.quota = 'LIMITLESS';

-- Statüsü 'Initial' olan müsterileri bulunuz. ----Telco semasi için

SELECT *
FROM 
    telco.customer
WHERE customer.status = 'INITIAL';

-- Sehir bilgisi 'ISTANBUL' olan adresleri bulunuz. ----Telco semasi için

SELECT *
FROM 
    telco.address
WHERE address.city LIKE '%tanbu%';

-- Birim fiyati 150'den büyük olan order_itemlari bulunuz. ----Sales semasi için

SELECT *
FROM 
    sales.order_items
WHERE order_items.unit_price > 150



-- Ise alim tarihi Mayis 2016 olan çalisanlari bulunuz. ----Sales semasi için

SELECT * 
FROM 
    sales.employees
WHERE hire_date BETWEEN TO_DATE('01/05/2016', 'DD/MM/YYYY') 
    AND TO_DATE('31/05/2016', 'DD/MM/YYYY');

-- Adi Charlie ya da Charlsie olan contactlari bulunuz. ----Sales semasi için

SELECT * 
FROM 
    sales.contacts
WHERE contacts.first_name = 'Charlie' 
    OR contacts.first_name = 'Charlsie';

--Yilin 4. aylarinda en çok hangi amaçla kredi çekilmi?tir? ----Banking semasi için

-- LIMIT veya ROWNUM kullanmak istemedim çünkü ayni sayida çekilmis iki farkli kredi olabilirdi.


SELECT * 
FROM 
    (
    SELECT 
        purpose,
        quantity_of_purpose,
        DENSE_RANK() OVER( ORDER BY quantity_of_purpose DESC) highest_loans_purpose
    FROM 
        (
        SELECT loans.purpose, COUNT(*) AS quantity_of_purpose     
        FROM 
            banking.loans
        WHERE loans.month = 4
        GROUP BY loans.purpose) A ) 
WHERE highest_loans_purpose = 1

     


-- Adet sayisi 10dan büyük 50den küçük envanterleri bulunuz. ----Sales semasi için

SELECT *
FROM 
    sales.inventories
WHERE quantity BETWEEN 10 AND 50;

-- Birincil iletisim bilgisi olmayan telefon numaralarini bulunuz. ----Telco semasi için

SELECT *
FROM 
    telco.contact
WHERE contact.is_primary < 1;

-- Bir sipariste toplam 100.0000'den fazla ücret ödeyen emirler nedir? ----Sales semasi için

--emir ile ne kastedildigini anlayamadim ve bu yüzden order_id'yi select'e koydum.

SELECT 
    order_items.order_id, 
    SUM(order_items.quantity * order_items.unit_price)
FROM 
    sales.order_items
GROUP BY order_items.order_id
HAVING SUM(order_items.quantity*order_items.unit_price) > 100000



-- Bankanin 50 ve ya 51 yasinda kadin müsterilerinden ayni isme sahip olan müsterisi/müsterileri var mi? Varsa isimleri neler?----Banking semasi için

SELECT 
    clients.first
FROM 
    banking.clients
WHERE clients.sex = 'Female' 
    AND (age = 50 OR age = 51)
GROUP BY clients.first
HAVING COUNT(*) > 1


-- Hesap ödeme sekli nakit olmayan hesaplar hangileridir? ----Telco semasi için

SELECT *
FROM 
    telco.account
WHERE account.payment_type <> 'CASH' OR account.payment_type IS NULL;

--ya da 

SELECT *
FROM 
    telco.account
WHERE NVL(account.payment_type,'Bos') <> 'CASH';


-- Statüsü deaktif olan müsterilerin baglanti kesim tarihleri nedir? ----Telco semasi için

SELECT 
    customer.disconnection_date
FROM 
    telco.customer 
WHERE customer.status = 'DEACTIVE';

-- Manager'i olmayan çalisanlar hangileridir? ----Sales semasi için

SELECT
    e.first_name || ' ' || e.last_name employee,
    m .first_name || ' ' || m.last_name manager
FROM
    sales.employees e
LEFT JOIN sales.employees m ON m.employee_id = e.manager_id
WHERE e.manager_id IS NULL;
    

-- State bilgisi bos olan lokasyonlari bulunuz.----Sales semasi için

SELECT *
FROM
    sales.locations
WHERE locations.state IS NULL;

-- Hesap kapanis tarihi dolu olan hesaplari bulunuz. ----Telco semasi için

SELECT 
    account.account_closing_date
FROM 
    telco.account
WHERE account.account_closing_date IS NOT NULL;

-- Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? ----Telco semasi için

SELECT *
FROM 
    telco.account
WHERE account.e_bill_email IS NOT NULL;

-- Durumu iptal olan ve saticilari olmayan emirler hangileridir? ----Sales semasi için

SELECT *
FROM 
    sales.orders
WHERE orders.status = 'Canceled' 
    AND orders.salesman_id IS NULL;

-- Sözlesme bitis tarihi 1 Ocak 2000'den büyük , 1 Ocak 2005'ten küçük olan sözlesmeleri bulunuz. ----Telco semasi için

SELECT *
FROM 
    telco.agreement
WHERE agreement.commitment_end_date > TO_DATE('01/01/2000', 'MM/DD/YYYY') 
    AND agreement.commitment_end_date < TO_DATE('01/01/2005', 'MM/DD/YYYY');
    

-- Ocak 2016 ile Haziran 2016 arasinda verilen siparisler hangileridir? ----Sales semasi için

SELECT *
FROM 
    sales.orders
WHERE orders.order_date BETWEEN TO_DATE('01/01/2016', 'DD/MM/YYYY') 
    AND TO_DATE('30/06/2016', 'DD/MM/YYYY');
   


-- 2005 yilindan önce yapilan ve hala aktif olan subscriptionlar hangileridir? ----Telco semasi için

SELECT * 
FROM 
    telco.subscription
where subscription.status = 'ACTIVE' and subscription.activation_date < TO_DATE('01/01/2005', 'MM/DD/YYYY');

-- Sözlesme baslangiç tarihi Ocak 2010'dan büyük olan sözlesmeleri bulunuz. ----Telco semasi için

SELECT *
FROM 
    telco.agreement 
WHERE agreement.commitment_start_date > TO_DATE('01/01/2010', 'MM/DD/YYYY');

-- Ismi E ile baslayan müsterileri bulunuz. ----Telco semasi için

SELECT *
FROM 
    telco.customer
WHERE customer.name LIKE 'E%';

-- Product tipi 'DSL' ile biten ürünleri bulunuz. ----Telco semasi için

SELECT *
FROM 
    telco.product
WHERE product.product_type LIKE '%DSL';

-- Unvani 'S' ile baslamayan çalisanlari bulunuz. ----Sales semasi için

SELECT *
FROM
    sales.employees
WHERE employees.job_title NOT LIKE 'S%';

-- Herhangi bir çesit Intel Xeon ürünler hangileridir? ----Sales semasi için

SELECT *
FROM
    sales.products
WHERE products.product_name LIKE '%Intel Xeon%';



-- Isminde ya da soyisminde 'ü' harfi geçen müsteriler hangileridir? ----Telco semasi için

SELECT *
FROM 
    telco.customer
WHERE customer.name LIKE '%ü%' OR customer.surname LIKE '%ü%';

-- Ismi 'C' ile baslayan kontaklar hangileridir? Soyadina göre alfabetik sira ile siralayalim. ----Sales semasi için

SELECT *
FROM
    sales.contacts
WHERE contacts.first_name LIKE 'C%'
ORDER BY contacts.last_name ASC;
    

-- Ürün adi 'Asus' ile baslayan ve liste fiyati standart ücretinden küçük olan ürünleri bulunuz. ----Sales semasi için

SELECT *
FROM
    sales.products
WHERE products.product_name LIKE 'Asus%' 
    AND products.list_price < products.standard_cost;

-- Ülke kodu UK ve AU olan adresleri bulunuz.----Telco semasi için

SELECT *
FROM 
    telco.address
WHERE address.country_cd IN ('UK','AU');

-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. ----Sales semasi için

SELECT  
    P.product_id,    
    P.product_name, 
    P.description, 
    P.standard_cost,
    P.list_price,
    P.category_id,
    PC.category_name 
FROM 
    products P
INNER JOIN product_categories PC 
    ON P.category_id = PC.category_id
WHERE P.category_id IN (1, 2, 4, 5);



-- Taahhüt süresi 240 ve 120 ay olan bütün sözlesmeleri bulmak istiyoruz.----Telco semasi için

SELECT *
FROM 
    telco.agreement
WHERE agreement.commitment_duration IN ('120 MONTHS', '240 MONTHS');

-- Siparis durumu 'Shipped'den farkli olan müsterilerin bilgilerini bulunuz. ----Sales semasi için

SELECT *
FROM 
    sales.orders
WHERE orders.status <> 'Shipped';

-- Adet sayisi 100e esit olan envanterlerin product bilgisini bulunuz. ----Sales semasi için

SELECT *
FROM 
    sales.products P
INNER JOIN sales.inventories I ON
    P.product_id = I.product_id
WHERE I.quantity = 100;


-- Sözlesme alt tipi MAIN olan kaç tane sözlesme vardir?----Telco semasi için

SELECT COUNT(*)
FROM 
    telco.agreement
WHERE agreement.subtype = 'MAIN'; --38 tane.



-- Deaktif müsterilerin sayisini bulunuz.----Telco semasi için

SELECT COUNT(*)
FROM 
    telco.customer
WHERE customer.status = 'DEACTIVE'; -- 3 tane.

-- Beijing (8 numarali warehouse)'da kaç farkli envanter vardir? ----Sales semasi için

SELECT *
FROM sales.warehouses W
INNER JOIN sales.inventories I 
    ON W.warehouse_id = I.warehouse_id
WHERE W.warehouse_id = 8




-- Iletisim tipi olarak email ve statusu kullanimda olan kaç müsteri var?----Telco semasi için

SELECT * 
FROM 
    telco.contact
WHERE contact.cnt_type = 'EMAIL' 
    AND contact.status = 'USED'

-- Liste fiyati 1000 ile 3000 arasinda olan kaç product var?----Sales semasi için

SELECT *
FROM 
    sales.products
WHERE products.list_price BETWEEN 1000 AND 3000;

--Hangi yillarda kaç hesap açilmistir?----Banking semasi için

SELECT 
    accounts.year, 
    COUNT(accounts.account_id) 
FROM 
    banking.accounts
GROUP BY accounts.year;

-- Islemlerin tiplerine göre toplam sayilarinin büyükten küçüge siralamasi nedir?----Banking semasi için

SELECT 
    transactions.type, 
    COUNT(*) total_number_types
FROM
    banking.transactions
GROUP BY transactions.type
ORDER BY total_number_types DESC;



-- Islemlerin tiplerine göre toplam tutarlarinin büyükten küçüge siralamasi nedir?----Banking semasi için

SELECT 
    transactions.type, 
    SUM(transactions.amount)  total_amount
FROM
    banking.transactions
GROUP BY transactions.type
ORDER BY total_amount DESC;



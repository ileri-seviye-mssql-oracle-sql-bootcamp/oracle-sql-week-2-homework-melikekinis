-- Kotasi limitsiz olan �r�nler hangileridir? ----Telco semasi i�in

SELECT * 
FROM 
    telco.product
WHERE product.quota = 'LIMITLESS';

-- Stat�s� 'Initial' olan m�sterileri bulunuz. ----Telco semasi i�in

SELECT *
FROM 
    telco.customer
WHERE customer.status = 'INITIAL';

-- Sehir bilgisi 'ISTANBUL' olan adresleri bulunuz. ----Telco semasi i�in

SELECT *
FROM 
    telco.address
WHERE address.city LIKE '%tanbu%';

-- Birim fiyati 150'den b�y�k olan order_itemlari bulunuz. ----Sales semasi i�in

SELECT *
FROM 
    sales.order_items
WHERE order_items.unit_price > 150



-- Ise alim tarihi Mayis 2016 olan �alisanlari bulunuz. ----Sales semasi i�in

SELECT * 
FROM 
    sales.employees
WHERE hire_date BETWEEN TO_DATE('01/05/2016', 'DD/MM/YYYY') 
    AND TO_DATE('31/05/2016', 'DD/MM/YYYY');

-- Adi Charlie ya da Charlsie olan contactlari bulunuz. ----Sales semasi i�in

SELECT * 
FROM 
    sales.contacts
WHERE contacts.first_name = 'Charlie' 
    OR contacts.first_name = 'Charlsie';

--Yilin 4. aylarinda en �ok hangi ama�la kredi �ekilmi?tir? ----Banking semasi i�in

-- LIMIT veya ROWNUM kullanmak istemedim ��nk� ayni sayida �ekilmis iki farkli kredi olabilirdi.


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

     


-- Adet sayisi 10dan b�y�k 50den k���k envanterleri bulunuz. ----Sales semasi i�in

SELECT *
FROM 
    sales.inventories
WHERE quantity BETWEEN 10 AND 50;

-- Birincil iletisim bilgisi olmayan telefon numaralarini bulunuz. ----Telco semasi i�in

SELECT *
FROM 
    telco.contact
WHERE contact.is_primary < 1;

-- Bir sipariste toplam 100.0000'den fazla �cret �deyen emirler nedir? ----Sales semasi i�in

--emir ile ne kastedildigini anlayamadim ve bu y�zden order_id'yi select'e koydum.

SELECT 
    order_items.order_id, 
    SUM(order_items.quantity * order_items.unit_price)
FROM 
    sales.order_items
GROUP BY order_items.order_id
HAVING SUM(order_items.quantity*order_items.unit_price) > 100000



-- Bankanin 50 ve ya 51 yasinda kadin m�sterilerinden ayni isme sahip olan m�sterisi/m�sterileri var mi? Varsa isimleri neler?----Banking semasi i�in

SELECT 
    clients.first
FROM 
    banking.clients
WHERE clients.sex = 'Female' 
    AND (age = 50 OR age = 51)
GROUP BY clients.first
HAVING COUNT(*) > 1


-- Hesap �deme sekli nakit olmayan hesaplar hangileridir? ----Telco semasi i�in

SELECT *
FROM 
    telco.account
WHERE account.payment_type <> 'CASH' OR account.payment_type IS NULL;

--ya da 

SELECT *
FROM 
    telco.account
WHERE NVL(account.payment_type,'Bos') <> 'CASH';


-- Stat�s� deaktif olan m�sterilerin baglanti kesim tarihleri nedir? ----Telco semasi i�in

SELECT 
    customer.disconnection_date
FROM 
    telco.customer 
WHERE customer.status = 'DEACTIVE';

-- Manager'i olmayan �alisanlar hangileridir? ----Sales semasi i�in

SELECT
    e.first_name || ' ' || e.last_name employee,
    m .first_name || ' ' || m.last_name manager
FROM
    sales.employees e
LEFT JOIN sales.employees m ON m.employee_id = e.manager_id
WHERE e.manager_id IS NULL;
    

-- State bilgisi bos olan lokasyonlari bulunuz.----Sales semasi i�in

SELECT *
FROM
    sales.locations
WHERE locations.state IS NULL;

-- Hesap kapanis tarihi dolu olan hesaplari bulunuz. ----Telco semasi i�in

SELECT 
    account.account_closing_date
FROM 
    telco.account
WHERE account.account_closing_date IS NOT NULL;

-- Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? ----Telco semasi i�in

SELECT *
FROM 
    telco.account
WHERE account.e_bill_email IS NOT NULL;

-- Durumu iptal olan ve saticilari olmayan emirler hangileridir? ----Sales semasi i�in

SELECT *
FROM 
    sales.orders
WHERE orders.status = 'Canceled' 
    AND orders.salesman_id IS NULL;

-- S�zlesme bitis tarihi 1 Ocak 2000'den b�y�k , 1 Ocak 2005'ten k���k olan s�zlesmeleri bulunuz. ----Telco semasi i�in

SELECT *
FROM 
    telco.agreement
WHERE agreement.commitment_end_date > TO_DATE('01/01/2000', 'MM/DD/YYYY') 
    AND agreement.commitment_end_date < TO_DATE('01/01/2005', 'MM/DD/YYYY');
    

-- Ocak 2016 ile Haziran 2016 arasinda verilen siparisler hangileridir? ----Sales semasi i�in

SELECT *
FROM 
    sales.orders
WHERE orders.order_date BETWEEN TO_DATE('01/01/2016', 'DD/MM/YYYY') 
    AND TO_DATE('30/06/2016', 'DD/MM/YYYY');
   


-- 2005 yilindan �nce yapilan ve hala aktif olan subscriptionlar hangileridir? ----Telco semasi i�in

SELECT * 
FROM 
    telco.subscription
where subscription.status = 'ACTIVE' and subscription.activation_date < TO_DATE('01/01/2005', 'MM/DD/YYYY');

-- S�zlesme baslangi� tarihi Ocak 2010'dan b�y�k olan s�zlesmeleri bulunuz. ----Telco semasi i�in

SELECT *
FROM 
    telco.agreement 
WHERE agreement.commitment_start_date > TO_DATE('01/01/2010', 'MM/DD/YYYY');

-- Ismi E ile baslayan m�sterileri bulunuz. ----Telco semasi i�in

SELECT *
FROM 
    telco.customer
WHERE customer.name LIKE 'E%';

-- Product tipi 'DSL' ile biten �r�nleri bulunuz. ----Telco semasi i�in

SELECT *
FROM 
    telco.product
WHERE product.product_type LIKE '%DSL';

-- Unvani 'S' ile baslamayan �alisanlari bulunuz. ----Sales semasi i�in

SELECT *
FROM
    sales.employees
WHERE employees.job_title NOT LIKE 'S%';

-- Herhangi bir �esit Intel Xeon �r�nler hangileridir? ----Sales semasi i�in

SELECT *
FROM
    sales.products
WHERE products.product_name LIKE '%Intel Xeon%';



-- Isminde ya da soyisminde '�' harfi ge�en m�steriler hangileridir? ----Telco semasi i�in

SELECT *
FROM 
    telco.customer
WHERE customer.name LIKE '%�%' OR customer.surname LIKE '%�%';

-- Ismi 'C' ile baslayan kontaklar hangileridir? Soyadina g�re alfabetik sira ile siralayalim. ----Sales semasi i�in

SELECT *
FROM
    sales.contacts
WHERE contacts.first_name LIKE 'C%'
ORDER BY contacts.last_name ASC;
    

-- �r�n adi 'Asus' ile baslayan ve liste fiyati standart �cretinden k���k olan �r�nleri bulunuz. ----Sales semasi i�in

SELECT *
FROM
    sales.products
WHERE products.product_name LIKE 'Asus%' 
    AND products.list_price < products.standard_cost;

-- �lke kodu UK ve AU olan adresleri bulunuz.----Telco semasi i�in

SELECT *
FROM 
    telco.address
WHERE address.country_cd IN ('UK','AU');

-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. ----Sales semasi i�in

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



-- Taahh�t s�resi 240 ve 120 ay olan b�t�n s�zlesmeleri bulmak istiyoruz.----Telco semasi i�in

SELECT *
FROM 
    telco.agreement
WHERE agreement.commitment_duration IN ('120 MONTHS', '240 MONTHS');

-- Siparis durumu 'Shipped'den farkli olan m�sterilerin bilgilerini bulunuz. ----Sales semasi i�in

SELECT *
FROM 
    sales.orders
WHERE orders.status <> 'Shipped';

-- Adet sayisi 100e esit olan envanterlerin product bilgisini bulunuz. ----Sales semasi i�in

SELECT *
FROM 
    sales.products P
INNER JOIN sales.inventories I ON
    P.product_id = I.product_id
WHERE I.quantity = 100;


-- S�zlesme alt tipi MAIN olan ka� tane s�zlesme vardir?----Telco semasi i�in

SELECT COUNT(*)
FROM 
    telco.agreement
WHERE agreement.subtype = 'MAIN'; --38 tane.



-- Deaktif m�sterilerin sayisini bulunuz.----Telco semasi i�in

SELECT COUNT(*)
FROM 
    telco.customer
WHERE customer.status = 'DEACTIVE'; -- 3 tane.

-- Beijing (8 numarali warehouse)'da ka� farkli envanter vardir? ----Sales semasi i�in

SELECT *
FROM sales.warehouses W
INNER JOIN sales.inventories I 
    ON W.warehouse_id = I.warehouse_id
WHERE W.warehouse_id = 8




-- Iletisim tipi olarak email ve statusu kullanimda olan ka� m�steri var?----Telco semasi i�in

SELECT * 
FROM 
    telco.contact
WHERE contact.cnt_type = 'EMAIL' 
    AND contact.status = 'USED'

-- Liste fiyati 1000 ile 3000 arasinda olan ka� product var?----Sales semasi i�in

SELECT *
FROM 
    sales.products
WHERE products.list_price BETWEEN 1000 AND 3000;

--Hangi yillarda ka� hesap a�ilmistir?----Banking semasi i�in

SELECT 
    accounts.year, 
    COUNT(accounts.account_id) 
FROM 
    banking.accounts
GROUP BY accounts.year;

-- Islemlerin tiplerine g�re toplam sayilarinin b�y�kten k���ge siralamasi nedir?----Banking semasi i�in

SELECT 
    transactions.type, 
    COUNT(*) total_number_types
FROM
    banking.transactions
GROUP BY transactions.type
ORDER BY total_number_types DESC;



-- Islemlerin tiplerine g�re toplam tutarlarinin b�y�kten k���ge siralamasi nedir?----Banking semasi i�in

SELECT 
    transactions.type, 
    SUM(transactions.amount)  total_amount
FROM
    banking.transactions
GROUP BY transactions.type
ORDER BY total_amount DESC;



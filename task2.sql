-- Semua transaksi yang dibuat oleh John Michael diurutkan berdasarkan nomor rekening dan tanggal transaksi.

SELECT
    T.*,
    C.CUST_FIRSTNAME || ' ' || C.CUST_LASTNAME AS FULL_NAME
FROM TRANSACTION T
    JOIN ACCOUNT A ON T.TRS_FROM_ACCOUNT = A.ACC_NUMBER
    JOIN CUSTOMER C ON A.ACC_OWNER = C.CUST_ID
WHERE
    C.CUST_FIRSTNAME = 'John'
    AND C.CUST_LASTNAME = 'Michael'
ORDER BY
    T.TRS_FROM_ACCOUNT,
    T.TRS_DATE;
-- Rekapitulasi jumlah rekening yang dimiliki setiap nasabah.

SELECT
    C.CUST_FIRSTNAME || ' ' || C.CUST_LASTNAME AS FULL_NAME,
    COUNT(A.ACC_NUMBER) AS Jumlah_Rekening
FROM CUSTOMER C
    LEFT JOIN ACCOUNT A ON C.CUST_ID = A.ACC_OWNER
GROUP BY
    C.CUST_ID,
    C.CUST_FIRSTNAME,
    C.CUST_LASTNAME;
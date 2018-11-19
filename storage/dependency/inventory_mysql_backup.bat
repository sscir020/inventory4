rem auther:www.waylau.com
rem date:20150724
rem ******MySQL backup start********
rem copy /Y f:\mysql\data\osen\*.frm f:\file_backup
rem copy /Y f:\mysql\data\osen\*.ibd f:\file_backup
rem mysql -uroot osen -e "unlock tables"

@echo off
date /t >> inventorybak.log
time /t >> inventorybak.log
echo "start inventory backup" >> inventorybak.log

mysql -uroot inventory -e "flush tables"
mysqlAdmin -uroot flush-logs
mysqldump -uroot --skip-lock-tables --single-transaction -R inventory |gzip > f:\inventoryAll%date:~0,4%%date:~5,2%%date:~8,2%.sql.gz

date /t >> inventorybak.log
time /t >> inventorybak.log
echo "finish inventory backup" >> inventorybak.log

@echo on
rem ******MySQL backup end********
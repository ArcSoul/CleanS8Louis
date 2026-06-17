Use Muonline
Go

Declare @login varchar(20),@ip varchar(20), @test int

set @test = 0
DECLARE LISTA CURSOR LOCAL FOR 
SELECT distinct(IP) FROM memb_stat where connectstat=1
OPEN LISTA 
FETCH NEXT FROM LISTA INTO @ip 
WHILE @@FETCH_STATUS = 0 
begin 
 
set @login = (select top 1 memb___id from MEMB_STAT where IP = @ip and ConnectStat=1)

update CashShopData set WCoinC = WCoinC+50, WCoinP = WCoinP+2000, GoblinPoint = GoblinPoint+5000 where AccountID = @login

print @ip
print @login

set @test = @test+1

FETCH NEXT FROM LISTA INTO @ip
end 
CLOSE LISTA 
DEALLOCATE LISTA 

print @test
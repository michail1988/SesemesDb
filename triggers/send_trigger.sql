delimiter //
CREATE TRIGGER sendSms
BEFORE DELETE ON SMS_TO_SEND
FOR EACH ROW 
BEGIN

INSERT INTO SENT_SMS (ID, FK_USER, MESSAGE, REQUESTDATE, RECEIVERS, SEND_DATE)
  VALUES(OLD.ID, OLD.FK_USER, OLD.MESSAGE, OLD.REQUESTDATE, OLD.RECEIVERS, NOW());

END//
delimiter ;
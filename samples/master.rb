# coding: utf-8

#I2C 初期化
i2c = I2C.new(22, 21)

# LCD 初期化
lcd = AQM0802A.new(i2c)
lcd.setup

# LCD に "Hello World" 表示
lcd.cursor(1, 0)
lcd.write_string("Hello!")

# i2c で直接送信
lcd.cursor(0, 1)
opcode = 0x40.chr
i2c.write(0x3e, opcode + "from ESP")
# <=> lcd.write_string("from ESP")
sleep(10)

# 適当な時間を表示
lcd.cursor(0, 0)
lcd.write_string(sprintf("%02d-%02d-%02d", 10, 30, 70))
lcd.cursor(0, 1)
lcd.write_string(sprintf("%02d:%02d:%02d", 1, 4, 9))

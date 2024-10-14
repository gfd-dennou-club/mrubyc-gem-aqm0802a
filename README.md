# mrubyc-gem-aqm0802a
mruby/c sources for aqm0802a (LCD module)

## device
https://akizukidenshi.com/catalog/g/gP-06669/

### data sheet
https://akizukidenshi.com/download/ds/xiamen/AQM0802.pdf

## sample code
LCD と RTC を使う場合の例

```ruby
#I2C 初期化
i2c = I2C.new()

# LCD 初期化
lcd = AQM0802A.new(i2c)

# LCD に "Hello World" 表示
lcd.cursor(0, 0)
lcd.write_string("Hello?!")
lcd.cursor(0, 1)
lcd.write_string("from ESP")
```

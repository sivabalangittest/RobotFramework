*** Settings ***

*** Variables ***
${best_sellers_tab}     //*[@id="home-page-tabs"]/li[2]/*[@class="blockbestsellers"]
${dress_printed_chiffon}    //*[@id="blockbestsellers"]/li[1]/div/div[1]/div/a[@title="Printed Chiffon Dress"]
${text_printed_chiffon}     Printed chiffon knee length dress with tank straps.
${menu_dressess}    //*[@id="block_top_menu"]/ul/li[2]/a[@title="Dresses"]
${menu_subcategories_casual}      //*[@id="subcategories"]/ul/li[1]/h5/a[contains(text(),"Casual Dresses")]
${icon_list}    //*[@id="list"]
${value_productprice}   //*[@id="center_column"]/ul/li/div/div/div[3]/div/div[1]/span[@class="price product-price"]
${btn_addtocart}    //*[@id="center_column"]/ul/li/div/div/div[3]/div/div[2]/a[1]/span[contains(text(),"Add to cart")]
${text_productadded}    Product successfully added to your shopping cart
${btn_proceedcheckout}  //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a/span[contains(text(),"Proceed to checkout")]
${tab_summary}      //*[@id="order_step"]/li[1]/span[contains(text(),"Summary")]
${value_itemprice}      //*[@id="product_price_3_13_0"]/span[@class="price"]
${btn_proceedtocheckout}    //*[@id="center_column"]/p[2]/a[1]/span[contains(text(),"Proceed to checkout")]
${tab_signup}    //*[@id="order_step"]/li[2]/span[contains(text(),"Sign in")]
${menu_subcategories_winter}      //*[@id="subcategories"]/ul/li[1]/h5/a[contains(text(),"Winter Dresses")]
${sign_in}      //*[@id="header"]/div[2]/div/div/nav/div[1]/a[@title="Log in to your customer account"]
${form_login}   //*[@id="login_form"]
${email_address}    //*[@id="email"]
${login_password}   //*[@id="passwd"]
${btn_signin}   //*[@id="SubmitLogin"]
${text_authentication_failed}       Authentication failed.
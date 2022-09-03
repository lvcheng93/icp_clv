# 本机搭建一个简易网站

### 0. 项目源码
当前目录下的`mysite_clv`

### 1. 安装dfx
本机环境为mac, 执行sh -ci "$(curl -fsSL https://smartcontracts.org/install.sh)"安装dfx.

### 2. 安装完成后, 创建名为mysite_clv的项目：
执行`dfx new mysite_clv --no-frontend`

### 3. 启动dfx运行环境
执行`dfx start --background`

### 4. 部署当前项目
执行`dfx deploy`

### 5. 通过candid UI测试后端greet接口
根据`dfx deploy`的返值：
```
Deployed canisters.
URLs:
  Backend canister via Candid interface:
    mysite_clv_backend: http://127.0.0.1:8000/?canisterId=r7inp-6aaaa-aaaaa-aaabq-cai&id=rrkah-fqaaa-aaaaa-aaaaq-cai
```
在浏览器访问URL，在页面进行测试。

### 6. 使用dfx测试后端greet接
```
dfx canister call mysite_clv_backend greet '("aaa")'
("Hello, aaa!")
```

### 7. 创建静态网页调用前端
创建index.html文件：
```
<html><body><h1>hello clv</h1></body></html>
```
执行`dfx deploy`进行部，执行`dfx canister id mysite_clv_frontend`获取前端canister id:
```
dfx canister id mysite_clv_frontend                 
ryjl3-tyaaa-aaaaa-aaaba-cai
```
在浏览器访问`ryjl3-tyaaa-aaaaa-aaaba-cai.localhost:8000`，看到index.html文件的内容。

### 8. 停止项目
执行`dfx stop`

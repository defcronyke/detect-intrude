# Detect Intrude  
  
Copyright (c) 2021 Jeremy Carter `<`jeremy@jeremycarter.ca`>`  
  
### A simple way to check if you maybe have some intruder in your system(s)  
  
----------  
  
## Requisites  
  
```shell
# Debian
sudo apt-get update && \
sudo apt-get install nmap bsd-mailx

# Arch
sudo pacman -Syy && \
sudo pacman -S nmap s-nail
```  
  
## Usage  
  
```shell
bash <(curl -sL https://tinyurl.com/detect-intrude) [target address (default: 0.0.0.0)]
```  


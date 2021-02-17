#!/bin/sh
#
#

echo "Firewall by Amine // CroHosting"
echo "Powered by CroHosting | contact@crogroup.fr"
echo "Ces régles bannissent un grand nombre d'IP qui sont utilisés pour des DDoS."
sleep 3 

# BAN AS14061
echo "Bannissement des IP DigitalOcean | AS14061"
sleep 2
echo "Chargement..."
sudo iptables -A INPUT -s 103.253.144.0/22 -j DROP
sudo iptables -A INPUT -s 104.131.0.0/18 -j DROP
sudo iptables -A INPUT -s 104.131.128.0/20 -j DROP
sudo iptables -A INPUT -s 104.131.144.0/20 -j DROP
sudo iptables -A INPUT -s 104.131.160.0/20 -j DROP
sudo iptables -A INPUT -s 104.131.176.0/20 -j DROP
sudo iptables -A INPUT -s 104.131.192.0/19 -j DROP	
sudo iptables -A INPUT -s 104.131.224.0/19 -j DROP	
sudo iptables -A INPUT -s 104.131.64.0/18 -j DROP	  
sudo iptables -A INPUT -s 104.236.0.0/18 -j DROP	  
sudo iptables -A INPUT -s 104.236.128.0/18 -j DROP	  
sudo iptables -A INPUT -s 104.236.192.0/18 -j DROP	  
sudo iptables -A INPUT -s 104.236.64.0/18 -j DROP  
sudo iptables -A INPUT -s 104.248.0.0/20 -j DROP	 
sudo iptables -A INPUT -s 104.248.100.0/22 -j DROP	  
sudo iptables -A INPUT -s 104.248.104.0/22 -j DROP	  
sudo iptables -A INPUT -s 104.248.108.0/22 -j DROP	  
sudo iptables -A INPUT -s 104.248.112.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.128.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.144.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.160.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.16.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.176.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.192.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.208.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.224.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.240.0/20 -j DROP
sudo iptables -A INPUT -s 104.248.32.0/20 -j DROP	
sudo iptables -A INPUT -s 104.248.48.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.64.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.80.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.96.0/22 -j DROP	  
sudo iptables -A INPUT -s 107.170.0.0/17 -j DROP	
sudo iptables -A INPUT -s 107.170.128.0/19 -j DROP	
sudo iptables -A INPUT -s 107.170.160.0/19 -j DROP
sudo iptables -A INPUT -s 107.170.192.0/18 -j DROP	  
sudo iptables -A INPUT -s 128.199.0.0/20 -j DROP	 
sudo iptables -A INPUT -s 128.199.128.0/18 -j DROP	  
sudo iptables -A INPUT -s 128.199.16.0/20 -j DROP	 
sudo iptables -A INPUT -s 128.199.192.0/18 -j DROP	  
sudo iptables -A INPUT -s 128.199.32.0/19 -j DROP	
sudo iptables -A INPUT -s 128.199.64.0/18 -j DROP	  
sudo iptables -A INPUT -s 134.122.0.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.122.112.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.122.16.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.122.32.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.122.48.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.122.64.0/20 -j DROP 	 
sudo iptables -A INPUT -s 134.122.80.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.122.96.0/20 -j DROP	  
sudo iptables -A INPUT -s 134.209.0.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.209.112.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.209.128.0/22 -j DROP	  
sudo iptables -A INPUT -s 134.209.132.0/22 -j DROP	  
sudo iptables -A INPUT -s 134.209.136.0/22 -j DROP	  
sudo iptables -A INPUT -s 134.209.140.0/22 -j DROP	  
sudo iptables -A INPUT -s 134.209.144.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.209.160.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.209.16.0/20 -j DROP	  
sudo iptables -A INPUT -s 134.209.176.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.192.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.208.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.224.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.240.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.32.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.48.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.64.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.80.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.96.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.0.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.112.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.128.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.144.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.160.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.16.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.176.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.192.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.208.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.224.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.228.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.232.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.236.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.240.0/22 -j DROP	
sudo iptables -A INPUT -s 138.197.252.0/22 -j DROP	
sudo iptables -A INPUT -s 138.197.32.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.48.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.52.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.56.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.60.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.64.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.80.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.96.0/20 -j DROP	
sudo iptables -A INPUT -s 138.68.0.0/20 -j DROP
sudo iptables -A INPUT -s 138.68.112.0/22 -j DROP	 
sudo iptables -A INPUT -s 138.68.116.0/22 -j DROP	
sudo iptables -A INPUT -s 138.68.120.0/23 -j DROP	
sudo iptables -A INPUT -s 138.68.122.0/23 -j DROP	
sudo iptables -A INPUT -s 138.68.124.0/22 -j DROP	
sudo iptables -A INPUT -s 138.68.128.0/20 -j DROP
sudo iptables -A INPUT -s 138.68.144.0/20 -j DROP
echo "100 subnet de DigitalOcean ont été ban!"
sleep 2
# BAN 
echo "Fin (Pour l'instant)"

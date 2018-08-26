.PHONY:all
all: transfer_proxy socks5_proxy

transfer_proxy:epoll.cpp transfer.cpp
	g++ -o $@ $^
socks5_proxy:epoll.cpp socks5.cpp
	g++ -o $@ $^

.PHONY:clean
clean:
	rm -rf transfer_proxy socks5_proxy

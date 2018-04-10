#!/bin/sh
wget http://apache.mirrors.tds.net/storm/apache-storm-1.2.1/apache-storm-1.2.1.tar.gz
wget http://apache.mirrors.tds.net/zookeeper/zookeeper-3.4.11/zookeeper-3.4.11.tar.gz

tar -xvf apache-storm-1.2.1.tar.gz
tar -xvf zookeeper-3.4.11.tar.gz

mkdir ./zookeeper-3.4.11/data

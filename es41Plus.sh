#!/bin/bash

grep -d skip '*' /usr/include/*

grep -d skip '*' /usr/include/* | wc -l

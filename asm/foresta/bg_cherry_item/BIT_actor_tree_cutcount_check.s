lbl_804B2414:
/* 804B2414  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 804B2418  38 60 00 00 */	li r3, 0
/* 804B241C  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 804B2420  39 40 00 00 */	li r10, 0
/* 804B2424  3C E6 00 02 */	addis r7, r6, 2
/* 804B2428  38 C0 00 00 */	li r6, 0
/* 804B242C  80 E7 60 80 */	lwz r7, 0x6080(r7)
/* 804B2430  81 27 00 00 */	lwz r9, 0(r7)
/* 804B2434  3C E9 00 01 */	addis r7, r9, 1
/* 804B2438  80 07 25 54 */	lwz r0, 0x2554(r7)
/* 804B243C  7C 09 03 A6 */	mtctr r0
/* 804B2440  2C 00 00 00 */	cmpwi r0, 0
/* 804B2444  4C 81 00 20 */	blelr 
lbl_804B2448:
/* 804B2448  7C E9 32 14 */	add r7, r9, r6
/* 804B244C  3C E7 00 01 */	addis r7, r7, 1
/* 804B2450  89 07 25 58 */	lbz r8, 0x2558(r7)
/* 804B2454  89 67 25 59 */	lbz r11, 0x2559(r7)
/* 804B2458  7D 08 07 74 */	extsb r8, r8
/* 804B245C  55 07 20 36 */	slwi r7, r8, 4
/* 804B2460  7D 6B 07 74 */	extsb r11, r11
/* 804B2464  7C 04 38 00 */	cmpw r4, r7
/* 804B2468  41 80 00 6C */	blt lbl_804B24D4
/* 804B246C  38 08 00 01 */	addi r0, r8, 1
/* 804B2470  54 00 20 36 */	slwi r0, r0, 4
/* 804B2474  7C 04 00 00 */	cmpw r4, r0
/* 804B2478  40 80 00 5C */	bge lbl_804B24D4
/* 804B247C  55 68 20 36 */	slwi r8, r11, 4
/* 804B2480  7C 05 40 00 */	cmpw r5, r8
/* 804B2484  41 80 00 50 */	blt lbl_804B24D4
/* 804B2488  38 0B 00 01 */	addi r0, r11, 1
/* 804B248C  54 00 20 36 */	slwi r0, r0, 4
/* 804B2490  7C 05 00 00 */	cmpw r5, r0
/* 804B2494  40 80 00 40 */	bge lbl_804B24D4
/* 804B2498  7C 68 28 50 */	subf r3, r8, r5
/* 804B249C  3C C9 00 01 */	addis r6, r9, 1
/* 804B24A0  55 45 40 2E */	slwi r5, r10, 8
/* 804B24A4  7C 07 20 50 */	subf r0, r7, r4
/* 804B24A8  54 63 20 36 */	slwi r3, r3, 4
/* 804B24AC  7C 86 2A 14 */	add r4, r6, r5
/* 804B24B0  7C A3 02 14 */	add r5, r3, r0
/* 804B24B4  7C A5 22 14 */	add r5, r5, r4
/* 804B24B8  88 65 21 54 */	lbz r3, 0x2154(r5)
/* 804B24BC  2C 03 00 00 */	cmpwi r3, 0
/* 804B24C0  4C 81 00 20 */	blelr 
/* 804B24C4  38 03 FF FF */	addi r0, r3, -1
/* 804B24C8  38 63 FF FF */	addi r3, r3, -1
/* 804B24CC  98 05 21 54 */	stb r0, 0x2154(r5)
/* 804B24D0  4E 80 00 20 */	blr 
lbl_804B24D4:
/* 804B24D4  39 4A 00 01 */	addi r10, r10, 1
/* 804B24D8  38 C6 00 10 */	addi r6, r6, 0x10
/* 804B24DC  42 00 FF 6C */	bdnz lbl_804B2448
/* 804B24E0  4E 80 00 20 */	blr 

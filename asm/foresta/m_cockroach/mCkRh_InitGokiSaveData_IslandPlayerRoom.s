lbl_80385420:
/* 80385420  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80385424  38 A0 00 00 */	li r5, 0
/* 80385428  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8038542C  3C C3 00 02 */	addis r6, r3, 2
/* 80385430  A0 86 61 26 */	lhz r4, 0x6126(r6)
/* 80385434  88 66 61 25 */	lbz r3, 0x6125(r6)
/* 80385438  88 06 61 23 */	lbz r0, 0x6123(r6)
/* 8038543C  98 A6 32 10 */	stb r5, 0x3210(r6)
/* 80385440  98 A6 32 11 */	stb r5, 0x3211(r6)
/* 80385444  B0 86 32 0E */	sth r4, 0x320e(r6)
/* 80385448  98 66 32 0D */	stb r3, 0x320d(r6)
/* 8038544C  98 06 32 0B */	stb r0, 0x320b(r6)
/* 80385450  4E 80 00 20 */	blr 

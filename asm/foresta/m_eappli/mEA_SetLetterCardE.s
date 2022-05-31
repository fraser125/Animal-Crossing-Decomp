lbl_8039A6C0:
/* 8039A6C0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039A6C4  2C 03 01 6F */	cmpwi r3, 0x16f
/* 8039A6C8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8039A6CC  3C A5 00 02 */	addis r5, r5, 2
/* 8039A6D0  38 80 01 6E */	li r4, 0x16e
/* 8039A6D4  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 8039A6D8  38 E5 23 E0 */	addi r7, r5, 0x23e0
/* 8039A6DC  40 80 00 08 */	bge lbl_8039A6E4
/* 8039A6E0  7C 64 1B 78 */	mr r4, r3
lbl_8039A6E4:
/* 8039A6E4  7C 80 1E 70 */	srawi r0, r4, 3
/* 8039A6E8  38 60 00 01 */	li r3, 1
/* 8039A6EC  7C A7 02 14 */	add r5, r7, r0
/* 8039A6F0  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8039A6F4  54 80 07 7E */	clrlwi r0, r4, 0x1d
/* 8039A6F8  88 85 00 04 */	lbz r4, 4(r5)
/* 8039A6FC  7C 60 00 30 */	slw r0, r3, r0
/* 8039A700  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 8039A704  7C 80 03 78 */	or r0, r4, r0
/* 8039A708  98 05 00 04 */	stb r0, 4(r5)
/* 8039A70C  3C 63 00 02 */	addis r3, r3, 2
/* 8039A710  A0 03 61 26 */	lhz r0, 0x6126(r3)
/* 8039A714  B0 07 00 00 */	sth r0, 0(r7)
/* 8039A718  88 03 61 25 */	lbz r0, 0x6125(r3)
/* 8039A71C  98 07 00 02 */	stb r0, 2(r7)
/* 8039A720  88 03 61 23 */	lbz r0, 0x6123(r3)
/* 8039A724  98 07 00 03 */	stb r0, 3(r7)
/* 8039A728  4E 80 00 20 */	blr 

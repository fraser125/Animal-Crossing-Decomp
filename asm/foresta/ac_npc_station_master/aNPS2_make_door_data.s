lbl_8057F6D8:
/* 8057F6D8  3C A0 80 6C */	lis r5, demo2_data@ha /* 0x806C0B08@ha */
/* 8057F6DC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057F6E0  39 05 0B 08 */	addi r8, r5, demo2_data@l /* 0x806C0B08@l */
/* 8057F6E4  38 E0 00 00 */	li r7, 0
/* 8057F6E8  80 C8 00 00 */	lwz r6, 0(r8)
/* 8057F6EC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8057F6F0  38 A0 00 05 */	li r5, 5
/* 8057F6F4  38 00 00 03 */	li r0, 3
/* 8057F6F8  90 C3 00 00 */	stw r6, 0(r3)
/* 8057F6FC  3C 84 00 02 */	addis r4, r4, 2
/* 8057F700  88 C8 00 04 */	lbz r6, 4(r8)
/* 8057F704  98 C3 00 04 */	stb r6, 4(r3)
/* 8057F708  88 C8 00 05 */	lbz r6, 5(r8)
/* 8057F70C  98 C3 00 05 */	stb r6, 5(r3)
/* 8057F710  A0 C8 00 06 */	lhz r6, 6(r8)
/* 8057F714  B0 C3 00 06 */	sth r6, 6(r3)
/* 8057F718  A8 C8 00 08 */	lha r6, 8(r8)
/* 8057F71C  B0 C3 00 08 */	sth r6, 8(r3)
/* 8057F720  B0 E3 00 0A */	sth r7, 0xa(r3)
/* 8057F724  A8 C8 00 0A */	lha r6, 0xa(r8)
/* 8057F728  B0 C3 00 0C */	sth r6, 0xc(r3)
/* 8057F72C  B0 E3 00 0E */	sth r7, 0xe(r3)
/* 8057F730  98 A3 00 10 */	stb r5, 0x10(r3)
/* 8057F734  98 04 61 4F */	stb r0, 0x614f(r4)
/* 8057F738  4E 80 00 20 */	blr 

lbl_805D4DA4:
/* 805D4DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D4DA8  7C 08 02 A6 */	mflr r0
/* 805D4DAC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 805D4DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D4DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D4DB8  7C 7F 1B 78 */	mr r31, r3
/* 805D4DBC  38 64 80 00 */	addi r3, r4, 0x8000 /* 0x00008000@l */
/* 805D4DC0  4B DC 11 51 */	bl chkTrigger
/* 805D4DC4  2C 03 00 00 */	cmpwi r3, 0
/* 805D4DC8  41 82 00 34 */	beq lbl_805D4DFC
/* 805D4DCC  88 1F 06 9D */	lbz r0, 0x69d(r31)
/* 805D4DD0  7C 00 00 34 */	cntlzw r0, r0
/* 805D4DD4  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 805D4DD8  98 1F 06 9D */	stb r0, 0x69d(r31)
/* 805D4DDC  88 1F 06 9D */	lbz r0, 0x69d(r31)
/* 805D4DE0  28 00 00 00 */	cmplwi r0, 0
/* 805D4DE4  40 82 00 10 */	bne lbl_805D4DF4
/* 805D4DE8  38 60 04 57 */	li r3, 0x457
/* 805D4DEC  48 05 8F 19 */	bl sAdo_SysTrgStart
/* 805D4DF0  48 00 00 0C */	b lbl_805D4DFC
lbl_805D4DF4:
/* 805D4DF4  38 60 04 56 */	li r3, 0x456
/* 805D4DF8  48 05 8F 0D */	bl sAdo_SysTrgStart
lbl_805D4DFC:
/* 805D4DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D4E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D4E04  7C 08 03 A6 */	mtlr r0
/* 805D4E08  38 21 00 10 */	addi r1, r1, 0x10
/* 805D4E0C  4E 80 00 20 */	blr 

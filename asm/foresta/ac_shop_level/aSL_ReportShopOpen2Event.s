lbl_8049FD00:
/* 8049FD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049FD04  7C 08 02 A6 */	mflr r0
/* 8049FD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049FD0C  4B F4 AA 05 */	bl mSP_ShopOpen
/* 8049FD10  4B F4 AA 01 */	bl mSP_ShopOpen
/* 8049FD14  2C 03 00 02 */	cmpwi r3, 2
/* 8049FD18  41 82 00 10 */	beq lbl_8049FD28
/* 8049FD1C  4B F4 A9 F5 */	bl mSP_ShopOpen
/* 8049FD20  2C 03 00 06 */	cmpwi r3, 6
/* 8049FD24  40 82 00 14 */	bne lbl_8049FD38
lbl_8049FD28:
/* 8049FD28  3C 60 A0 00 */	lis r3, 0xA000 /* 0xA0000003@ha */
/* 8049FD2C  38 63 00 03 */	addi r3, r3, 0x0003 /* 0xA0000003@l */
/* 8049FD30  4B EF AC 49 */	bl mEv_EventON
/* 8049FD34  48 00 00 10 */	b lbl_8049FD44
lbl_8049FD38:
/* 8049FD38  3C 60 A0 00 */	lis r3, 0xA000 /* 0xA0000003@ha */
/* 8049FD3C  38 63 00 03 */	addi r3, r3, 0x0003 /* 0xA0000003@l */
/* 8049FD40  4B EF AC 89 */	bl mEv_EventOFF
lbl_8049FD44:
/* 8049FD44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049FD48  7C 08 03 A6 */	mtlr r0
/* 8049FD4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8049FD50  4E 80 00 20 */	blr 

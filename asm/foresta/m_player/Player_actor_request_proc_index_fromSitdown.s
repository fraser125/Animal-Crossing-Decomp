lbl_804EF298:
/* 804EF298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF29C  7C 08 02 A6 */	mflr r0
/* 804EF2A0  2C 05 00 00 */	cmpwi r5, 0
/* 804EF2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF2A8  7C 80 23 78 */	mr r0, r4
/* 804EF2AC  41 82 00 14 */	beq lbl_804EF2C0
/* 804EF2B0  80 83 0D 18 */	lwz r4, 0xd18(r3)
/* 804EF2B4  7C 03 03 78 */	mr r3, r0
/* 804EF2B8  38 A0 00 15 */	li r5, 0x15
/* 804EF2BC  48 00 00 AD */	bl func_804EF368
lbl_804EF2C0:
/* 804EF2C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF2C4  7C 08 03 A6 */	mtlr r0
/* 804EF2C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF2CC  4E 80 00 20 */	blr 

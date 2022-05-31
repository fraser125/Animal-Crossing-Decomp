lbl_804AB63C:
/* 804AB63C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB640  7C 08 02 A6 */	mflr r0
/* 804AB644  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB648  38 00 00 02 */	li r0, 2
/* 804AB64C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AB650  7C 7F 1B 78 */	mr r31, r3
/* 804AB654  98 03 07 F5 */	stb r0, 0x7f5(r3)
/* 804AB658  4B FF F9 95 */	bl aTKN1_normal_wait_init
/* 804AB65C  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 804AB660  60 00 00 14 */	ori r0, r0, 0x14
/* 804AB664  90 1F 08 40 */	stw r0, 0x840(r31)
/* 804AB668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AB66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB670  7C 08 03 A6 */	mtlr r0
/* 804AB674  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB678  4E 80 00 20 */	blr 

lbl_8042AEFC:
/* 8042AEFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042AF00  7C 08 02 A6 */	mflr r0
/* 8042AF04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042AF08  80 03 01 98 */	lwz r0, 0x198(r3)
/* 8042AF0C  2C 00 00 01 */	cmpwi r0, 1
/* 8042AF10  40 82 00 14 */	bne lbl_8042AF24
/* 8042AF14  38 00 00 00 */	li r0, 0
/* 8042AF18  38 A0 00 08 */	li r5, 8
/* 8042AF1C  90 03 01 98 */	stw r0, 0x198(r3)
/* 8042AF20  48 00 05 F5 */	bl aID_setupAction
lbl_8042AF24:
/* 8042AF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042AF28  7C 08 03 A6 */	mtlr r0
/* 8042AF2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042AF30  4E 80 00 20 */	blr 

lbl_80404DF4:
/* 80404DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404DF8  7C 08 02 A6 */	mflr r0
/* 80404DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80404E00  80 03 00 74 */	lwz r0, 0x74(r3)
/* 80404E04  2C 00 00 01 */	cmpwi r0, 1
/* 80404E08  40 82 00 14 */	bne lbl_80404E1C
/* 80404E0C  38 63 00 14 */	addi r3, r3, 0x14
/* 80404E10  38 80 00 01 */	li r4, 1
/* 80404E14  48 00 37 A1 */	bl padmgr_RequestPadData
/* 80404E18  48 00 00 0C */	b lbl_80404E24
lbl_80404E1C:
/* 80404E1C  38 63 00 14 */	addi r3, r3, 0x14
/* 80404E20  48 00 37 DD */	bl padmgr_ClearPadData
lbl_80404E24:
/* 80404E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80404E28  7C 08 03 A6 */	mtlr r0
/* 80404E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80404E30  4E 80 00 20 */	blr 

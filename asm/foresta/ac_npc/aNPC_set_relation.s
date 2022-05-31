lbl_80530C58:
/* 80530C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80530C5C  7C 08 02 A6 */	mflr r0
/* 80530C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80530C64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80530C68  93 C1 00 08 */	stw r30, 8(r1)
/* 80530C6C  7C BE 2B 78 */	mr r30, r5
/* 80530C70  83 E3 01 7C */	lwz r31, 0x17c(r3)
/* 80530C74  28 1F 00 00 */	cmplwi r31, 0
/* 80530C78  41 82 00 3C */	beq lbl_80530CB4
/* 80530C7C  7C 83 23 78 */	mr r3, r4
/* 80530C80  4B FF FF 95 */	bl aNPC_get_animal_idx
/* 80530C84  2C 03 FF FF */	cmpwi r3, -1
/* 80530C88  41 82 00 2C */	beq lbl_80530CB4
/* 80530C8C  38 63 08 F0 */	addi r3, r3, 0x8f0
/* 80530C90  7C 1F 18 AE */	lbzx r0, r31, r3
/* 80530C94  7C 00 F2 15 */	add. r0, r0, r30
/* 80530C98  40 80 00 0C */	bge lbl_80530CA4
/* 80530C9C  38 00 00 00 */	li r0, 0
/* 80530CA0  48 00 00 10 */	b lbl_80530CB0
lbl_80530CA4:
/* 80530CA4  2C 00 00 FF */	cmpwi r0, 0xff
/* 80530CA8  40 81 00 08 */	ble lbl_80530CB0
/* 80530CAC  38 00 00 FF */	li r0, 0xff
lbl_80530CB0:
/* 80530CB0  7C 1F 19 AE */	stbx r0, r31, r3
lbl_80530CB4:
/* 80530CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80530CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80530CBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80530CC0  7C 08 03 A6 */	mtlr r0
/* 80530CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80530CC8  4E 80 00 20 */	blr 

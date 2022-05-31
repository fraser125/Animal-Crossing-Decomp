lbl_80516ED0:
/* 80516ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80516ED4  7C 08 02 A6 */	mflr r0
/* 80516ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80516EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80516EE0  3B E0 00 00 */	li r31, 0
/* 80516EE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80516EE8  7C 7E 1B 78 */	mr r30, r3
/* 80516EEC  7F C4 F3 78 */	mr r4, r30
/* 80516EF0  38 60 00 08 */	li r3, 8
/* 80516EF4  4B E8 33 71 */	bl mDemo_Check
/* 80516EF8  2C 03 00 00 */	cmpwi r3, 0
/* 80516EFC  40 82 00 4C */	bne lbl_80516F48
/* 80516F00  7F C4 F3 78 */	mr r4, r30
/* 80516F04  38 60 00 07 */	li r3, 7
/* 80516F08  4B E8 33 5D */	bl mDemo_Check
/* 80516F0C  2C 03 00 00 */	cmpwi r3, 0
/* 80516F10  40 82 00 38 */	bne lbl_80516F48
/* 80516F14  38 60 00 04 */	li r3, 4
/* 80516F18  38 80 00 07 */	li r4, 7
/* 80516F1C  4B E8 15 61 */	bl mDemo_Get_OrderValue
/* 80516F20  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80516F24  41 82 00 20 */	beq lbl_80516F44
/* 80516F28  38 60 00 40 */	li r3, 0x40
/* 80516F2C  38 80 00 08 */	li r4, 8
/* 80516F30  4B E8 6A A1 */	bl mEv_set_status
/* 80516F34  38 60 00 04 */	li r3, 4
/* 80516F38  38 80 00 07 */	li r4, 7
/* 80516F3C  38 A0 00 00 */	li r5, 0
/* 80516F40  4B E8 14 F9 */	bl mDemo_Set_OrderValue
lbl_80516F44:
/* 80516F44  3B E0 00 01 */	li r31, 1
lbl_80516F48:
/* 80516F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80516F4C  7F E3 FB 78 */	mr r3, r31
/* 80516F50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80516F54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80516F58  7C 08 03 A6 */	mtlr r0
/* 80516F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80516F60  4E 80 00 20 */	blr 

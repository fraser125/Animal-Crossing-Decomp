lbl_80429A60:
/* 80429A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429A64  7C 08 02 A6 */	mflr r0
/* 80429A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80429A6C  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80429A70  28 00 00 FF */	cmplwi r0, 0xff
/* 80429A74  41 82 00 10 */	beq lbl_80429A84
/* 80429A78  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 80429A7C  28 00 00 00 */	cmplwi r0, 0
/* 80429A80  40 82 00 48 */	bne lbl_80429AC8
lbl_80429A84:
/* 80429A84  A8 83 00 DE */	lha r4, 0xde(r3)
/* 80429A88  38 A0 00 03 */	li r5, 3
/* 80429A8C  A8 03 00 B6 */	lha r0, 0xb6(r3)
/* 80429A90  7C 04 00 50 */	subf r0, r4, r0
/* 80429A94  7C 04 07 35 */	extsh. r4, r0
/* 80429A98  7C 04 00 D0 */	neg r0, r4
/* 80429A9C  41 80 00 08 */	blt lbl_80429AA4
/* 80429AA0  7C 80 23 78 */	mr r0, r4
lbl_80429AA4:
/* 80429AA4  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80429AA8  40 80 00 08 */	bge lbl_80429AB0
/* 80429AAC  38 A0 00 00 */	li r5, 0
lbl_80429AB0:
/* 80429AB0  38 80 00 04 */	li r4, 4
/* 80429AB4  38 C0 00 02 */	li r6, 2
/* 80429AB8  38 E0 00 01 */	li r7, 1
/* 80429ABC  39 00 00 00 */	li r8, 0
/* 80429AC0  39 20 00 00 */	li r9, 0
/* 80429AC4  4B FF F9 D5 */	bl func_80429498
lbl_80429AC8:
/* 80429AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80429ACC  38 60 00 00 */	li r3, 0
/* 80429AD0  7C 08 03 A6 */	mtlr r0
/* 80429AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80429AD8  4E 80 00 20 */	blr 

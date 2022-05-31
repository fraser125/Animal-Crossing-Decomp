lbl_804FA76C:
/* 804FA76C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA770  7C 08 02 A6 */	mflr r0
/* 804FA774  2C 05 00 40 */	cmpwi r5, 0x40
/* 804FA778  38 E3 0D 18 */	addi r7, r3, 0xd18
/* 804FA77C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA780  41 82 00 30 */	beq lbl_804FA7B0
/* 804FA784  40 80 00 44 */	bge lbl_804FA7C8
/* 804FA788  2C 05 00 3F */	cmpwi r5, 0x3f
/* 804FA78C  40 80 00 08 */	bge lbl_804FA794
/* 804FA790  48 00 00 38 */	b lbl_804FA7C8
lbl_804FA794:
/* 804FA794  A0 A7 00 0C */	lhz r5, 0xc(r7)
/* 804FA798  7C 83 23 78 */	mr r3, r4
/* 804FA79C  80 C7 00 20 */	lwz r6, 0x20(r7)
/* 804FA7A0  7C E4 3B 78 */	mr r4, r7
/* 804FA7A4  38 E0 00 15 */	li r7, 0x15
/* 804FA7A8  4B FF F3 49 */	bl func_804F9AF0
/* 804FA7AC  48 00 00 1C */	b lbl_804FA7C8
lbl_804FA7B0:
/* 804FA7B0  7C 83 23 78 */	mr r3, r4
/* 804FA7B4  7C E4 3B 78 */	mr r4, r7
/* 804FA7B8  38 A0 00 00 */	li r5, 0
/* 804FA7BC  38 C0 00 00 */	li r6, 0
/* 804FA7C0  38 E0 00 15 */	li r7, 0x15
/* 804FA7C4  4B FF EE D1 */	bl func_804F9694
lbl_804FA7C8:
/* 804FA7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA7CC  7C 08 03 A6 */	mtlr r0
/* 804FA7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA7D4  4E 80 00 20 */	blr 

lbl_8055515C:
/* 8055515C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555160  7C 08 02 A6 */	mflr r0
/* 80555164  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80555168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055516C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80555170  3C A5 00 02 */	addis r5, r5, 2
/* 80555174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80555178  3B E0 00 00 */	li r31, 0
/* 8055517C  80 A5 60 A0 */	lwz r5, 0x60a0(r5)
/* 80555180  28 05 00 00 */	cmplwi r5, 0
/* 80555184  41 82 00 24 */	beq lbl_805551A8
/* 80555188  81 85 00 04 */	lwz r12, 4(r5)
/* 8055518C  7C 85 23 78 */	mr r5, r4
/* 80555190  80 83 08 A0 */	lwz r4, 0x8a0(r3)
/* 80555194  7D 89 03 A6 */	mtctr r12
/* 80555198  4E 80 04 21 */	bctrl 
/* 8055519C  2C 03 00 01 */	cmpwi r3, 1
/* 805551A0  40 82 00 08 */	bne lbl_805551A8
/* 805551A4  3B E0 00 01 */	li r31, 1
lbl_805551A8:
/* 805551A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805551AC  7F E3 FB 78 */	mr r3, r31
/* 805551B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805551B4  7C 08 03 A6 */	mtlr r0
/* 805551B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805551BC  4E 80 00 20 */	blr 

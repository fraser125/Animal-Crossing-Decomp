lbl_80526D2C:
/* 80526D2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80526D30  7C 08 02 A6 */	mflr r0
/* 80526D34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80526D38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80526D3C  3B E0 00 00 */	li r31, 0
/* 80526D40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80526D44  7C 7E 1B 78 */	mr r30, r3
/* 80526D48  81 83 09 94 */	lwz r12, 0x994(r3)
/* 80526D4C  7D 89 03 A6 */	mtctr r12
/* 80526D50  4E 80 04 21 */	bctrl 
/* 80526D54  7F C4 F3 78 */	mr r4, r30
/* 80526D58  38 60 00 07 */	li r3, 7
/* 80526D5C  4B E7 35 09 */	bl mDemo_Check
/* 80526D60  2C 03 00 00 */	cmpwi r3, 0
/* 80526D64  40 82 00 68 */	bne lbl_80526DCC
/* 80526D68  A8 9E 09 AC */	lha r4, 0x9ac(r30)
/* 80526D6C  3C A0 43 30 */	lis r5, 0x4330
/* 80526D70  A8 1E 09 AE */	lha r0, 0x9ae(r30)
/* 80526D74  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80526D78  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 80526D7C  3C 80 80 65 */	lis r4, lit_472@ha /* 0x806491BC@ha */
/* 80526D80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80526D84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80526D88  3C 63 00 02 */	addis r3, r3, 2
/* 80526D8C  38 E4 91 BC */	addi r7, r4, lit_472@l /* 0x806491BC@l */
/* 80526D90  80 83 60 4C */	lwz r4, 0x604c(r3)
/* 80526D94  7F C3 F3 78 */	mr r3, r30
/* 80526D98  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80526D9C  3B E0 00 01 */	li r31, 1
/* 80526DA0  C8 47 00 00 */	lfd f2, 0(r7)
/* 80526DA4  90 A1 00 08 */	stw r5, 8(r1)
/* 80526DA8  81 84 01 1C */	lwz r12, 0x11c(r4)
/* 80526DAC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80526DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526DB4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80526DB8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80526DBC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80526DC0  EC 40 10 28 */	fsubs f2, f0, f2
/* 80526DC4  7D 89 03 A6 */	mtctr r12
/* 80526DC8  4E 80 04 21 */	bctrl 
lbl_80526DCC:
/* 80526DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80526DD0  7F E3 FB 78 */	mr r3, r31
/* 80526DD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80526DD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80526DDC  7C 08 03 A6 */	mtlr r0
/* 80526DE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80526DE4  4E 80 00 20 */	blr 

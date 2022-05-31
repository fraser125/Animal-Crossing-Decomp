lbl_8038DA5C:
/* 8038DA5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038DA60  7C 08 02 A6 */	mflr r0
/* 8038DA64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038DA68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038DA6C  7C 7F 1B 78 */	mr r31, r3
/* 8038DA70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038DA74  7C 9E 23 78 */	mr r30, r4
/* 8038DA78  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8038DA7C  2C 00 00 01 */	cmpwi r0, 1
/* 8038DA80  40 82 00 CC */	bne lbl_8038DB4C
/* 8038DA84  A8 BF 00 1C */	lha r5, 0x1c(r31)
/* 8038DA88  2C 05 FF 9C */	cmpwi r5, -100
/* 8038DA8C  41 82 00 C0 */	beq lbl_8038DB4C
/* 8038DA90  A8 1F 00 1E */	lha r0, 0x1e(r31)
/* 8038DA94  38 80 00 00 */	li r4, 0
/* 8038DA98  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8038DA9C  7C 00 28 50 */	subf r0, r0, r5
/* 8038DAA0  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8038DAA4  7C 03 07 34 */	extsh r3, r0
/* 8038DAA8  4B FF FF 29 */	bl func_8038D9D0
/* 8038DAAC  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 8038DAB0  3C 60 80 64 */	lis r3, lit_789@ha /* 0x806419D0@ha */
/* 8038DAB4  C0 23 19 D0 */	lfs f1, lit_789@l(r3)  /* 0x806419D0@l */
/* 8038DAB8  38 00 00 01 */	li r0, 1
/* 8038DABC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8038DAC0  80 9F 00 04 */	lwz r4, 4(r31)
/* 8038DAC4  90 BE 00 00 */	stw r5, 0(r30)
/* 8038DAC8  90 9E 00 04 */	stw r4, 4(r30)
/* 8038DACC  80 7F 00 08 */	lwz r3, 8(r31)
/* 8038DAD0  90 7E 00 08 */	stw r3, 8(r30)
/* 8038DAD4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8038DAD8  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8038DADC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8038DAE0  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038DAE4  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8038DAE8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8038DAEC  EC 00 08 24 */	fdivs f0, f0, f1
/* 8038DAF0  FC 00 00 1E */	fctiwz f0, f0
/* 8038DAF4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8038DAF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8038DAFC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8038DB00  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8038DB04  EC 00 08 24 */	fdivs f0, f0, f1
/* 8038DB08  FC 00 00 1E */	fctiwz f0, f0
/* 8038DB0C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8038DB10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038DB14  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8038DB18  A8 7F 00 1E */	lha r3, 0x1e(r31)
/* 8038DB1C  38 03 FF FF */	addi r0, r3, -1
/* 8038DB20  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 8038DB24  A8 1F 00 1E */	lha r0, 0x1e(r31)
/* 8038DB28  2C 00 00 00 */	cmpwi r0, 0
/* 8038DB2C  40 80 00 20 */	bge lbl_8038DB4C
/* 8038DB30  38 00 00 00 */	li r0, 0
/* 8038DB34  3C 60 81 13 */	lis r3, mCoBG_regist_decal_circle_count@ha /* 0x8113734C@ha */
/* 8038DB38  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8038DB3C  38 83 73 4C */	addi r4, r3, mCoBG_regist_decal_circle_count@l /* 0x8113734C@l */
/* 8038DB40  80 64 00 00 */	lwz r3, 0(r4)
/* 8038DB44  38 03 FF FF */	addi r0, r3, -1
/* 8038DB48  90 04 00 00 */	stw r0, 0(r4)
lbl_8038DB4C:
/* 8038DB4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038DB50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038DB54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038DB58  7C 08 03 A6 */	mtlr r0
/* 8038DB5C  38 21 00 20 */	addi r1, r1, 0x20
/* 8038DB60  4E 80 00 20 */	blr 

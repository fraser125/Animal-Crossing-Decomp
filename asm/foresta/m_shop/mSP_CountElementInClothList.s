lbl_803E8098:
/* 803E8098  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E809C  7C 08 02 A6 */	mflr r0
/* 803E80A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E80A4  39 61 00 30 */	addi r11, r1, 0x30
/* 803E80A8  4B CB 2E 29 */	bl func_8009AED0
/* 803E80AC  3C 80 80 C8 */	lis r4, cloth_season_cnt@ha /* 0x80C7BC6C@ha */
/* 803E80B0  7C 7C 1B 78 */	mr r28, r3
/* 803E80B4  3B C4 BC 6C */	addi r30, r4, cloth_season_cnt@l /* 0x80C7BC6C@l */
/* 803E80B8  4B FF FF 01 */	bl mSP_get_cloth_season
/* 803E80BC  3C 80 80 C8 */	lis r4, cloth_season_cnt@ha /* 0x80C7BC6C@ha */
/* 803E80C0  7C 7F 1B 78 */	mr r31, r3
/* 803E80C4  8C 64 BC 6C */	lbzu r3, cloth_season_cnt@l(r4)  /* 0x80C7BC6C@l */
/* 803E80C8  7C 04 F8 AE */	lbzx r0, r4, r31
/* 803E80CC  7F A3 02 14 */	add r29, r3, r0
/* 803E80D0  4B C7 4C 25 */	bl fqrand
/* 803E80D4  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 803E80D8  3C 00 43 30 */	lis r0, 0x4330
/* 803E80DC  90 61 00 0C */	stw r3, 0xc(r1)
/* 803E80E0  3C 80 80 64 */	lis r4, lit_562@ha /* 0x8064318C@ha */
/* 803E80E4  C8 44 31 8C */	lfd f2, lit_562@l(r4)  /* 0x8064318C@l */
/* 803E80E8  3C 60 80 C8 */	lis r3, cloth_season_cnt@ha /* 0x80C7BC6C@ha */
/* 803E80EC  90 01 00 08 */	stw r0, 8(r1)
/* 803E80F0  C8 01 00 08 */	lfd f0, 8(r1)
/* 803E80F4  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E80F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E80FC  FC 00 00 1E */	fctiwz f0, f0
/* 803E8100  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E8104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E8108  90 1C 00 00 */	stw r0, 0(r28)
/* 803E810C  80 9C 00 00 */	lwz r4, 0(r28)
/* 803E8110  88 03 BC 6C */	lbz r0, cloth_season_cnt@l(r3)  /* 0x80C7BC6C@l */
/* 803E8114  7C 04 00 00 */	cmpw r4, r0
/* 803E8118  41 80 00 30 */	blt lbl_803E8148
/* 803E811C  38 1F FF FF */	addi r0, r31, -1
/* 803E8120  38 7E 00 01 */	addi r3, r30, 1
/* 803E8124  7C 09 03 A6 */	mtctr r0
/* 803E8128  2C 1F 00 01 */	cmpwi r31, 1
/* 803E812C  40 81 00 1C */	ble lbl_803E8148
lbl_803E8130:
/* 803E8130  88 03 00 00 */	lbz r0, 0(r3)
/* 803E8134  38 63 00 01 */	addi r3, r3, 1
/* 803E8138  80 9C 00 00 */	lwz r4, 0(r28)
/* 803E813C  7C 04 02 14 */	add r0, r4, r0
/* 803E8140  90 1C 00 00 */	stw r0, 0(r28)
/* 803E8144  42 00 FF EC */	bdnz lbl_803E8130
lbl_803E8148:
/* 803E8148  7F A3 EB 78 */	mr r3, r29
/* 803E814C  39 61 00 30 */	addi r11, r1, 0x30
/* 803E8150  4B CB 2D CD */	bl func_8009AF1C
/* 803E8154  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E8158  7C 08 03 A6 */	mtlr r0
/* 803E815C  38 21 00 30 */	addi r1, r1, 0x30
/* 803E8160  4E 80 00 20 */	blr 

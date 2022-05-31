lbl_803A7F88:
/* 803A7F88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803A7F8C  7C 08 02 A6 */	mflr r0
/* 803A7F90  90 01 00 44 */	stw r0, 0x44(r1)
/* 803A7F94  39 61 00 40 */	addi r11, r1, 0x40
/* 803A7F98  4B CF 2F 31 */	bl func_8009AEC8
/* 803A7F9C  3C A0 80 65 */	lis r5, BI_chk_pos_1607@ha /* 0x80653E78@ha */
/* 803A7FA0  7C 7A 1B 78 */	mr r26, r3
/* 803A7FA4  7C 9B 23 78 */	mr r27, r4
/* 803A7FA8  3B A0 00 09 */	li r29, 9
/* 803A7FAC  3B C5 3E 78 */	addi r30, r5, BI_chk_pos_1607@l /* 0x80653E78@l */
/* 803A7FB0  3B E0 00 48 */	li r31, 0x48
/* 803A7FB4  3B 80 00 00 */	li r28, 0
/* 803A7FB8  48 00 00 7C */	b lbl_803A8034
lbl_803A7FBC:
/* 803A7FBC  3B FF FF F8 */	addi r31, r31, -8
/* 803A7FC0  C0 5A 00 00 */	lfs f2, 0(r26)
/* 803A7FC4  7C 9E FA 14 */	add r4, r30, r31
/* 803A7FC8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803A7FCC  C0 24 00 00 */	lfs f1, 0(r4)
/* 803A7FD0  38 61 00 08 */	addi r3, r1, 8
/* 803A7FD4  C0 04 00 04 */	lfs f0, 4(r4)
/* 803A7FD8  3B BD FF FF */	addi r29, r29, -1
/* 803A7FDC  EC 22 08 2A */	fadds f1, f2, f1
/* 803A7FE0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 803A7FE4  C0 3A 00 08 */	lfs f1, 8(r26)
/* 803A7FE8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803A7FEC  EC 01 00 2A */	fadds f0, f1, f0
/* 803A7FF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 803A7FF4  90 81 00 08 */	stw r4, 8(r1)
/* 803A7FF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 803A7FFC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803A8000  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A8004  4B FF F4 2D */	bl mFI_GetUnitFG
/* 803A8008  28 03 00 00 */	cmplwi r3, 0
/* 803A800C  41 82 00 28 */	beq lbl_803A8034
/* 803A8010  A0 63 00 00 */	lhz r3, 0(r3)
/* 803A8014  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 803A8018  7C 03 00 40 */	cmplw r3, r0
/* 803A801C  40 82 00 18 */	bne lbl_803A8034
/* 803A8020  7F 43 D3 78 */	mr r3, r26
/* 803A8024  38 81 00 14 */	addi r4, r1, 0x14
/* 803A8028  48 01 2E 95 */	bl xyz_t_move
/* 803A802C  3B 80 00 01 */	li r28, 1
/* 803A8030  48 00 00 0C */	b lbl_803A803C
lbl_803A8034:
/* 803A8034  2C 1D 00 00 */	cmpwi r29, 0
/* 803A8038  40 82 FF 84 */	bne lbl_803A7FBC
lbl_803A803C:
/* 803A803C  7F 83 E3 78 */	mr r3, r28
/* 803A8040  39 61 00 40 */	addi r11, r1, 0x40
/* 803A8044  4B CF 2E D1 */	bl func_8009AF14
/* 803A8048  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803A804C  7C 08 03 A6 */	mtlr r0
/* 803A8050  38 21 00 40 */	addi r1, r1, 0x40
/* 803A8054  4E 80 00 20 */	blr 

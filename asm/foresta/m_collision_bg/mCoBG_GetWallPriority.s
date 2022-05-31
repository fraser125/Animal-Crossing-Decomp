lbl_80387F48:
/* 80387F48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80387F4C  7C 08 02 A6 */	mflr r0
/* 80387F50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80387F54  39 61 00 40 */	addi r11, r1, 0x40
/* 80387F58  4B D1 2F 59 */	bl func_8009AEB0
/* 80387F5C  3C C0 80 64 */	lis r6, lit_862@ha /* 0x80641A00@ha */
/* 80387F60  83 A4 00 00 */	lwz r29, 0(r4)
/* 80387F64  39 06 1A 00 */	addi r8, r6, lit_862@l /* 0x80641A00@l */
/* 80387F68  3C E0 81 13 */	lis r7, dist_table@ha /* 0x81137624@ha */
/* 80387F6C  3C C0 81 13 */	lis r6, merge_dist_table@ha /* 0x81137824@ha */
/* 80387F70  7C 74 1B 78 */	mr r20, r3
/* 80387F74  39 24 00 04 */	addi r9, r4, 4
/* 80387F78  38 E7 76 24 */	addi r7, r7, dist_table@l /* 0x81137624@l */
/* 80387F7C  38 86 78 24 */	addi r4, r6, merge_dist_table@l /* 0x81137824@l */
/* 80387F80  C0 88 00 00 */	lfs f4, 0(r8)
/* 80387F84  3B C0 00 00 */	li r30, 0
/* 80387F88  3B E0 00 00 */	li r31, 0
/* 80387F8C  38 60 00 00 */	li r3, 0
/* 80387F90  7F A9 03 A6 */	mtctr r29
/* 80387F94  2C 1D 00 00 */	cmpwi r29, 0
/* 80387F98  40 81 00 58 */	ble lbl_80387FF0
lbl_80387F9C:
/* 80387F9C  C0 69 00 00 */	lfs f3, 0(r9)
/* 80387FA0  C0 49 00 08 */	lfs f2, 8(r9)
/* 80387FA4  C0 29 00 04 */	lfs f1, 4(r9)
/* 80387FA8  C0 09 00 0C */	lfs f0, 0xc(r9)
/* 80387FAC  EC 63 10 2A */	fadds f3, f3, f2
/* 80387FB0  C0 45 00 00 */	lfs f2, 0(r5)
/* 80387FB4  39 29 00 34 */	addi r9, r9, 0x34
/* 80387FB8  EC 21 00 2A */	fadds f1, f1, f0
/* 80387FBC  C0 05 00 04 */	lfs f0, 4(r5)
/* 80387FC0  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80387FC4  EC 24 00 72 */	fmuls f1, f4, f1
/* 80387FC8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80387FCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80387FD0  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80387FD4  EC 00 00 32 */	fmuls f0, f0, f0
/* 80387FD8  EC 01 00 2A */	fadds f0, f1, f0
/* 80387FDC  7C 07 1D 2E */	stfsx f0, r7, r3
/* 80387FE0  7C 07 1C 2E */	lfsx f0, r7, r3
/* 80387FE4  7C 04 1D 2E */	stfsx f0, r4, r3
/* 80387FE8  38 63 00 04 */	addi r3, r3, 4
/* 80387FEC  42 00 FF B0 */	bdnz lbl_80387F9C
lbl_80387FF0:
/* 80387FF0  3C 60 81 13 */	lis r3, merge_dist_table@ha /* 0x81137824@ha */
/* 80387FF4  38 BD FF FF */	addi r5, r29, -1
/* 80387FF8  38 63 78 24 */	addi r3, r3, merge_dist_table@l /* 0x81137824@l */
/* 80387FFC  38 80 00 00 */	li r4, 0
/* 80388000  4B FF FD 61 */	bl mCoBG_MergeSortFloat
/* 80388004  7E 83 A3 78 */	mr r3, r20
/* 80388008  38 00 00 00 */	li r0, 0
/* 8038800C  7F A9 03 A6 */	mtctr r29
/* 80388010  2C 1D 00 00 */	cmpwi r29, 0
/* 80388014  40 81 00 10 */	ble lbl_80388024
lbl_80388018:
/* 80388018  98 03 00 00 */	stb r0, 0(r3)
/* 8038801C  38 63 00 01 */	addi r3, r3, 1
/* 80388020  42 00 FF F8 */	bdnz lbl_80388018
lbl_80388024:
/* 80388024  3C 60 81 13 */	lis r3, dist_table@ha /* 0x81137624@ha */
/* 80388028  3C 80 81 13 */	lis r4, merge_dist_table@ha /* 0x81137824@ha */
/* 8038802C  7E 9A A3 78 */	mr r26, r20
/* 80388030  3B 80 00 00 */	li r28, 0
/* 80388034  3A E3 76 24 */	addi r23, r3, dist_table@l /* 0x81137624@l */
/* 80388038  3A C4 78 24 */	addi r22, r4, merge_dist_table@l /* 0x81137824@l */
/* 8038803C  3B 60 00 00 */	li r27, 0
/* 80388040  48 00 00 88 */	b lbl_803880C8
lbl_80388044:
/* 80388044  3A A0 00 00 */	li r21, 0
/* 80388048  3B 20 00 00 */	li r25, 0
/* 8038804C  9A BA 00 00 */	stb r21, 0(r26)
/* 80388050  7E B4 AB 78 */	mr r20, r21
/* 80388054  3B 00 00 01 */	li r24, 1
/* 80388058  48 00 00 5C */	b lbl_803880B4
lbl_8038805C:
/* 8038805C  7C 37 CC 2E */	lfsx f1, r23, r25
/* 80388060  7C 16 DC 2E */	lfsx f0, r22, r27
/* 80388064  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80388068  40 82 00 44 */	bne lbl_803880AC
/* 8038806C  7F E3 FB 78 */	mr r3, r31
/* 80388070  7F C4 F3 78 */	mr r4, r30
/* 80388074  7E 85 A3 78 */	mr r5, r20
/* 80388078  4B D1 32 F1 */	bl __shr2u
/* 8038807C  7C 60 A8 38 */	and r0, r3, r21
/* 80388080  7C 84 C0 38 */	and r4, r4, r24
/* 80388084  7C 83 AA 78 */	xor r3, r4, r21
/* 80388088  7C 00 AA 78 */	xor r0, r0, r21
/* 8038808C  7C 60 03 79 */	or. r0, r3, r0
/* 80388090  40 82 00 1C */	bne lbl_803880AC
/* 80388094  7F 03 A0 30 */	slw r3, r24, r20
/* 80388098  9A 9A 00 00 */	stb r20, 0(r26)
/* 8038809C  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 803880A0  7F DE 1B 78 */	or r30, r30, r3
/* 803880A4  7F FF 03 78 */	or r31, r31, r0
/* 803880A8  48 00 00 14 */	b lbl_803880BC
lbl_803880AC:
/* 803880AC  3A 94 00 01 */	addi r20, r20, 1
/* 803880B0  3B 39 00 04 */	addi r25, r25, 4
lbl_803880B4:
/* 803880B4  7C 14 E8 00 */	cmpw r20, r29
/* 803880B8  41 80 FF A4 */	blt lbl_8038805C
lbl_803880BC:
/* 803880BC  3B 9C 00 01 */	addi r28, r28, 1
/* 803880C0  3B 7B 00 04 */	addi r27, r27, 4
/* 803880C4  3B 5A 00 01 */	addi r26, r26, 1
lbl_803880C8:
/* 803880C8  7C 1C E8 00 */	cmpw r28, r29
/* 803880CC  41 80 FF 78 */	blt lbl_80388044
/* 803880D0  39 61 00 40 */	addi r11, r1, 0x40
/* 803880D4  4B D1 2E 29 */	bl func_8009AEFC
/* 803880D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803880DC  7C 08 03 A6 */	mtlr r0
/* 803880E0  38 21 00 40 */	addi r1, r1, 0x40
/* 803880E4  4E 80 00 20 */	blr 

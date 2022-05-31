lbl_804C41C0:
/* 804C41C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804C41C4  7C 08 02 A6 */	mflr r0
/* 804C41C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 804C41CC  39 61 00 60 */	addi r11, r1, 0x60
/* 804C41D0  4B BD 6C F9 */	bl func_8009AEC8
/* 804C41D4  7C 9B 23 78 */	mr r27, r4
/* 804C41D8  7C BA 2B 78 */	mr r26, r5
/* 804C41DC  7C 7D 1B 78 */	mr r29, r3
/* 804C41E0  7F 63 DB 78 */	mr r3, r27
/* 804C41E4  7F 44 D3 78 */	mr r4, r26
/* 804C41E8  4B EE 2F 6D */	bl mFI_BkNumtoUtFGTop
/* 804C41EC  7C 7C 1B 79 */	or. r28, r3, r3
/* 804C41F0  40 82 00 0C */	bne lbl_804C41FC
/* 804C41F4  38 60 00 00 */	li r3, 0
/* 804C41F8  48 00 01 2C */	b lbl_804C4324
lbl_804C41FC:
/* 804C41FC  7F 65 DB 78 */	mr r5, r27
/* 804C4200  7F 46 D3 78 */	mr r6, r26
/* 804C4204  38 61 00 0C */	addi r3, r1, 0xc
/* 804C4208  38 81 00 08 */	addi r4, r1, 8
/* 804C420C  4B EE 19 6D */	bl mFI_BkNum2WposXZ
/* 804C4210  2C 03 00 00 */	cmpwi r3, 0
/* 804C4214  40 82 00 0C */	bne lbl_804C4220
/* 804C4218  38 60 00 00 */	li r3, 0
/* 804C421C  48 00 01 08 */	b lbl_804C4324
lbl_804C4220:
/* 804C4220  3C 7D 00 01 */	addis r3, r29, 1
/* 804C4224  3B E0 00 00 */	li r31, 0
/* 804C4228  83 A3 25 A0 */	lwz r29, 0x25a0(r3)
/* 804C422C  3B 60 00 00 */	li r27, 0
lbl_804C4230:
/* 804C4230  3B C0 00 00 */	li r30, 0
/* 804C4234  3B 40 00 00 */	li r26, 0
lbl_804C4238:
/* 804C4238  A0 7C 00 00 */	lhz r3, 0(r28)
/* 804C423C  54 60 A7 3F */	rlwinm. r0, r3, 0x14, 0x1c, 0x1f
/* 804C4240  41 82 00 08 */	beq lbl_804C4248
/* 804C4244  48 00 00 B8 */	b lbl_804C42FC
lbl_804C4248:
/* 804C4248  28 03 00 00 */	cmplwi r3, 0
/* 804C424C  41 82 00 B0 */	beq lbl_804C42FC
/* 804C4250  4B F0 53 2D */	bl obj_hight_table_item0_nogrow
/* 804C4254  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804C4258  7C 6A 1B 78 */	mr r10, r3
/* 804C425C  7C 1D D4 2E */	lfsx f0, r29, r26
/* 804C4260  80 03 00 00 */	lwz r0, 0(r3)
/* 804C4264  EC 41 00 2A */	fadds f2, f1, f0
/* 804C4268  C0 21 00 08 */	lfs f1, 8(r1)
/* 804C426C  7C 1D DC 2E */	lfsx f0, r29, r27
/* 804C4270  2C 00 00 00 */	cmpwi r0, 0
/* 804C4274  EC 01 00 2A */	fadds f0, f1, f0
/* 804C4278  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 804C427C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804C4280  41 82 00 50 */	beq lbl_804C42D0
/* 804C4284  80 0A 00 04 */	lwz r0, 4(r10)
/* 804C4288  3C 60 80 6A */	lis r3, lit_2298@ha /* 0x80698BCC@ha */
/* 804C428C  38 A3 8B CC */	addi r5, r3, lit_2298@l /* 0x80698BCC@l */
/* 804C4290  81 01 00 30 */	lwz r8, 0x30(r1)
/* 804C4294  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C4298  38 61 00 24 */	addi r3, r1, 0x24
/* 804C429C  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 804C42A0  38 81 00 10 */	addi r4, r1, 0x10
/* 804C42A4  A1 2A 00 08 */	lhz r9, 8(r10)
/* 804C42A8  38 C0 14 7B */	li r6, 0x147b
/* 804C42AC  80 01 00 38 */	lwz r0, 0x38(r1)
/* 804C42B0  B1 21 00 14 */	sth r9, 0x14(r1)
/* 804C42B4  89 2A 00 0A */	lbz r9, 0xa(r10)
/* 804C42B8  99 21 00 16 */	stb r9, 0x16(r1)
/* 804C42BC  91 01 00 24 */	stw r8, 0x24(r1)
/* 804C42C0  90 E1 00 28 */	stw r7, 0x28(r1)
/* 804C42C4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804C42C8  4B EC DA B1 */	bl mCoBG_SetPluss5PointOffset_file
/* 804C42CC  48 00 00 30 */	b lbl_804C42FC
lbl_804C42D0:
/* 804C42D0  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 804C42D4  38 61 00 18 */	addi r3, r1, 0x18
/* 804C42D8  80 81 00 34 */	lwz r4, 0x34(r1)
/* 804C42DC  80 01 00 38 */	lwz r0, 0x38(r1)
/* 804C42E0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804C42E4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804C42E8  90 01 00 20 */	stw r0, 0x20(r1)
/* 804C42EC  88 8A 00 05 */	lbz r4, 5(r10)
/* 804C42F0  88 AA 00 04 */	lbz r5, 4(r10)
/* 804C42F4  7C 84 07 74 */	extsb r4, r4
/* 804C42F8  4B EC D7 A5 */	bl mCoBG_SetPlussOffset
lbl_804C42FC:
/* 804C42FC  3B DE 00 01 */	addi r30, r30, 1
/* 804C4300  3B 9C 00 02 */	addi r28, r28, 2
/* 804C4304  2C 1E 00 10 */	cmpwi r30, 0x10
/* 804C4308  3B 5A 00 04 */	addi r26, r26, 4
/* 804C430C  41 80 FF 2C */	blt lbl_804C4238
/* 804C4310  3B FF 00 01 */	addi r31, r31, 1
/* 804C4314  3B 7B 00 04 */	addi r27, r27, 4
/* 804C4318  2C 1F 00 10 */	cmpwi r31, 0x10
/* 804C431C  41 80 FF 14 */	blt lbl_804C4230
/* 804C4320  38 60 00 01 */	li r3, 1
lbl_804C4324:
/* 804C4324  39 61 00 60 */	addi r11, r1, 0x60
/* 804C4328  4B BD 6B ED */	bl func_8009AF14
/* 804C432C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804C4330  7C 08 03 A6 */	mtlr r0
/* 804C4334  38 21 00 60 */	addi r1, r1, 0x60
/* 804C4338  4E 80 00 20 */	blr 

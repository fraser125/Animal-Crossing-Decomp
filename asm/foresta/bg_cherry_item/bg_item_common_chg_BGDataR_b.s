lbl_804B5344:
/* 804B5344  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804B5348  7C 08 02 A6 */	mflr r0
/* 804B534C  90 01 00 64 */	stw r0, 0x64(r1)
/* 804B5350  39 61 00 60 */	addi r11, r1, 0x60
/* 804B5354  4B BE 5B 75 */	bl func_8009AEC8
/* 804B5358  7C 9B 23 78 */	mr r27, r4
/* 804B535C  7C BA 2B 78 */	mr r26, r5
/* 804B5360  7C 7D 1B 78 */	mr r29, r3
/* 804B5364  7F 63 DB 78 */	mr r3, r27
/* 804B5368  7F 44 D3 78 */	mr r4, r26
/* 804B536C  4B EF 1D E9 */	bl mFI_BkNumtoUtFGTop
/* 804B5370  7C 7C 1B 79 */	or. r28, r3, r3
/* 804B5374  40 82 00 0C */	bne lbl_804B5380
/* 804B5378  38 60 00 00 */	li r3, 0
/* 804B537C  48 00 01 2C */	b lbl_804B54A8
lbl_804B5380:
/* 804B5380  7F 65 DB 78 */	mr r5, r27
/* 804B5384  7F 46 D3 78 */	mr r6, r26
/* 804B5388  38 61 00 0C */	addi r3, r1, 0xc
/* 804B538C  38 81 00 08 */	addi r4, r1, 8
/* 804B5390  4B EF 07 E9 */	bl mFI_BkNum2WposXZ
/* 804B5394  2C 03 00 00 */	cmpwi r3, 0
/* 804B5398  40 82 00 0C */	bne lbl_804B53A4
/* 804B539C  38 60 00 00 */	li r3, 0
/* 804B53A0  48 00 01 08 */	b lbl_804B54A8
lbl_804B53A4:
/* 804B53A4  3C 7D 00 01 */	addis r3, r29, 1
/* 804B53A8  3B E0 00 00 */	li r31, 0
/* 804B53AC  83 A3 25 A0 */	lwz r29, 0x25a0(r3)
/* 804B53B0  3B 60 00 00 */	li r27, 0
lbl_804B53B4:
/* 804B53B4  3B C0 00 00 */	li r30, 0
/* 804B53B8  3B 40 00 00 */	li r26, 0
lbl_804B53BC:
/* 804B53BC  A0 7C 00 00 */	lhz r3, 0(r28)
/* 804B53C0  54 60 A7 3F */	rlwinm. r0, r3, 0x14, 0x1c, 0x1f
/* 804B53C4  41 82 00 08 */	beq lbl_804B53CC
/* 804B53C8  48 00 00 B8 */	b lbl_804B5480
lbl_804B53CC:
/* 804B53CC  28 03 00 00 */	cmplwi r3, 0
/* 804B53D0  41 82 00 B0 */	beq lbl_804B5480
/* 804B53D4  4B F1 41 A9 */	bl obj_hight_table_item0_nogrow
/* 804B53D8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804B53DC  7C 6A 1B 78 */	mr r10, r3
/* 804B53E0  7C 1D D4 2E */	lfsx f0, r29, r26
/* 804B53E4  80 03 00 00 */	lwz r0, 0(r3)
/* 804B53E8  EC 41 00 2A */	fadds f2, f1, f0
/* 804B53EC  C0 21 00 08 */	lfs f1, 8(r1)
/* 804B53F0  7C 1D DC 2E */	lfsx f0, r29, r27
/* 804B53F4  2C 00 00 00 */	cmpwi r0, 0
/* 804B53F8  EC 01 00 2A */	fadds f0, f1, f0
/* 804B53FC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 804B5400  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804B5404  41 82 00 50 */	beq lbl_804B5454
/* 804B5408  80 0A 00 04 */	lwz r0, 4(r10)
/* 804B540C  3C 60 80 69 */	lis r3, lit_2298@ha /* 0x80692A9C@ha */
/* 804B5410  38 A3 2A 9C */	addi r5, r3, lit_2298@l /* 0x80692A9C@l */
/* 804B5414  81 01 00 30 */	lwz r8, 0x30(r1)
/* 804B5418  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B541C  38 61 00 24 */	addi r3, r1, 0x24
/* 804B5420  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 804B5424  38 81 00 10 */	addi r4, r1, 0x10
/* 804B5428  A1 2A 00 08 */	lhz r9, 8(r10)
/* 804B542C  38 C0 14 7B */	li r6, 0x147b
/* 804B5430  80 01 00 38 */	lwz r0, 0x38(r1)
/* 804B5434  B1 21 00 14 */	sth r9, 0x14(r1)
/* 804B5438  89 2A 00 0A */	lbz r9, 0xa(r10)
/* 804B543C  99 21 00 16 */	stb r9, 0x16(r1)
/* 804B5440  91 01 00 24 */	stw r8, 0x24(r1)
/* 804B5444  90 E1 00 28 */	stw r7, 0x28(r1)
/* 804B5448  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804B544C  4B ED C9 2D */	bl mCoBG_SetPluss5PointOffset_file
/* 804B5450  48 00 00 30 */	b lbl_804B5480
lbl_804B5454:
/* 804B5454  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 804B5458  38 61 00 18 */	addi r3, r1, 0x18
/* 804B545C  80 81 00 34 */	lwz r4, 0x34(r1)
/* 804B5460  80 01 00 38 */	lwz r0, 0x38(r1)
/* 804B5464  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804B5468  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804B546C  90 01 00 20 */	stw r0, 0x20(r1)
/* 804B5470  88 8A 00 05 */	lbz r4, 5(r10)
/* 804B5474  88 AA 00 04 */	lbz r5, 4(r10)
/* 804B5478  7C 84 07 74 */	extsb r4, r4
/* 804B547C  4B ED C6 21 */	bl mCoBG_SetPlussOffset
lbl_804B5480:
/* 804B5480  3B DE 00 01 */	addi r30, r30, 1
/* 804B5484  3B 9C 00 02 */	addi r28, r28, 2
/* 804B5488  2C 1E 00 10 */	cmpwi r30, 0x10
/* 804B548C  3B 5A 00 04 */	addi r26, r26, 4
/* 804B5490  41 80 FF 2C */	blt lbl_804B53BC
/* 804B5494  3B FF 00 01 */	addi r31, r31, 1
/* 804B5498  3B 7B 00 04 */	addi r27, r27, 4
/* 804B549C  2C 1F 00 10 */	cmpwi r31, 0x10
/* 804B54A0  41 80 FF 14 */	blt lbl_804B53B4
/* 804B54A4  38 60 00 01 */	li r3, 1
lbl_804B54A8:
/* 804B54A8  39 61 00 60 */	addi r11, r1, 0x60
/* 804B54AC  4B BE 5A 69 */	bl func_8009AF14
/* 804B54B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804B54B4  7C 08 03 A6 */	mtlr r0
/* 804B54B8  38 21 00 60 */	addi r1, r1, 0x60
/* 804B54BC  4E 80 00 20 */	blr 

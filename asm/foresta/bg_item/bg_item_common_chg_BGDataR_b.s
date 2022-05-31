lbl_804BC6C8:
/* 804BC6C8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804BC6CC  7C 08 02 A6 */	mflr r0
/* 804BC6D0  90 01 00 64 */	stw r0, 0x64(r1)
/* 804BC6D4  39 61 00 60 */	addi r11, r1, 0x60
/* 804BC6D8  4B BD E7 F1 */	bl func_8009AEC8
/* 804BC6DC  7C 9B 23 78 */	mr r27, r4
/* 804BC6E0  7C BA 2B 78 */	mr r26, r5
/* 804BC6E4  7C 7D 1B 78 */	mr r29, r3
/* 804BC6E8  7F 63 DB 78 */	mr r3, r27
/* 804BC6EC  7F 44 D3 78 */	mr r4, r26
/* 804BC6F0  4B EE AA 65 */	bl mFI_BkNumtoUtFGTop
/* 804BC6F4  7C 7C 1B 79 */	or. r28, r3, r3
/* 804BC6F8  40 82 00 0C */	bne lbl_804BC704
/* 804BC6FC  38 60 00 00 */	li r3, 0
/* 804BC700  48 00 01 2C */	b lbl_804BC82C
lbl_804BC704:
/* 804BC704  7F 65 DB 78 */	mr r5, r27
/* 804BC708  7F 46 D3 78 */	mr r6, r26
/* 804BC70C  38 61 00 0C */	addi r3, r1, 0xc
/* 804BC710  38 81 00 08 */	addi r4, r1, 8
/* 804BC714  4B EE 94 65 */	bl mFI_BkNum2WposXZ
/* 804BC718  2C 03 00 00 */	cmpwi r3, 0
/* 804BC71C  40 82 00 0C */	bne lbl_804BC728
/* 804BC720  38 60 00 00 */	li r3, 0
/* 804BC724  48 00 01 08 */	b lbl_804BC82C
lbl_804BC728:
/* 804BC728  3C 7D 00 01 */	addis r3, r29, 1
/* 804BC72C  3B E0 00 00 */	li r31, 0
/* 804BC730  83 A3 25 A0 */	lwz r29, 0x25a0(r3)
/* 804BC734  3B 60 00 00 */	li r27, 0
lbl_804BC738:
/* 804BC738  3B C0 00 00 */	li r30, 0
/* 804BC73C  3B 40 00 00 */	li r26, 0
lbl_804BC740:
/* 804BC740  A0 7C 00 00 */	lhz r3, 0(r28)
/* 804BC744  54 60 A7 3F */	rlwinm. r0, r3, 0x14, 0x1c, 0x1f
/* 804BC748  41 82 00 08 */	beq lbl_804BC750
/* 804BC74C  48 00 00 B8 */	b lbl_804BC804
lbl_804BC750:
/* 804BC750  28 03 00 00 */	cmplwi r3, 0
/* 804BC754  41 82 00 B0 */	beq lbl_804BC804
/* 804BC758  4B F0 CE 25 */	bl obj_hight_table_item0_nogrow
/* 804BC75C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804BC760  7C 6A 1B 78 */	mr r10, r3
/* 804BC764  7C 1D D4 2E */	lfsx f0, r29, r26
/* 804BC768  80 03 00 00 */	lwz r0, 0(r3)
/* 804BC76C  EC 41 00 2A */	fadds f2, f1, f0
/* 804BC770  C0 21 00 08 */	lfs f1, 8(r1)
/* 804BC774  7C 1D DC 2E */	lfsx f0, r29, r27
/* 804BC778  2C 00 00 00 */	cmpwi r0, 0
/* 804BC77C  EC 01 00 2A */	fadds f0, f1, f0
/* 804BC780  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 804BC784  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804BC788  41 82 00 50 */	beq lbl_804BC7D8
/* 804BC78C  80 0A 00 04 */	lwz r0, 4(r10)
/* 804BC790  3C 60 80 69 */	lis r3, lit_2298@ha /* 0x806959FC@ha */
/* 804BC794  38 A3 59 FC */	addi r5, r3, lit_2298@l /* 0x806959FC@l */
/* 804BC798  81 01 00 30 */	lwz r8, 0x30(r1)
/* 804BC79C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BC7A0  38 61 00 24 */	addi r3, r1, 0x24
/* 804BC7A4  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 804BC7A8  38 81 00 10 */	addi r4, r1, 0x10
/* 804BC7AC  A1 2A 00 08 */	lhz r9, 8(r10)
/* 804BC7B0  38 C0 14 7B */	li r6, 0x147b
/* 804BC7B4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 804BC7B8  B1 21 00 14 */	sth r9, 0x14(r1)
/* 804BC7BC  89 2A 00 0A */	lbz r9, 0xa(r10)
/* 804BC7C0  99 21 00 16 */	stb r9, 0x16(r1)
/* 804BC7C4  91 01 00 24 */	stw r8, 0x24(r1)
/* 804BC7C8  90 E1 00 28 */	stw r7, 0x28(r1)
/* 804BC7CC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804BC7D0  4B ED 55 A9 */	bl mCoBG_SetPluss5PointOffset_file
/* 804BC7D4  48 00 00 30 */	b lbl_804BC804
lbl_804BC7D8:
/* 804BC7D8  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 804BC7DC  38 61 00 18 */	addi r3, r1, 0x18
/* 804BC7E0  80 81 00 34 */	lwz r4, 0x34(r1)
/* 804BC7E4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 804BC7E8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804BC7EC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804BC7F0  90 01 00 20 */	stw r0, 0x20(r1)
/* 804BC7F4  88 8A 00 05 */	lbz r4, 5(r10)
/* 804BC7F8  88 AA 00 04 */	lbz r5, 4(r10)
/* 804BC7FC  7C 84 07 74 */	extsb r4, r4
/* 804BC800  4B ED 52 9D */	bl mCoBG_SetPlussOffset
lbl_804BC804:
/* 804BC804  3B DE 00 01 */	addi r30, r30, 1
/* 804BC808  3B 9C 00 02 */	addi r28, r28, 2
/* 804BC80C  2C 1E 00 10 */	cmpwi r30, 0x10
/* 804BC810  3B 5A 00 04 */	addi r26, r26, 4
/* 804BC814  41 80 FF 2C */	blt lbl_804BC740
/* 804BC818  3B FF 00 01 */	addi r31, r31, 1
/* 804BC81C  3B 7B 00 04 */	addi r27, r27, 4
/* 804BC820  2C 1F 00 10 */	cmpwi r31, 0x10
/* 804BC824  41 80 FF 14 */	blt lbl_804BC738
/* 804BC828  38 60 00 01 */	li r3, 1
lbl_804BC82C:
/* 804BC82C  39 61 00 60 */	addi r11, r1, 0x60
/* 804BC830  4B BD E6 E5 */	bl func_8009AF14
/* 804BC834  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804BC838  7C 08 03 A6 */	mtlr r0
/* 804BC83C  38 21 00 60 */	addi r1, r1, 0x60
/* 804BC840  4E 80 00 20 */	blr 

lbl_804CB5D8:
/* 804CB5D8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804CB5DC  7C 08 02 A6 */	mflr r0
/* 804CB5E0  90 01 00 64 */	stw r0, 0x64(r1)
/* 804CB5E4  39 61 00 60 */	addi r11, r1, 0x60
/* 804CB5E8  4B BC F8 E1 */	bl func_8009AEC8
/* 804CB5EC  7C 9B 23 78 */	mr r27, r4
/* 804CB5F0  7C BA 2B 78 */	mr r26, r5
/* 804CB5F4  7C 7D 1B 78 */	mr r29, r3
/* 804CB5F8  7F 63 DB 78 */	mr r3, r27
/* 804CB5FC  7F 44 D3 78 */	mr r4, r26
/* 804CB600  4B ED BB 55 */	bl mFI_BkNumtoUtFGTop
/* 804CB604  7C 7C 1B 79 */	or. r28, r3, r3
/* 804CB608  40 82 00 0C */	bne lbl_804CB614
/* 804CB60C  38 60 00 00 */	li r3, 0
/* 804CB610  48 00 01 2C */	b lbl_804CB73C
lbl_804CB614:
/* 804CB614  7F 65 DB 78 */	mr r5, r27
/* 804CB618  7F 46 D3 78 */	mr r6, r26
/* 804CB61C  38 61 00 0C */	addi r3, r1, 0xc
/* 804CB620  38 81 00 08 */	addi r4, r1, 8
/* 804CB624  4B ED A5 55 */	bl mFI_BkNum2WposXZ
/* 804CB628  2C 03 00 00 */	cmpwi r3, 0
/* 804CB62C  40 82 00 0C */	bne lbl_804CB638
/* 804CB630  38 60 00 00 */	li r3, 0
/* 804CB634  48 00 01 08 */	b lbl_804CB73C
lbl_804CB638:
/* 804CB638  3C 7D 00 01 */	addis r3, r29, 1
/* 804CB63C  3B E0 00 00 */	li r31, 0
/* 804CB640  83 A3 25 A0 */	lwz r29, 0x25a0(r3)
/* 804CB644  3B 60 00 00 */	li r27, 0
lbl_804CB648:
/* 804CB648  3B C0 00 00 */	li r30, 0
/* 804CB64C  3B 40 00 00 */	li r26, 0
lbl_804CB650:
/* 804CB650  A0 7C 00 00 */	lhz r3, 0(r28)
/* 804CB654  54 60 A7 3F */	rlwinm. r0, r3, 0x14, 0x1c, 0x1f
/* 804CB658  41 82 00 08 */	beq lbl_804CB660
/* 804CB65C  48 00 00 B8 */	b lbl_804CB714
lbl_804CB660:
/* 804CB660  28 03 00 00 */	cmplwi r3, 0
/* 804CB664  41 82 00 B0 */	beq lbl_804CB714
/* 804CB668  4B EF DF 15 */	bl obj_hight_table_item0_nogrow
/* 804CB66C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804CB670  7C 6A 1B 78 */	mr r10, r3
/* 804CB674  7C 1D D4 2E */	lfsx f0, r29, r26
/* 804CB678  80 03 00 00 */	lwz r0, 0(r3)
/* 804CB67C  EC 41 00 2A */	fadds f2, f1, f0
/* 804CB680  C0 21 00 08 */	lfs f1, 8(r1)
/* 804CB684  7C 1D DC 2E */	lfsx f0, r29, r27
/* 804CB688  2C 00 00 00 */	cmpwi r0, 0
/* 804CB68C  EC 01 00 2A */	fadds f0, f1, f0
/* 804CB690  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 804CB694  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804CB698  41 82 00 50 */	beq lbl_804CB6E8
/* 804CB69C  80 0A 00 04 */	lwz r0, 4(r10)
/* 804CB6A0  3C 60 80 6A */	lis r3, lit_2298@ha /* 0x8069BBCC@ha */
/* 804CB6A4  38 A3 BB CC */	addi r5, r3, lit_2298@l /* 0x8069BBCC@l */
/* 804CB6A8  81 01 00 30 */	lwz r8, 0x30(r1)
/* 804CB6AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CB6B0  38 61 00 24 */	addi r3, r1, 0x24
/* 804CB6B4  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 804CB6B8  38 81 00 10 */	addi r4, r1, 0x10
/* 804CB6BC  A1 2A 00 08 */	lhz r9, 8(r10)
/* 804CB6C0  38 C0 14 7B */	li r6, 0x147b
/* 804CB6C4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 804CB6C8  B1 21 00 14 */	sth r9, 0x14(r1)
/* 804CB6CC  89 2A 00 0A */	lbz r9, 0xa(r10)
/* 804CB6D0  99 21 00 16 */	stb r9, 0x16(r1)
/* 804CB6D4  91 01 00 24 */	stw r8, 0x24(r1)
/* 804CB6D8  90 E1 00 28 */	stw r7, 0x28(r1)
/* 804CB6DC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804CB6E0  4B EC 66 99 */	bl mCoBG_SetPluss5PointOffset_file
/* 804CB6E4  48 00 00 30 */	b lbl_804CB714
lbl_804CB6E8:
/* 804CB6E8  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 804CB6EC  38 61 00 18 */	addi r3, r1, 0x18
/* 804CB6F0  80 81 00 34 */	lwz r4, 0x34(r1)
/* 804CB6F4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 804CB6F8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804CB6FC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804CB700  90 01 00 20 */	stw r0, 0x20(r1)
/* 804CB704  88 8A 00 05 */	lbz r4, 5(r10)
/* 804CB708  88 AA 00 04 */	lbz r5, 4(r10)
/* 804CB70C  7C 84 07 74 */	extsb r4, r4
/* 804CB710  4B EC 63 8D */	bl mCoBG_SetPlussOffset
lbl_804CB714:
/* 804CB714  3B DE 00 01 */	addi r30, r30, 1
/* 804CB718  3B 9C 00 02 */	addi r28, r28, 2
/* 804CB71C  2C 1E 00 10 */	cmpwi r30, 0x10
/* 804CB720  3B 5A 00 04 */	addi r26, r26, 4
/* 804CB724  41 80 FF 2C */	blt lbl_804CB650
/* 804CB728  3B FF 00 01 */	addi r31, r31, 1
/* 804CB72C  3B 7B 00 04 */	addi r27, r27, 4
/* 804CB730  2C 1F 00 10 */	cmpwi r31, 0x10
/* 804CB734  41 80 FF 14 */	blt lbl_804CB648
/* 804CB738  38 60 00 01 */	li r3, 1
lbl_804CB73C:
/* 804CB73C  39 61 00 60 */	addi r11, r1, 0x60
/* 804CB740  4B BC F7 D5 */	bl func_8009AF14
/* 804CB744  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804CB748  7C 08 03 A6 */	mtlr r0
/* 804CB74C  38 21 00 60 */	addi r1, r1, 0x60
/* 804CB750  4E 80 00 20 */	blr 

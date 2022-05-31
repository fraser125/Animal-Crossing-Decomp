lbl_803DF8E4:
/* 803DF8E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803DF8E8  7C 08 02 A6 */	mflr r0
/* 803DF8EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DF8F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 803DF8F4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803DF8F8  3B E0 00 00 */	li r31, 0
/* 803DF8FC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 803DF900  7C 7E 1B 78 */	mr r30, r3
/* 803DF904  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803DF908  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803DF90C  2C 00 00 07 */	cmpwi r0, 7
/* 803DF910  40 82 01 B8 */	bne lbl_803DFAC8
/* 803DF914  38 61 00 24 */	addi r3, r1, 0x24
/* 803DF918  38 81 00 20 */	addi r4, r1, 0x20
/* 803DF91C  38 A0 00 01 */	li r5, 1
/* 803DF920  4B FC 6A E1 */	bl mFI_BlockKind2BkNum
/* 803DF924  88 7E 00 E4 */	lbz r3, 0xe4(r30)
/* 803DF928  88 9E 00 E5 */	lbz r4, 0xe5(r30)
/* 803DF92C  7C 63 07 74 */	extsb r3, r3
/* 803DF930  7C 84 07 74 */	extsb r4, r4
/* 803DF934  4B FC 69 B5 */	bl mFI_BkNum2BlockKind
/* 803DF938  28 03 00 00 */	cmplwi r3, 0
/* 803DF93C  41 82 01 80 */	beq lbl_803DFABC
/* 803DF940  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 803DF944  41 82 00 A8 */	beq lbl_803DF9EC
/* 803DF948  38 61 00 1C */	addi r3, r1, 0x1c
/* 803DF94C  38 81 00 18 */	addi r4, r1, 0x18
/* 803DF950  38 A0 00 10 */	li r5, 0x10
/* 803DF954  4B FC 6A AD */	bl mFI_BlockKind2BkNum
/* 803DF958  80 81 00 24 */	lwz r4, 0x24(r1)
/* 803DF95C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF960  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 803DF964  38 00 00 07 */	li r0, 7
/* 803DF968  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DF96C  3C A0 80 66 */	lis r5, data_8065BDF0@ha /* 0x8065BDF0@ha */
/* 803DF970  90 01 00 08 */	stw r0, 8(r1)
/* 803DF974  7C E0 22 78 */	xor r0, r7, r4
/* 803DF978  3C 63 00 02 */	addis r3, r3, 2
/* 803DF97C  3C 80 80 66 */	lis r4, ux_table@ha /* 0x8065BDF8@ha */
/* 803DF980  7C 06 0E 70 */	srawi r6, r0, 1
/* 803DF984  7C 00 38 38 */	and r0, r0, r7
/* 803DF988  7C 00 30 50 */	subf r0, r0, r6
/* 803DF98C  80 63 60 4C */	lwz r3, 0x604c(r3)
/* 803DF990  38 C5 BD F0 */	addi r6, r5, data_8065BDF0@l /* 0x8065BDF0@l */
/* 803DF994  89 3E 00 E5 */	lbz r9, 0xe5(r30)
/* 803DF998  54 0A 1F 7A */	rlwinm r10, r0, 3, 0x1d, 0x1d
/* 803DF99C  81 83 00 00 */	lwz r12, 0(r3)
/* 803DF9A0  88 FE 00 E4 */	lbz r7, 0xe4(r30)
/* 803DF9A4  3D 00 00 01 */	lis r8, 0x0001 /* 0x0000D011@ha */
/* 803DF9A8  7C 06 50 2E */	lwzx r0, r6, r10
/* 803DF9AC  38 A4 BD F8 */	addi r5, r4, ux_table@l /* 0x8065BDF8@l */
/* 803DF9B0  7C E6 07 74 */	extsb r6, r7
/* 803DF9B4  38 88 D0 11 */	addi r4, r8, 0xD011 /* 0x0000D011@l */
/* 803DF9B8  7D 06 02 14 */	add r8, r6, r0
/* 803DF9BC  7D 45 50 2E */	lwzx r10, r5, r10
/* 803DF9C0  7F C3 F3 78 */	mr r3, r30
/* 803DF9C4  7D 29 07 74 */	extsb r9, r9
/* 803DF9C8  38 A0 FF FF */	li r5, -1
/* 803DF9CC  38 C0 FF FF */	li r6, -1
/* 803DF9D0  38 E0 00 00 */	li r7, 0
/* 803DF9D4  7D 89 03 A6 */	mtctr r12
/* 803DF9D8  4E 80 04 21 */	bctrl 
/* 803DF9DC  2C 03 00 01 */	cmpwi r3, 1
/* 803DF9E0  40 82 00 F0 */	bne lbl_803DFAD0
/* 803DF9E4  3B E0 00 01 */	li r31, 1
/* 803DF9E8  48 00 00 E8 */	b lbl_803DFAD0
lbl_803DF9EC:
/* 803DF9EC  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 803DF9F0  41 82 00 C0 */	beq lbl_803DFAB0
/* 803DF9F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF9F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DF9FC  3C 63 00 03 */	addis r3, r3, 3
/* 803DFA00  88 03 88 6A */	lbz r0, -0x7796(r3)
/* 803DFA04  28 00 00 01 */	cmplwi r0, 1
/* 803DFA08  40 82 00 C8 */	bne lbl_803DFAD0
/* 803DFA0C  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 803DFA10  38 80 58 08 */	li r4, 0x5808
/* 803DFA14  38 A0 00 01 */	li r5, 1
/* 803DFA18  4B F9 63 29 */	bl Actor_info_fgName_search
/* 803DFA1C  28 03 00 00 */	cmplwi r3, 0
/* 803DFA20  41 82 00 B0 */	beq lbl_803DFAD0
/* 803DFA24  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 803DFA28  38 81 00 10 */	addi r4, r1, 0x10
/* 803DFA2C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 803DFA30  38 A1 00 28 */	addi r5, r1, 0x28
/* 803DFA34  90 C1 00 28 */	stw r6, 0x28(r1)
/* 803DFA38  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803DFA3C  80 03 00 30 */	lwz r0, 0x30(r3)
/* 803DFA40  38 61 00 14 */	addi r3, r1, 0x14
/* 803DFA44  90 01 00 30 */	stw r0, 0x30(r1)
/* 803DFA48  4B FC 5B C5 */	bl mFI_Wpos2UtNum_inBlock
/* 803DFA4C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803DFA50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFA54  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFA58  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D011@ha */
/* 803DFA5C  90 01 00 08 */	stw r0, 8(r1)
/* 803DFA60  3C A3 00 02 */	addis r5, r3, 2
/* 803DFA64  7F C3 F3 78 */	mr r3, r30
/* 803DFA68  38 84 D0 11 */	addi r4, r4, 0xD011 /* 0x0000D011@l */
/* 803DFA6C  81 45 60 4C */	lwz r10, 0x604c(r5)
/* 803DFA70  38 A0 FF FF */	li r5, -1
/* 803DFA74  89 1E 00 E4 */	lbz r8, 0xe4(r30)
/* 803DFA78  38 C0 FF FF */	li r6, -1
/* 803DFA7C  89 3E 00 E5 */	lbz r9, 0xe5(r30)
/* 803DFA80  38 E0 00 01 */	li r7, 1
/* 803DFA84  81 61 00 14 */	lwz r11, 0x14(r1)
/* 803DFA88  7D 08 07 74 */	extsb r8, r8
/* 803DFA8C  81 8A 00 00 */	lwz r12, 0(r10)
/* 803DFA90  7D 29 07 74 */	extsb r9, r9
/* 803DFA94  39 4B FF FD */	addi r10, r11, -3
/* 803DFA98  7D 89 03 A6 */	mtctr r12
/* 803DFA9C  4E 80 04 21 */	bctrl 
/* 803DFAA0  2C 03 00 01 */	cmpwi r3, 1
/* 803DFAA4  40 82 00 2C */	bne lbl_803DFAD0
/* 803DFAA8  3B E0 00 01 */	li r31, 1
/* 803DFAAC  48 00 00 24 */	b lbl_803DFAD0
lbl_803DFAB0:
/* 803DFAB0  4B FF FE 11 */	bl mPO_delivery_all_address_proc
/* 803DFAB4  3B E0 00 01 */	li r31, 1
/* 803DFAB8  48 00 00 18 */	b lbl_803DFAD0
lbl_803DFABC:
/* 803DFABC  4B FF FE 05 */	bl mPO_delivery_all_address_proc
/* 803DFAC0  3B E0 00 01 */	li r31, 1
/* 803DFAC4  48 00 00 0C */	b lbl_803DFAD0
lbl_803DFAC8:
/* 803DFAC8  4B FF FD F9 */	bl mPO_delivery_all_address_proc
/* 803DFACC  3B E0 00 01 */	li r31, 1
lbl_803DFAD0:
/* 803DFAD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803DFAD4  7F E3 FB 78 */	mr r3, r31
/* 803DFAD8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803DFADC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 803DFAE0  7C 08 03 A6 */	mtlr r0
/* 803DFAE4  38 21 00 40 */	addi r1, r1, 0x40
/* 803DFAE8  4E 80 00 20 */	blr 

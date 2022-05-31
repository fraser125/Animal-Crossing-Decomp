lbl_805DE620:
/* 805DE620  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805DE624  7C 08 02 A6 */	mflr r0
/* 805DE628  90 01 00 34 */	stw r0, 0x34(r1)
/* 805DE62C  39 61 00 30 */	addi r11, r1, 0x30
/* 805DE630  4B AB C8 91 */	bl func_8009AEC0
/* 805DE634  7C 7A 1B 78 */	mr r26, r3
/* 805DE638  7C 9B 23 78 */	mr r27, r4
/* 805DE63C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DE640  7C BC 2B 78 */	mr r28, r5
/* 805DE644  83 C3 09 80 */	lwz r30, 0x980(r3)
/* 805DE648  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805DE64C  A0 1E 02 34 */	lhz r0, 0x234(r30)
/* 805DE650  3B E3 00 08 */	addi r31, r3, 8
/* 805DE654  28 00 FE 31 */	cmplwi r0, 0xfe31
/* 805DE658  41 80 00 0C */	blt lbl_805DE664
/* 805DE65C  28 00 FE 38 */	cmplwi r0, 0xfe38
/* 805DE660  40 81 00 24 */	ble lbl_805DE684
lbl_805DE664:
/* 805DE664  28 00 FE 39 */	cmplwi r0, 0xfe39
/* 805DE668  41 80 00 0C */	blt lbl_805DE674
/* 805DE66C  28 00 FE 98 */	cmplwi r0, 0xfe98
/* 805DE670  40 81 00 14 */	ble lbl_805DE684
lbl_805DE674:
/* 805DE674  28 00 FE 99 */	cmplwi r0, 0xfe99
/* 805DE678  41 80 01 68 */	blt lbl_805DE7E0
/* 805DE67C  28 00 FE A0 */	cmplwi r0, 0xfea0
/* 805DE680  41 81 01 60 */	bgt lbl_805DE7E0
lbl_805DE684:
/* 805DE684  38 1C FF EF */	addi r0, r28, -17
/* 805DE688  28 00 00 09 */	cmplwi r0, 9
/* 805DE68C  41 81 00 B0 */	bgt lbl_805DE73C
/* 805DE690  3C 60 80 6D */	lis r3, lit_883@ha /* 0x806CD0AC@ha */
/* 805DE694  54 00 10 3A */	slwi r0, r0, 2
/* 805DE698  38 63 D0 AC */	addi r3, r3, lit_883@l /* 0x806CD0AC@l */
/* 805DE69C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805DE6A0  7C 09 03 A6 */	mtctr r0
/* 805DE6A4  4E 80 04 20 */	bctr 
lbl_805DE6A8:
/* 805DE6A8  7F 43 D3 78 */	mr r3, r26
/* 805DE6AC  7F 64 DB 78 */	mr r4, r27
/* 805DE6B0  48 00 AF FD */	bl mNW_check_hide_flg
/* 805DE6B4  2C 03 00 00 */	cmpwi r3, 0
/* 805DE6B8  41 82 00 10 */	beq lbl_805DE6C8
/* 805DE6BC  38 00 00 00 */	li r0, 0
/* 805DE6C0  B0 01 00 08 */	sth r0, 8(r1)
/* 805DE6C4  48 00 00 78 */	b lbl_805DE73C
lbl_805DE6C8:
/* 805DE6C8  3C 7B 00 01 */	addis r3, r27, 1
/* 805DE6CC  38 03 FE 31 */	addi r0, r3, -463
/* 805DE6D0  B0 01 00 08 */	sth r0, 8(r1)
/* 805DE6D4  48 00 00 68 */	b lbl_805DE73C
lbl_805DE6D8:
/* 805DE6D8  3C 7B 00 01 */	addis r3, r27, 1
/* 805DE6DC  38 03 FE 31 */	addi r0, r3, -463
/* 805DE6E0  B0 01 00 08 */	sth r0, 8(r1)
/* 805DE6E4  48 00 00 58 */	b lbl_805DE73C
lbl_805DE6E8:
/* 805DE6E8  7F 43 D3 78 */	mr r3, r26
/* 805DE6EC  4B FE EB 5D */	bl mCO_top_folder
/* 805DE6F0  7C 60 1B 78 */	mr r0, r3
/* 805DE6F4  7F 43 D3 78 */	mr r3, r26
/* 805DE6F8  7C 1D 03 78 */	mr r29, r0
/* 805DE6FC  7F 65 DB 78 */	mr r5, r27
/* 805DE700  7F A4 EB 78 */	mr r4, r29
/* 805DE704  4B FE EB A5 */	bl mCO_check_hide_flg
/* 805DE708  2C 03 00 00 */	cmpwi r3, 0
/* 805DE70C  41 82 00 10 */	beq lbl_805DE71C
/* 805DE710  38 00 00 00 */	li r0, 0
/* 805DE714  B0 01 00 08 */	sth r0, 8(r1)
/* 805DE718  48 00 00 24 */	b lbl_805DE73C
lbl_805DE71C:
/* 805DE71C  1C 7D 00 0C */	mulli r3, r29, 0xc
/* 805DE720  3C 03 00 01 */	addis r0, r3, 1
/* 805DE724  7C 60 DA 14 */	add r3, r0, r27
/* 805DE728  38 03 FE 39 */	addi r0, r3, -455
/* 805DE72C  B0 01 00 08 */	sth r0, 8(r1)
/* 805DE730  48 00 00 0C */	b lbl_805DE73C
lbl_805DE734:
/* 805DE734  38 00 00 00 */	li r0, 0
/* 805DE738  B0 01 00 08 */	sth r0, 8(r1)
lbl_805DE73C:
/* 805DE73C  A3 3E 02 34 */	lhz r25, 0x234(r30)
/* 805DE740  7F 43 D3 78 */	mr r3, r26
/* 805DE744  A3 01 00 08 */	lhz r24, 8(r1)
/* 805DE748  7F E4 FB 78 */	mr r4, r31
/* 805DE74C  38 A1 00 08 */	addi r5, r1, 8
/* 805DE750  38 C0 00 00 */	li r6, 0
/* 805DE754  4B FF F0 15 */	bl mHD_drop_item
/* 805DE758  A0 61 00 08 */	lhz r3, 8(r1)
/* 805DE75C  7C 19 18 40 */	cmplw r25, r3
/* 805DE760  40 82 00 80 */	bne lbl_805DE7E0
/* 805DE764  A0 1E 02 34 */	lhz r0, 0x234(r30)
/* 805DE768  7C 18 00 40 */	cmplw r24, r0
/* 805DE76C  40 82 00 74 */	bne lbl_805DE7E0
/* 805DE770  28 03 00 00 */	cmplwi r3, 0
/* 805DE774  40 82 00 2C */	bne lbl_805DE7A0
/* 805DE778  2C 1C 00 12 */	cmpwi r28, 0x12
/* 805DE77C  40 82 00 18 */	bne lbl_805DE794
/* 805DE780  7F 43 D3 78 */	mr r3, r26
/* 805DE784  7F A4 EB 78 */	mr r4, r29
/* 805DE788  7F 65 DB 78 */	mr r5, r27
/* 805DE78C  4B FE EB 51 */	bl mCO_on_hide_flg
/* 805DE790  48 00 00 10 */	b lbl_805DE7A0
lbl_805DE794:
/* 805DE794  7F 43 D3 78 */	mr r3, r26
/* 805DE798  7F 64 DB 78 */	mr r4, r27
/* 805DE79C  48 00 AF 51 */	bl mNW_on_hide_flg
lbl_805DE7A0:
/* 805DE7A0  A0 1E 02 34 */	lhz r0, 0x234(r30)
/* 805DE7A4  28 00 00 00 */	cmplwi r0, 0
/* 805DE7A8  40 82 00 38 */	bne lbl_805DE7E0
/* 805DE7AC  2C 1C 00 12 */	cmpwi r28, 0x12
/* 805DE7B0  40 82 00 10 */	bne lbl_805DE7C0
/* 805DE7B4  7F 43 D3 78 */	mr r3, r26
/* 805DE7B8  4B FE EB 51 */	bl mCO_clear_hide_flg
/* 805DE7BC  48 00 00 0C */	b lbl_805DE7C8
lbl_805DE7C0:
/* 805DE7C0  7F 43 D3 78 */	mr r3, r26
/* 805DE7C4  48 00 AF 61 */	bl mNW_clear_hide_flg
lbl_805DE7C8:
/* 805DE7C8  80 9A 00 2C */	lwz r4, 0x2c(r26)
/* 805DE7CC  7F 43 D3 78 */	mr r3, r26
/* 805DE7D0  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805DE7D4  81 84 02 E0 */	lwz r12, 0x2e0(r4)
/* 805DE7D8  7D 89 03 A6 */	mtctr r12
/* 805DE7DC  4E 80 04 21 */	bctrl 
lbl_805DE7E0:
/* 805DE7E0  39 61 00 30 */	addi r11, r1, 0x30
/* 805DE7E4  4B AB C7 29 */	bl func_8009AF0C
/* 805DE7E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805DE7EC  7C 08 03 A6 */	mtlr r0
/* 805DE7F0  38 21 00 30 */	addi r1, r1, 0x30
/* 805DE7F4  4E 80 00 20 */	blr 

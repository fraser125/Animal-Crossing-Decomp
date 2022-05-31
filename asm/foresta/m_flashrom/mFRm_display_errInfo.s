lbl_803AC8F4:
/* 803AC8F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AC8F8  7C 08 02 A6 */	mflr r0
/* 803AC8FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AC900  39 61 00 20 */	addi r11, r1, 0x20
/* 803AC904  4B CE E5 CD */	bl func_8009AED0
/* 803AC908  3C 80 81 1D */	lis r4, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 803AC90C  3C C0 80 65 */	lis r6, data_80654088@ha /* 0x80654088@ha */
/* 803AC910  80 04 B7 A8 */	lwz r0, data_811CB7A8@l(r4)  /* 0x811CB7A8@l */
/* 803AC914  3C A0 81 16 */	lis r5, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AC918  38 85 7D 18 */	addi r4, r5, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AC91C  7C 7C 1B 78 */	mr r28, r3
/* 803AC920  2C 00 00 02 */	cmpwi r0, 2
/* 803AC924  3B E6 40 88 */	addi r31, r6, data_80654088@l /* 0x80654088@l */
/* 803AC928  7C 9E 23 78 */	mr r30, r4
/* 803AC92C  41 80 00 CC */	blt lbl_803AC9F8
/* 803AC930  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803AC934  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803AC938  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803AC93C  2C 00 00 07 */	cmpwi r0, 7
/* 803AC940  40 82 00 B8 */	bne lbl_803AC9F8
/* 803AC944  38 80 00 25 */	li r4, 0x25
/* 803AC948  38 A0 00 11 */	li r5, 0x11
/* 803AC94C  4B CA E8 C5 */	bl gfxprint_locate8x8
/* 803AC950  7F 83 E3 78 */	mr r3, r28
/* 803AC954  38 80 00 FF */	li r4, 0xff
/* 803AC958  38 A0 00 FF */	li r5, 0xff
/* 803AC95C  38 C0 00 FF */	li r6, 0xff
/* 803AC960  38 E0 00 FF */	li r7, 0xff
/* 803AC964  4B CA E8 3D */	bl gfxprint_color
/* 803AC968  7F 83 E3 78 */	mr r3, r28
/* 803AC96C  38 9F 01 04 */	addi r4, r31, 0x104
/* 803AC970  4C C6 31 82 */	crclr 6
/* 803AC974  4B CA EF A9 */	bl gfxprint_printf
/* 803AC978  7F C3 F3 78 */	mr r3, r30
/* 803AC97C  38 80 00 0A */	li r4, 0xa
/* 803AC980  4B FF FE 95 */	bl mFRm_get_errInfoNum
/* 803AC984  2C 03 00 00 */	cmpwi r3, 0
/* 803AC988  40 81 00 70 */	ble lbl_803AC9F8
/* 803AC98C  3B A0 00 00 */	li r29, 0
lbl_803AC990:
/* 803AC990  7F 83 E3 78 */	mr r3, r28
/* 803AC994  38 BD 00 12 */	addi r5, r29, 0x12
/* 803AC998  38 80 00 1E */	li r4, 0x1e
/* 803AC99C  4B CA E8 75 */	bl gfxprint_locate8x8
/* 803AC9A0  80 1E 00 00 */	lwz r0, 0(r30)
/* 803AC9A4  2C 00 00 07 */	cmpwi r0, 7
/* 803AC9A8  41 82 00 50 */	beq lbl_803AC9F8
/* 803AC9AC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 803AC9B0  38 DF 00 34 */	addi r6, r31, 0x34
/* 803AC9B4  7F 83 E3 78 */	mr r3, r28
/* 803AC9B8  38 E0 00 FF */	li r7, 0xff
/* 803AC9BC  7C C6 02 14 */	add r6, r6, r0
/* 803AC9C0  80 86 00 00 */	lwz r4, 0(r6)
/* 803AC9C4  80 A6 00 04 */	lwz r5, 4(r6)
/* 803AC9C8  80 C6 00 08 */	lwz r6, 8(r6)
/* 803AC9CC  4B CA E7 D5 */	bl gfxprint_color
/* 803AC9D0  80 BE 00 00 */	lwz r5, 0(r30)
/* 803AC9D4  7F 83 E3 78 */	mr r3, r28
/* 803AC9D8  80 DE 00 04 */	lwz r6, 4(r30)
/* 803AC9DC  38 9F 01 08 */	addi r4, r31, 0x108
/* 803AC9E0  4C C6 31 82 */	crclr 6
/* 803AC9E4  4B CA EF 39 */	bl gfxprint_printf
/* 803AC9E8  3B BD 00 01 */	addi r29, r29, 1
/* 803AC9EC  3B DE 00 08 */	addi r30, r30, 8
/* 803AC9F0  2C 1D 00 0A */	cmpwi r29, 0xa
/* 803AC9F4  41 80 FF 9C */	blt lbl_803AC990
lbl_803AC9F8:
/* 803AC9F8  39 61 00 20 */	addi r11, r1, 0x20
/* 803AC9FC  4B CE E5 21 */	bl func_8009AF1C
/* 803ACA00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803ACA04  7C 08 03 A6 */	mtlr r0
/* 803ACA08  38 21 00 20 */	addi r1, r1, 0x20
/* 803ACA0C  4E 80 00 20 */	blr 

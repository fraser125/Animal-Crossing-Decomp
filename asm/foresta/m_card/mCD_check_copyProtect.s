lbl_803FB974:
/* 803FB974  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FB978  7C 08 02 A6 */	mflr r0
/* 803FB97C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FB980  39 61 00 30 */	addi r11, r1, 0x30
/* 803FB984  4B C9 F5 45 */	bl func_8009AEC8
/* 803FB988  7C 9B 23 78 */	mr r27, r4
/* 803FB98C  7C 7A 1B 78 */	mr r26, r3
/* 803FB990  2C 1B FF FF */	cmpwi r27, -1
/* 803FB994  3B 80 00 00 */	li r28, 0
/* 803FB998  41 82 00 74 */	beq lbl_803FBA0C
/* 803FB99C  28 1A 00 00 */	cmplwi r26, 0
/* 803FB9A0  41 82 00 6C */	beq lbl_803FBA0C
/* 803FB9A4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FB9A8  3C 60 80 66 */	lis r3, l_mCD_land_file_name@ha /* 0x8065E688@ha */
/* 803FB9AC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803FB9B0  3B A0 00 00 */	li r29, 0
/* 803FB9B4  3F C4 00 03 */	addis r30, r4, 3
/* 803FB9B8  3B E3 E6 88 */	addi r31, r3, l_mCD_land_file_name@l /* 0x8065E688@l */
lbl_803FB9BC:
/* 803FB9BC  38 7D 00 01 */	addi r3, r29, 1
/* 803FB9C0  4B FF EA 51 */	bl mCD_get_offset
/* 803FB9C4  7C 66 1B 78 */	mr r6, r3
/* 803FB9C8  7F 43 D3 78 */	mr r3, r26
/* 803FB9CC  7F E4 FB 78 */	mr r4, r31
/* 803FB9D0  7F 67 DB 78 */	mr r7, r27
/* 803FB9D4  39 01 00 08 */	addi r8, r1, 8
/* 803FB9D8  38 A0 02 00 */	li r5, 0x200
/* 803FB9DC  4B FF D1 3D */	bl mCD_read_fg
/* 803FB9E0  2C 03 00 01 */	cmpwi r3, 1
/* 803FB9E4  40 82 00 1C */	bne lbl_803FBA00
/* 803FB9E8  A0 7A 00 1A */	lhz r3, 0x1a(r26)
/* 803FB9EC  A0 1E 85 96 */	lhz r0, -0x7a6a(r30)
/* 803FB9F0  7C 03 00 40 */	cmplw r3, r0
/* 803FB9F4  40 82 00 0C */	bne lbl_803FBA00
/* 803FB9F8  3B 80 00 01 */	li r28, 1
/* 803FB9FC  48 00 00 10 */	b lbl_803FBA0C
lbl_803FBA00:
/* 803FBA00  3B BD 00 01 */	addi r29, r29, 1
/* 803FBA04  2C 1D 00 02 */	cmpwi r29, 2
/* 803FBA08  41 80 FF B4 */	blt lbl_803FB9BC
lbl_803FBA0C:
/* 803FBA0C  7F 83 E3 78 */	mr r3, r28
/* 803FBA10  39 61 00 30 */	addi r11, r1, 0x30
/* 803FBA14  4B C9 F5 01 */	bl func_8009AF14
/* 803FBA18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FBA1C  7C 08 03 A6 */	mtlr r0
/* 803FBA20  38 21 00 30 */	addi r1, r1, 0x30
/* 803FBA24  4E 80 00 20 */	blr 

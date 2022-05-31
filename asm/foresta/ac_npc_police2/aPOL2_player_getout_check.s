lbl_8056BAE0:
/* 8056BAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056BAE4  7C 08 02 A6 */	mflr r0
/* 8056BAE8  28 04 00 00 */	cmplwi r4, 0
/* 8056BAEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056BAF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056BAF4  7C 7F 1B 78 */	mr r31, r3
/* 8056BAF8  41 82 00 50 */	beq lbl_8056BB48
/* 8056BAFC  A0 04 13 94 */	lhz r0, 0x1394(r4)
/* 8056BB00  28 00 40 81 */	cmplwi r0, 0x4081
/* 8056BB04  40 82 00 44 */	bne lbl_8056BB48
/* 8056BB08  38 60 00 0E */	li r3, 0xe
/* 8056BB0C  4B E1 0D 15 */	bl mBGMPsComp_scene_mode
/* 8056BB10  38 60 01 95 */	li r3, 0x195
/* 8056BB14  4B E0 FF F9 */	bl mBGMPsComp_make_ps_wipe
/* 8056BB18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056BB1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056BB20  3C 63 00 02 */	addis r3, r3, 2
/* 8056BB24  38 63 0E D0 */	addi r3, r3, 0xed0
/* 8056BB28  4B E7 2C 91 */	bl func_803DE7B8
/* 8056BB2C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056BB30  7F E3 FB 78 */	mr r3, r31
/* 8056BB34  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8056BB38  38 A0 00 01 */	li r5, 1
/* 8056BB3C  3C 84 00 03 */	addis r4, r4, 3
/* 8056BB40  38 84 85 44 */	addi r4, r4, -31420
/* 8056BB44  4B E8 56 65 */	bl goto_other_scene
lbl_8056BB48:
/* 8056BB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056BB4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056BB50  7C 08 03 A6 */	mtlr r0
/* 8056BB54  38 21 00 10 */	addi r1, r1, 0x10
/* 8056BB58  4E 80 00 20 */	blr 

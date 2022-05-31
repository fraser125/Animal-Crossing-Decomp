lbl_8057FAF0:
/* 8057FAF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FAF4  7C 08 02 A6 */	mflr r0
/* 8057FAF8  38 A0 00 01 */	li r5, 1
/* 8057FAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FB00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057FB04  7C 9F 23 78 */	mr r31, r4
/* 8057FB08  38 80 58 0B */	li r4, 0x580b
/* 8057FB0C  93 C1 00 08 */	stw r30, 8(r1)
/* 8057FB10  7C 7E 1B 78 */	mr r30, r3
/* 8057FB14  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 8057FB18  4B DF 62 29 */	bl Actor_info_fgName_search
/* 8057FB1C  88 9E 09 A7 */	lbz r4, 0x9a7(r30)
/* 8057FB20  28 04 00 00 */	cmplwi r4, 0
/* 8057FB24  41 82 00 10 */	beq lbl_8057FB34
/* 8057FB28  38 04 FF FF */	addi r0, r4, -1
/* 8057FB2C  98 1E 09 A7 */	stb r0, 0x9a7(r30)
/* 8057FB30  48 00 00 68 */	b lbl_8057FB98
lbl_8057FB34:
/* 8057FB34  28 03 00 00 */	cmplwi r3, 0
/* 8057FB38  41 82 00 10 */	beq lbl_8057FB48
/* 8057FB3C  80 03 02 B4 */	lwz r0, 0x2b4(r3)
/* 8057FB40  2C 00 00 05 */	cmpwi r0, 5
/* 8057FB44  40 81 00 20 */	ble lbl_8057FB64
lbl_8057FB48:
/* 8057FB48  38 00 00 00 */	li r0, 0
/* 8057FB4C  7F C3 F3 78 */	mr r3, r30
/* 8057FB50  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8057FB54  7F E4 FB 78 */	mr r4, r31
/* 8057FB58  38 A0 00 0B */	li r5, 0xb
/* 8057FB5C  48 00 08 49 */	bl aSTM_setup_think_proc
/* 8057FB60  48 00 00 38 */	b lbl_8057FB98
lbl_8057FB64:
/* 8057FB64  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057FB68  90 7E 09 98 */	stw r3, 0x998(r30)
/* 8057FB6C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8057FB70  38 00 00 02 */	li r0, 2
/* 8057FB74  3C 83 00 03 */	addis r4, r3, 3
/* 8057FB78  7F C3 F3 78 */	mr r3, r30
/* 8057FB7C  98 04 88 3E */	stb r0, -0x77c2(r4)
/* 8057FB80  7F E4 FB 78 */	mr r4, r31
/* 8057FB84  38 A0 00 0C */	li r5, 0xc
/* 8057FB88  48 00 08 1D */	bl aSTM_setup_think_proc
/* 8057FB8C  7F C3 F3 78 */	mr r3, r30
/* 8057FB90  38 80 00 3F */	li r4, 0x3f
/* 8057FB94  4B FF FA E1 */	bl func_8057F674
lbl_8057FB98:
/* 8057FB98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FB9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057FBA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057FBA4  7C 08 03 A6 */	mtlr r0
/* 8057FBA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FBAC  4E 80 00 20 */	blr 

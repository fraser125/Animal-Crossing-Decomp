lbl_803FB160:
/* 803FB160  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FB164  7C 08 02 A6 */	mflr r0
/* 803FB168  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FB16C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB170  4B C9 FD 61 */	bl func_8009AED0
/* 803FB174  7C 7D 1B 78 */	mr r29, r3
/* 803FB178  3B 80 00 00 */	li r28, 0
/* 803FB17C  88 83 00 10 */	lbz r4, 0x10(r3)
/* 803FB180  3B C0 00 00 */	li r30, 0
/* 803FB184  54 80 07 FE */	clrlwi r0, r4, 0x1f
/* 803FB188  2C 00 00 01 */	cmpwi r0, 1
/* 803FB18C  40 82 00 08 */	bne lbl_803FB194
/* 803FB190  3B 80 00 01 */	li r28, 1
lbl_803FB194:
/* 803FB194  1C 7C 00 94 */	mulli r3, r28, 0x94
/* 803FB198  3B E3 00 54 */	addi r31, r3, 0x54
/* 803FB19C  7F FD FA 14 */	add r31, r29, r31
/* 803FB1A0  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 803FB1A4  28 00 00 00 */	cmplwi r0, 0
/* 803FB1A8  41 82 00 68 */	beq lbl_803FB210
/* 803FB1AC  3C 60 81 1A */	lis r3, noLand_code_2000@ha /* 0x8119CC74@ha */
/* 803FB1B0  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 803FB1B4  38 63 CC 74 */	addi r3, r3, noLand_code_2000@l /* 0x8119CC74@l */
/* 803FB1B8  7F 85 E3 78 */	mr r5, r28
/* 803FB1BC  4B FF FF 21 */	bl mCD_check_noLand_file
/* 803FB1C0  2C 03 00 01 */	cmpwi r3, 1
/* 803FB1C4  40 82 00 2C */	bne lbl_803FB1F0
/* 803FB1C8  3C 60 81 1A */	lis r3, noLand_code_2000@ha /* 0x8119CC74@ha */
/* 803FB1CC  3C 80 81 1A */	lis r4, l_keep_noLandCode@ha /* 0x8119CC38@ha */
/* 803FB1D0  38 63 CC 74 */	addi r3, r3, noLand_code_2000@l /* 0x8119CC74@l */
/* 803FB1D4  38 84 CC 38 */	addi r4, r4, l_keep_noLandCode@l /* 0x8119CC38@l */
/* 803FB1D8  4B FF F6 15 */	bl mCD_CompNoLandCode
/* 803FB1DC  2C 03 00 01 */	cmpwi r3, 1
/* 803FB1E0  40 82 00 10 */	bne lbl_803FB1F0
/* 803FB1E4  93 9D 00 00 */	stw r28, 0(r29)
/* 803FB1E8  3B C0 00 01 */	li r30, 1
/* 803FB1EC  48 00 00 38 */	b lbl_803FB224
lbl_803FB1F0:
/* 803FB1F0  38 00 00 01 */	li r0, 1
/* 803FB1F4  88 9D 00 10 */	lbz r4, 0x10(r29)
/* 803FB1F8  7C 03 E0 30 */	slw r3, r0, r28
/* 803FB1FC  7C 83 1B 78 */	or r3, r4, r3
/* 803FB200  38 00 00 08 */	li r0, 8
/* 803FB204  98 7D 00 10 */	stb r3, 0x10(r29)
/* 803FB208  90 1F 00 78 */	stw r0, 0x78(r31)
/* 803FB20C  48 00 00 18 */	b lbl_803FB224
lbl_803FB210:
/* 803FB210  38 00 00 01 */	li r0, 1
/* 803FB214  3B C0 FF FF */	li r30, -1
/* 803FB218  7C 00 E0 30 */	slw r0, r0, r28
/* 803FB21C  7C 80 03 78 */	or r0, r4, r0
/* 803FB220  98 1D 00 10 */	stb r0, 0x10(r29)
lbl_803FB224:
/* 803FB224  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 803FB228  2C 00 00 08 */	cmpwi r0, 8
/* 803FB22C  41 82 00 10 */	beq lbl_803FB23C
/* 803FB230  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 803FB234  4B FF F0 81 */	bl mCD_TransErrorCode
/* 803FB238  90 7F 00 78 */	stw r3, 0x78(r31)
lbl_803FB23C:
/* 803FB23C  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 803FB240  28 00 00 03 */	cmplwi r0, 3
/* 803FB244  40 82 00 20 */	bne lbl_803FB264
/* 803FB248  2C 1E 00 00 */	cmpwi r30, 0
/* 803FB24C  40 82 00 18 */	bne lbl_803FB264
/* 803FB250  80 9D 00 CC */	lwz r4, 0xcc(r29)
/* 803FB254  7F A3 EB 78 */	mr r3, r29
/* 803FB258  80 BD 01 60 */	lwz r5, 0x160(r29)
/* 803FB25C  4B FF F8 71 */	bl mCD_GetHighPriority_common
/* 803FB260  3B C0 FF FF */	li r30, -1
lbl_803FB264:
/* 803FB264  7F C3 F3 78 */	mr r3, r30
/* 803FB268  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB26C  4B C9 FC B1 */	bl func_8009AF1C
/* 803FB270  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FB274  7C 08 03 A6 */	mtlr r0
/* 803FB278  38 21 00 20 */	addi r1, r1, 0x20
/* 803FB27C  4E 80 00 20 */	blr 

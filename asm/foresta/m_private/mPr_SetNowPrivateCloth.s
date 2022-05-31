lbl_803E04B0:
/* 803E04B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E04B4  7C 08 02 A6 */	mflr r0
/* 803E04B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E04BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E04C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E04C4  3C 63 00 02 */	addis r3, r3, 2
/* 803E04C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E04CC  83 E3 61 3C */	lwz r31, 0x613c(r3)
/* 803E04D0  28 1F 00 00 */	cmplwi r31, 0
/* 803E04D4  41 82 00 18 */	beq lbl_803E04EC
/* 803E04D8  88 7F 00 14 */	lbz r3, 0x14(r31)
/* 803E04DC  4B FF FF 41 */	bl mPr_GetRandomCloth
/* 803E04E0  7C 64 1B 78 */	mr r4, r3
/* 803E04E4  7F E3 FB 78 */	mr r3, r31
/* 803E04E8  4B FF 92 C1 */	bl mPlib_change_player_cloth_info_lv2
lbl_803E04EC:
/* 803E04EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E04F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E04F4  7C 08 03 A6 */	mtlr r0
/* 803E04F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E04FC  4E 80 00 20 */	blr 

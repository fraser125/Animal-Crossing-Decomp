lbl_803AD040:
/* 803AD040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AD044  7C 08 02 A6 */	mflr r0
/* 803AD048  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AD04C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AD050  93 C1 00 08 */	stw r30, 8(r1)
/* 803AD054  7C 7E 1B 78 */	mr r30, r3
/* 803AD058  4B FF FE F1 */	bl sChk_font_sub
/* 803AD05C  7C 7F 1B 78 */	mr r31, r3
/* 803AD060  38 7E 00 01 */	addi r3, r30, 1
/* 803AD064  4B FF FF 45 */	bl sChk_header_back_start_sub
/* 803AD068  88 1E 00 02 */	lbz r0, 2(r30)
/* 803AD06C  7F FF 1B 78 */	or r31, r31, r3
/* 803AD070  28 00 00 0C */	cmplwi r0, 0xc
/* 803AD074  40 81 00 24 */	ble lbl_803AD098
/* 803AD078  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD07C  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD080  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD084  38 80 02 FE */	li r4, 0x2fe
/* 803AD088  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD08C  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD090  4B FF F7 39 */	bl mFRm_set_errInfo
/* 803AD094  3B E0 00 01 */	li r31, 1
lbl_803AD098:
/* 803AD098  38 7E 00 03 */	addi r3, r30, 3
/* 803AD09C  4B FF FF 59 */	bl sChk_paper_type_sub
/* 803AD0A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AD0A4  7F FF 1B 78 */	or r31, r31, r3
/* 803AD0A8  7F E3 FB 78 */	mr r3, r31
/* 803AD0AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AD0B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803AD0B4  7C 08 03 A6 */	mtlr r0
/* 803AD0B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803AD0BC  4E 80 00 20 */	blr 

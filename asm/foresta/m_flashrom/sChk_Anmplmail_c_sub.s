lbl_803AD448:
/* 803AD448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AD44C  7C 08 02 A6 */	mflr r0
/* 803AD450  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AD454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AD458  93 C1 00 08 */	stw r30, 8(r1)
/* 803AD45C  7C 7E 1B 78 */	mr r30, r3
/* 803AD460  4B FF FA E9 */	bl sChk_font_sub
/* 803AD464  7C 7F 1B 78 */	mr r31, r3
/* 803AD468  38 7E 00 01 */	addi r3, r30, 1
/* 803AD46C  4B FF FB 89 */	bl sChk_paper_type_sub
/* 803AD470  7F FF 1B 78 */	or r31, r31, r3
/* 803AD474  A0 7E 00 02 */	lhz r3, 2(r30)
/* 803AD478  4B FF F6 DD */	bl sChk_ItemFG_sub
/* 803AD47C  7F FF 1B 78 */	or r31, r31, r3
/* 803AD480  38 7E 00 04 */	addi r3, r30, 4
/* 803AD484  4B FF FB 25 */	bl sChk_header_back_start_sub
/* 803AD488  7F FF 1B 78 */	or r31, r31, r3
/* 803AD48C  38 7E 00 FE */	addi r3, r30, 0xfe
/* 803AD490  4B FF F9 29 */	bl sChk_lbRTC_ymd_c_sub
/* 803AD494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AD498  7F FF 1B 78 */	or r31, r31, r3
/* 803AD49C  7F E3 FB 78 */	mr r3, r31
/* 803AD4A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AD4A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803AD4A8  7C 08 03 A6 */	mtlr r0
/* 803AD4AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803AD4B0  4E 80 00 20 */	blr 

lbl_80400588:
/* 80400588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040058C  7C 08 02 A6 */	mflr r0
/* 80400590  3C 60 81 19 */	lis r3, l_memMgr@ha /* 0x81197638@ha */
/* 80400594  38 A0 00 01 */	li r5, 1
/* 80400598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040059C  38 63 76 38 */	addi r3, r3, l_memMgr@l /* 0x81197638@l */
/* 804005A0  38 C0 00 02 */	li r6, 2
/* 804005A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804005A8  7C 7F 1B 78 */	mr r31, r3
/* 804005AC  38 83 00 14 */	addi r4, r3, 0x14
/* 804005B0  93 C1 00 08 */	stw r30, 8(r1)
/* 804005B4  3B C0 FF FF */	li r30, -1
/* 804005B8  4B FF B4 71 */	bl mCD_bg_get_area_common
/* 804005BC  2C 03 00 01 */	cmpwi r3, 1
/* 804005C0  40 82 00 20 */	bne lbl_804005E0
/* 804005C4  7F E3 FB 78 */	mr r3, r31
/* 804005C8  4B FF B0 F1 */	bl mCD_get_this_land_slot_no
/* 804005CC  2C 03 00 01 */	cmpwi r3, 1
/* 804005D0  40 82 00 08 */	bne lbl_804005D8
/* 804005D4  83 DF 00 00 */	lwz r30, 0(r31)
lbl_804005D8:
/* 804005D8  7F E3 FB 78 */	mr r3, r31
/* 804005DC  4B FF 9E F1 */	bl mCD_ClearMemMgr_com2
lbl_804005E0:
/* 804005E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804005E4  7F C3 F3 78 */	mr r3, r30
/* 804005E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804005EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804005F0  7C 08 03 A6 */	mtlr r0
/* 804005F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804005F8  4E 80 00 20 */	blr 

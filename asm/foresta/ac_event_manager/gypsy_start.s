lbl_8041E570:
/* 8041E570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E574  7C 08 02 A6 */	mflr r0
/* 8041E578  38 A0 58 27 */	li r5, 0x5827
/* 8041E57C  38 C0 00 51 */	li r6, 0x51
/* 8041E580  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041E588  7C 9F 23 78 */	mr r31, r4
/* 8041E58C  4B FF D7 51 */	bl make_FG_somewhere_lot4sale
/* 8041E590  3C 80 81 1D */	lis r4, spppp@ha /* 0x811CB960@ha */
/* 8041E594  90 64 B9 60 */	stw r3, spppp@l(r4)  /* 0x811CB960@l */
/* 8041E598  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041E59C  4B F7 F6 51 */	bl mEv_check_keep
/* 8041E5A0  2C 03 00 00 */	cmpwi r3, 0
/* 8041E5A4  40 82 00 14 */	bne lbl_8041E5B8
/* 8041E5A8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041E5AC  4B F7 F5 D9 */	bl mEv_set_keep
/* 8041E5B0  3B E0 00 01 */	li r31, 1
/* 8041E5B4  48 00 00 08 */	b lbl_8041E5BC
lbl_8041E5B8:
/* 8041E5B8  3B E0 00 02 */	li r31, 2
lbl_8041E5BC:
/* 8041E5BC  38 60 00 05 */	li r3, 5
/* 8041E5C0  4B F7 C3 B9 */	bl mEv_EventON
/* 8041E5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E5C8  7F E3 FB 78 */	mr r3, r31
/* 8041E5CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041E5D0  7C 08 03 A6 */	mtlr r0
/* 8041E5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E5D8  4E 80 00 20 */	blr 

lbl_8041DED4:
/* 8041DED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041DED8  7C 08 02 A6 */	mflr r0
/* 8041DEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041DEE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041DEE4  3B E0 00 02 */	li r31, 2
/* 8041DEE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8041DEEC  7C 9E 23 78 */	mr r30, r4
/* 8041DEF0  80 64 00 00 */	lwz r3, 0(r4)
/* 8041DEF4  4B F7 FC F9 */	bl mEv_check_keep
/* 8041DEF8  2C 03 00 00 */	cmpwi r3, 0
/* 8041DEFC  41 82 00 10 */	beq lbl_8041DF0C
/* 8041DF00  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041DF04  4B F7 FC B5 */	bl mEv_clear_keep
/* 8041DF08  3B E0 00 01 */	li r31, 1
lbl_8041DF0C:
/* 8041DF0C  3C 60 81 1D */	lis r3, spppp@ha /* 0x811CB960@ha */
/* 8041DF10  38 00 00 00 */	li r0, 0
/* 8041DF14  38 83 B9 60 */	addi r4, r3, spppp@l /* 0x811CB960@l */
/* 8041DF18  38 60 00 03 */	li r3, 3
/* 8041DF1C  90 04 00 00 */	stw r0, 0(r4)
/* 8041DF20  4B F7 CA A9 */	bl mEv_EventOFF
/* 8041DF24  4B F8 08 F9 */	bl mEv_make_new_special_event
/* 8041DF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041DF2C  7F E3 FB 78 */	mr r3, r31
/* 8041DF30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041DF34  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041DF38  7C 08 03 A6 */	mtlr r0
/* 8041DF3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8041DF40  4E 80 00 20 */	blr 

lbl_8041E0C0:
/* 8041E0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E0C4  7C 08 02 A6 */	mflr r0
/* 8041E0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E0CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041E0D0  3B E0 00 02 */	li r31, 2
/* 8041E0D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8041E0D8  7C 9E 23 78 */	mr r30, r4
/* 8041E0DC  80 64 00 00 */	lwz r3, 0(r4)
/* 8041E0E0  4B F7 FB 0D */	bl mEv_check_keep
/* 8041E0E4  2C 03 00 00 */	cmpwi r3, 0
/* 8041E0E8  41 82 00 10 */	beq lbl_8041E0F8
/* 8041E0EC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041E0F0  4B F7 FA C9 */	bl mEv_clear_keep
/* 8041E0F4  3B E0 00 01 */	li r31, 1
lbl_8041E0F8:
/* 8041E0F8  3C 60 81 1D */	lis r3, spppp@ha /* 0x811CB960@ha */
/* 8041E0FC  38 00 00 00 */	li r0, 0
/* 8041E100  38 83 B9 60 */	addi r4, r3, spppp@l /* 0x811CB960@l */
/* 8041E104  38 60 00 02 */	li r3, 2
/* 8041E108  90 04 00 00 */	stw r0, 0(r4)
/* 8041E10C  4B F7 C8 BD */	bl mEv_EventOFF
/* 8041E110  4B F8 07 0D */	bl mEv_make_new_special_event
/* 8041E114  7F C3 F3 78 */	mr r3, r30
/* 8041E118  38 80 00 51 */	li r4, 0x51
/* 8041E11C  4B FF D9 D9 */	bl delete_FG
/* 8041E120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E124  7F E3 FB 78 */	mr r3, r31
/* 8041E128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041E12C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041E130  7C 08 03 A6 */	mtlr r0
/* 8041E134  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E138  4E 80 00 20 */	blr 

lbl_8041E5DC:
/* 8041E5DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E5E0  7C 08 02 A6 */	mflr r0
/* 8041E5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E5E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041E5EC  3B E0 00 02 */	li r31, 2
/* 8041E5F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8041E5F4  7C 9E 23 78 */	mr r30, r4
/* 8041E5F8  80 64 00 00 */	lwz r3, 0(r4)
/* 8041E5FC  4B F7 F5 F1 */	bl mEv_check_keep
/* 8041E600  2C 03 00 00 */	cmpwi r3, 0
/* 8041E604  41 82 00 10 */	beq lbl_8041E614
/* 8041E608  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041E60C  4B F7 F5 AD */	bl mEv_clear_keep
/* 8041E610  3B E0 00 01 */	li r31, 1
lbl_8041E614:
/* 8041E614  38 60 00 05 */	li r3, 5
/* 8041E618  4B F7 C3 B1 */	bl mEv_EventOFF
/* 8041E61C  4B F8 02 01 */	bl mEv_make_new_special_event
/* 8041E620  7F C3 F3 78 */	mr r3, r30
/* 8041E624  38 80 00 51 */	li r4, 0x51
/* 8041E628  4B FF D4 CD */	bl delete_FG
/* 8041E62C  3C 60 81 1D */	lis r3, spppp@ha /* 0x811CB960@ha */
/* 8041E630  38 00 00 00 */	li r0, 0
/* 8041E634  38 83 B9 60 */	addi r4, r3, spppp@l /* 0x811CB960@l */
/* 8041E638  7F E3 FB 78 */	mr r3, r31
/* 8041E63C  90 04 00 00 */	stw r0, 0(r4)
/* 8041E640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041E644  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041E648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E64C  7C 08 03 A6 */	mtlr r0
/* 8041E650  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E654  4E 80 00 20 */	blr 

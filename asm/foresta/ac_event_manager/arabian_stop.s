lbl_8041E448:
/* 8041E448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E44C  7C 08 02 A6 */	mflr r0
/* 8041E450  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041E458  3B E0 00 02 */	li r31, 2
/* 8041E45C  93 C1 00 08 */	stw r30, 8(r1)
/* 8041E460  7C 9E 23 78 */	mr r30, r4
/* 8041E464  80 64 00 00 */	lwz r3, 0(r4)
/* 8041E468  4B F7 F7 85 */	bl mEv_check_keep
/* 8041E46C  2C 03 00 00 */	cmpwi r3, 0
/* 8041E470  41 82 00 10 */	beq lbl_8041E480
/* 8041E474  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041E478  4B F7 F7 41 */	bl mEv_clear_keep
/* 8041E47C  3B E0 00 01 */	li r31, 1
lbl_8041E480:
/* 8041E480  3C 60 81 1D */	lis r3, spppp@ha /* 0x811CB960@ha */
/* 8041E484  38 00 00 00 */	li r0, 0
/* 8041E488  38 83 B9 60 */	addi r4, r3, spppp@l /* 0x811CB960@l */
/* 8041E48C  38 60 00 04 */	li r3, 4
/* 8041E490  90 04 00 00 */	stw r0, 0(r4)
/* 8041E494  4B F7 C5 35 */	bl mEv_EventOFF
/* 8041E498  4B F8 03 85 */	bl mEv_make_new_special_event
/* 8041E49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E4A0  7F E3 FB 78 */	mr r3, r31
/* 8041E4A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041E4A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041E4AC  7C 08 03 A6 */	mtlr r0
/* 8041E4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E4B4  4E 80 00 20 */	blr 

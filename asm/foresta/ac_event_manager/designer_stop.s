lbl_8041E248:
/* 8041E248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E24C  7C 08 02 A6 */	mflr r0
/* 8041E250  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041E258  3B E0 00 02 */	li r31, 2
/* 8041E25C  93 C1 00 08 */	stw r30, 8(r1)
/* 8041E260  7C 9E 23 78 */	mr r30, r4
/* 8041E264  80 64 00 00 */	lwz r3, 0(r4)
/* 8041E268  4B F7 F9 85 */	bl mEv_check_keep
/* 8041E26C  2C 03 00 00 */	cmpwi r3, 0
/* 8041E270  41 82 00 10 */	beq lbl_8041E280
/* 8041E274  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041E278  4B F7 F9 41 */	bl mEv_clear_keep
/* 8041E27C  3B E0 00 01 */	li r31, 1
lbl_8041E280:
/* 8041E280  3C 60 81 1D */	lis r3, spppp@ha /* 0x811CB960@ha */
/* 8041E284  38 00 00 00 */	li r0, 0
/* 8041E288  38 83 B9 60 */	addi r4, r3, spppp@l /* 0x811CB960@l */
/* 8041E28C  38 60 00 01 */	li r3, 1
/* 8041E290  90 04 00 00 */	stw r0, 0(r4)
/* 8041E294  4B F7 C7 35 */	bl mEv_EventOFF
/* 8041E298  4B F8 05 85 */	bl mEv_make_new_special_event
/* 8041E29C  7F C3 F3 78 */	mr r3, r30
/* 8041E2A0  38 80 00 51 */	li r4, 0x51
/* 8041E2A4  4B FF D8 51 */	bl delete_FG
/* 8041E2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E2AC  7F E3 FB 78 */	mr r3, r31
/* 8041E2B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041E2B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041E2B8  7C 08 03 A6 */	mtlr r0
/* 8041E2BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E2C0  4E 80 00 20 */	blr 

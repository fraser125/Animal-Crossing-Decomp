lbl_8041EDA4:
/* 8041EDA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041EDA8  7C 08 02 A6 */	mflr r0
/* 8041EDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041EDB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041EDB4  7C 9F 23 78 */	mr r31, r4
/* 8041EDB8  93 C1 00 08 */	stw r30, 8(r1)
/* 8041EDBC  7C 7E 1B 78 */	mr r30, r3
/* 8041EDC0  80 64 00 00 */	lwz r3, 0(r4)
/* 8041EDC4  38 80 00 40 */	li r4, 0x40
/* 8041EDC8  4B F7 ED 39 */	bl mEv_check_status
/* 8041EDCC  2C 03 00 00 */	cmpwi r3, 0
/* 8041EDD0  41 82 00 30 */	beq lbl_8041EE00
/* 8041EDD4  7F C3 F3 78 */	mr r3, r30
/* 8041EDD8  7F E4 FB 78 */	mr r4, r31
/* 8041EDDC  38 A0 00 51 */	li r5, 0x51
/* 8041EDE0  4B FF E0 B9 */	bl walk_actor_at_wade
/* 8041EDE4  28 03 00 00 */	cmplwi r3, 0
/* 8041EDE8  41 82 00 18 */	beq lbl_8041EE00
/* 8041EDEC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041EDF0  38 80 00 40 */	li r4, 0x40
/* 8041EDF4  4B F7 EC 8D */	bl mEv_clear_status
/* 8041EDF8  38 60 00 01 */	li r3, 1
/* 8041EDFC  48 00 00 08 */	b lbl_8041EE04
lbl_8041EE00:
/* 8041EE00  38 60 00 00 */	li r3, 0
lbl_8041EE04:
/* 8041EE04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041EE08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041EE0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041EE10  7C 08 03 A6 */	mtlr r0
/* 8041EE14  38 21 00 10 */	addi r1, r1, 0x10
/* 8041EE18  4E 80 00 20 */	blr 

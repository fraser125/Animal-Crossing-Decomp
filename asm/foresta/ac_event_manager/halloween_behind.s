lbl_8041EF94:
/* 8041EF94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041EF98  7C 08 02 A6 */	mflr r0
/* 8041EF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041EFA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041EFA4  7C 9F 23 78 */	mr r31, r4
/* 8041EFA8  93 C1 00 08 */	stw r30, 8(r1)
/* 8041EFAC  7C 7E 1B 78 */	mr r30, r3
/* 8041EFB0  80 64 00 00 */	lwz r3, 0(r4)
/* 8041EFB4  38 80 00 40 */	li r4, 0x40
/* 8041EFB8  4B F7 EB 49 */	bl mEv_check_status
/* 8041EFBC  2C 03 00 00 */	cmpwi r3, 0
/* 8041EFC0  41 82 00 30 */	beq lbl_8041EFF0
/* 8041EFC4  7F C3 F3 78 */	mr r3, r30
/* 8041EFC8  7F E4 FB 78 */	mr r4, r31
/* 8041EFCC  38 A0 00 51 */	li r5, 0x51
/* 8041EFD0  4B FF DE C9 */	bl walk_actor_at_wade
/* 8041EFD4  28 03 00 00 */	cmplwi r3, 0
/* 8041EFD8  41 82 00 18 */	beq lbl_8041EFF0
/* 8041EFDC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041EFE0  38 80 00 40 */	li r4, 0x40
/* 8041EFE4  4B F7 EA 9D */	bl mEv_clear_status
/* 8041EFE8  38 60 00 01 */	li r3, 1
/* 8041EFEC  48 00 00 08 */	b lbl_8041EFF4
lbl_8041EFF0:
/* 8041EFF0  38 60 00 00 */	li r3, 0
lbl_8041EFF4:
/* 8041EFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041EFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041EFFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041F000  7C 08 03 A6 */	mtlr r0
/* 8041F004  38 21 00 10 */	addi r1, r1, 0x10
/* 8041F008  4E 80 00 20 */	blr 

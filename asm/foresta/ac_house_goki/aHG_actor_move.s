lbl_8050C0BC:
/* 8050C0BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050C0C0  7C 08 02 A6 */	mflr r0
/* 8050C0C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050C0C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050C0CC  7C 7F 1B 78 */	mr r31, r3
/* 8050C0D0  93 C1 00 08 */	stw r30, 8(r1)
/* 8050C0D4  7C 9E 23 78 */	mr r30, r4
/* 8050C0D8  4B FF F5 AD */	bl aHG_position_move
/* 8050C0DC  7F E3 FB 78 */	mr r3, r31
/* 8050C0E0  4B FF F6 19 */	bl aHG_BGcheck
/* 8050C0E4  7F E3 FB 78 */	mr r3, r31
/* 8050C0E8  4B FF F3 51 */	bl aHG_calc_timer
/* 8050C0EC  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 8050C0F0  2C 00 00 04 */	cmpwi r0, 4
/* 8050C0F4  41 82 00 38 */	beq lbl_8050C12C
/* 8050C0F8  7F E3 FB 78 */	mr r3, r31
/* 8050C0FC  4B FF F6 5D */	bl aHG_calc_add_alpha
/* 8050C100  2C 03 00 01 */	cmpwi r3, 1
/* 8050C104  40 82 00 28 */	bne lbl_8050C12C
/* 8050C108  7F E3 FB 78 */	mr r3, r31
/* 8050C10C  7F C4 F3 78 */	mr r4, r30
/* 8050C110  4B FF F6 85 */	bl aHG_check_dead
/* 8050C114  2C 03 00 01 */	cmpwi r3, 1
/* 8050C118  40 82 00 14 */	bne lbl_8050C12C
/* 8050C11C  7F E3 FB 78 */	mr r3, r31
/* 8050C120  7F C4 F3 78 */	mr r4, r30
/* 8050C124  38 A0 00 04 */	li r5, 4
/* 8050C128  4B FF FF 4D */	bl aHG_setupAction
lbl_8050C12C:
/* 8050C12C  81 9F 01 74 */	lwz r12, 0x174(r31)
/* 8050C130  7F E3 FB 78 */	mr r3, r31
/* 8050C134  7F C4 F3 78 */	mr r4, r30
/* 8050C138  7D 89 03 A6 */	mtctr r12
/* 8050C13C  4E 80 04 21 */	bctrl 
/* 8050C140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050C144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050C148  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050C14C  7C 08 03 A6 */	mtlr r0
/* 8050C150  38 21 00 10 */	addi r1, r1, 0x10
/* 8050C154  4E 80 00 20 */	blr 

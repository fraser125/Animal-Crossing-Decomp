lbl_8039D5E4:
/* 8039D5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039D5E8  7C 08 02 A6 */	mflr r0
/* 8039D5EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039D5F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039D5F4  3B E0 00 00 */	li r31, 0
/* 8039D5F8  48 03 E7 55 */	bl mPlib_able_player_warp_forEvent
/* 8039D5FC  2C 03 00 00 */	cmpwi r3, 0
/* 8039D600  41 82 00 14 */	beq lbl_8039D614
/* 8039D604  48 03 C9 3D */	bl mPlib_Get_unable_wade
/* 8039D608  2C 03 00 00 */	cmpwi r3, 0
/* 8039D60C  40 82 00 08 */	bne lbl_8039D614
/* 8039D610  3B E0 00 01 */	li r31, 1
lbl_8039D614:
/* 8039D614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039D618  7F E3 FB 78 */	mr r3, r31
/* 8039D61C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039D620  7C 08 03 A6 */	mtlr r0
/* 8039D624  38 21 00 10 */	addi r1, r1, 0x10
/* 8039D628  4E 80 00 20 */	blr 

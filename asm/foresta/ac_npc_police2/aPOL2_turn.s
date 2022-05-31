lbl_8056BE70:
/* 8056BE70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056BE74  7C 08 02 A6 */	mflr r0
/* 8056BE78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056BE7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8056BE80  4B B2 F0 55 */	bl func_8009AED4
/* 8056BE84  7C 9E 23 78 */	mr r30, r4
/* 8056BE88  7C 7D 1B 78 */	mr r29, r3
/* 8056BE8C  7F C3 F3 78 */	mr r3, r30
/* 8056BE90  4B E6 D7 B1 */	bl get_player_actor_withoutCheck
/* 8056BE94  7C 7F 1B 78 */	mr r31, r3
/* 8056BE98  7F A3 EB 78 */	mr r3, r29
/* 8056BE9C  7F C4 F3 78 */	mr r4, r30
/* 8056BEA0  4B FF FB 15 */	bl aPOL2_message_ctrl
/* 8056BEA4  28 1F 00 00 */	cmplwi r31, 0
/* 8056BEA8  41 82 00 48 */	beq lbl_8056BEF0
/* 8056BEAC  AB FD 09 A0 */	lha r31, 0x9a0(r29)
/* 8056BEB0  38 7D 00 DE */	addi r3, r29, 0xde
/* 8056BEB4  38 A0 08 00 */	li r5, 0x800
/* 8056BEB8  7F E4 FB 78 */	mr r4, r31
/* 8056BEBC  4B E4 EC 89 */	bl chase_angle
/* 8056BEC0  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 8056BEC4  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 8056BEC8  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 8056BECC  7C 60 F8 51 */	subf. r3, r0, r31
/* 8056BED0  7C 03 00 D0 */	neg r0, r3
/* 8056BED4  41 80 00 08 */	blt lbl_8056BEDC
/* 8056BED8  7C 60 1B 78 */	mr r0, r3
lbl_8056BEDC:
/* 8056BEDC  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8056BEE0  41 81 00 10 */	bgt lbl_8056BEF0
/* 8056BEE4  7F A3 EB 78 */	mr r3, r29
/* 8056BEE8  38 80 00 01 */	li r4, 1
/* 8056BEEC  48 00 02 15 */	bl aPOL2_setupAction
lbl_8056BEF0:
/* 8056BEF0  39 61 00 20 */	addi r11, r1, 0x20
/* 8056BEF4  4B B2 F0 2D */	bl func_8009AF20
/* 8056BEF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056BEFC  7C 08 03 A6 */	mtlr r0
/* 8056BF00  38 21 00 20 */	addi r1, r1, 0x20
/* 8056BF04  4E 80 00 20 */	blr 

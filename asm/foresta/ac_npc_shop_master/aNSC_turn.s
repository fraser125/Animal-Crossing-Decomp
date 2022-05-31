lbl_8057B860:
/* 8057B860  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057B864  7C 08 02 A6 */	mflr r0
/* 8057B868  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057B86C  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B870  4B B1 F6 65 */	bl func_8009AED4
/* 8057B874  7C 7D 1B 78 */	mr r29, r3
/* 8057B878  7C 9E 23 78 */	mr r30, r4
/* 8057B87C  4B FF CD 99 */	bl aNSC_message_ctrl
/* 8057B880  2C 03 00 01 */	cmpwi r3, 1
/* 8057B884  41 82 00 5C */	beq lbl_8057B8E0
/* 8057B888  7F C3 F3 78 */	mr r3, r30
/* 8057B88C  4B E5 DD B5 */	bl get_player_actor_withoutCheck
/* 8057B890  28 03 00 00 */	cmplwi r3, 0
/* 8057B894  41 82 00 4C */	beq lbl_8057B8E0
/* 8057B898  AB FD 09 A6 */	lha r31, 0x9a6(r29)
/* 8057B89C  38 7D 00 DE */	addi r3, r29, 0xde
/* 8057B8A0  38 A0 08 00 */	li r5, 0x800
/* 8057B8A4  7F E4 FB 78 */	mr r4, r31
/* 8057B8A8  4B E3 F2 9D */	bl chase_angle
/* 8057B8AC  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 8057B8B0  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 8057B8B4  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 8057B8B8  7C 60 F8 51 */	subf. r3, r0, r31
/* 8057B8BC  7C 03 00 D0 */	neg r0, r3
/* 8057B8C0  41 80 00 08 */	blt lbl_8057B8C8
/* 8057B8C4  7C 60 1B 78 */	mr r0, r3
lbl_8057B8C8:
/* 8057B8C8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8057B8CC  41 81 00 14 */	bgt lbl_8057B8E0
/* 8057B8D0  7F A3 EB 78 */	mr r3, r29
/* 8057B8D4  7F C4 F3 78 */	mr r4, r30
/* 8057B8D8  38 A0 00 3D */	li r5, 0x3d
/* 8057B8DC  48 00 0B D9 */	bl aNSC_setupAction
lbl_8057B8E0:
/* 8057B8E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B8E4  4B B1 F6 3D */	bl func_8009AF20
/* 8057B8E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057B8EC  7C 08 03 A6 */	mtlr r0
/* 8057B8F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8057B8F4  4E 80 00 20 */	blr 

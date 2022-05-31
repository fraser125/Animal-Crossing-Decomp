lbl_80551BE0:
/* 80551BE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80551BE4  7C 08 02 A6 */	mflr r0
/* 80551BE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551BEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80551BF0  4B B4 92 E5 */	bl func_8009AED4
/* 80551BF4  7C 7D 1B 78 */	mr r29, r3
/* 80551BF8  7C 9E 23 78 */	mr r30, r4
/* 80551BFC  4B FF CD 99 */	bl aNSC_message_ctrl
/* 80551C00  2C 03 00 01 */	cmpwi r3, 1
/* 80551C04  41 82 00 5C */	beq lbl_80551C60
/* 80551C08  7F C3 F3 78 */	mr r3, r30
/* 80551C0C  4B E8 7A 35 */	bl get_player_actor_withoutCheck
/* 80551C10  28 03 00 00 */	cmplwi r3, 0
/* 80551C14  41 82 00 4C */	beq lbl_80551C60
/* 80551C18  AB FD 09 A6 */	lha r31, 0x9a6(r29)
/* 80551C1C  38 7D 00 DE */	addi r3, r29, 0xde
/* 80551C20  38 A0 08 00 */	li r5, 0x800
/* 80551C24  7F E4 FB 78 */	mr r4, r31
/* 80551C28  4B E6 8F 1D */	bl chase_angle
/* 80551C2C  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 80551C30  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 80551C34  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 80551C38  7C 60 F8 51 */	subf. r3, r0, r31
/* 80551C3C  7C 03 00 D0 */	neg r0, r3
/* 80551C40  41 80 00 08 */	blt lbl_80551C48
/* 80551C44  7C 60 1B 78 */	mr r0, r3
lbl_80551C48:
/* 80551C48  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80551C4C  41 81 00 14 */	bgt lbl_80551C60
/* 80551C50  7F A3 EB 78 */	mr r3, r29
/* 80551C54  7F C4 F3 78 */	mr r4, r30
/* 80551C58  38 A0 00 3D */	li r5, 0x3d
/* 80551C5C  48 00 0B D9 */	bl aNSC_setupAction
lbl_80551C60:
/* 80551C60  39 61 00 20 */	addi r11, r1, 0x20
/* 80551C64  4B B4 92 BD */	bl func_8009AF20
/* 80551C68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80551C6C  7C 08 03 A6 */	mtlr r0
/* 80551C70  38 21 00 20 */	addi r1, r1, 0x20
/* 80551C74  4E 80 00 20 */	blr 

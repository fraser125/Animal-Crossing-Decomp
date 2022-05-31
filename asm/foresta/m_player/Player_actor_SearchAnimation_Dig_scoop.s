lbl_804F78EC:
/* 804F78EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F78F0  7C 08 02 A6 */	mflr r0
/* 804F78F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F78F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F78FC  7C 9F 23 78 */	mr r31, r4
/* 804F7900  93 C1 00 08 */	stw r30, 8(r1)
/* 804F7904  7C 7E 1B 78 */	mr r30, r3
/* 804F7908  4B FD FB D5 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F790C  2C 03 00 00 */	cmpwi r3, 0
/* 804F7910  40 82 00 3C */	bne lbl_804F794C
/* 804F7914  7F C3 F3 78 */	mr r3, r30
/* 804F7918  7F E4 FB 78 */	mr r4, r31
/* 804F791C  4B FF FC F1 */	bl Player_actor_SetEffect_Dig_scoop
/* 804F7920  7F C3 F3 78 */	mr r3, r30
/* 804F7924  4B FF FD 11 */	bl Player_actor_Put_Hole_Dig_scoop
/* 804F7928  7F C3 F3 78 */	mr r3, r30
/* 804F792C  4B FF FE 1D */	bl Player_actor_SetSound_Dig_scoop
/* 804F7930  7F C3 F3 78 */	mr r3, r30
/* 804F7934  7F E4 FB 78 */	mr r4, r31
/* 804F7938  38 A0 00 00 */	li r5, 0
/* 804F793C  38 C0 00 00 */	li r6, 0
/* 804F7940  4B FE 39 B1 */	bl Player_actor_Set_FootMark_Base1
/* 804F7944  7F C3 F3 78 */	mr r3, r30
/* 804F7948  4B FF FE F5 */	bl Player_actor_informed_insects_Dig_scoop
lbl_804F794C:
/* 804F794C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7950  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F7954  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F7958  7C 08 03 A6 */	mtlr r0
/* 804F795C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7960  4E 80 00 20 */	blr 

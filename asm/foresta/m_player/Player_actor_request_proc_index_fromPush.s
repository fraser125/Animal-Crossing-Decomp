lbl_804EA848:
/* 804EA848  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EA84C  7C 08 02 A6 */	mflr r0
/* 804EA850  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EA854  39 61 00 20 */	addi r11, r1, 0x20
/* 804EA858  4B BB 06 7D */	bl func_8009AED4
/* 804EA85C  2C 05 00 00 */	cmpwi r5, 0
/* 804EA860  7C 7D 1B 78 */	mr r29, r3
/* 804EA864  7C 9E 23 78 */	mr r30, r4
/* 804EA868  41 82 00 38 */	beq lbl_804EA8A0
/* 804EA86C  83 FD 0D 18 */	lwz r31, 0xd18(r29)
/* 804EA870  A8 7D 00 36 */	lha r3, 0x36(r29)
/* 804EA874  4B FE C9 D9 */	bl Player_actor_Get_Index_fromAngle
/* 804EA878  3C 80 80 65 */	lis r4, lit_8374@ha /* 0x80648494@ha */
/* 804EA87C  7C 60 1B 78 */	mr r0, r3
/* 804EA880  C0 24 84 94 */	lfs f1, lit_8374@l(r4)  /* 0x80648494@l */
/* 804EA884  7F C3 F3 78 */	mr r3, r30
/* 804EA888  7C 05 03 78 */	mr r5, r0
/* 804EA88C  7F E4 FB 78 */	mr r4, r31
/* 804EA890  38 DD 00 28 */	addi r6, r29, 0x28
/* 804EA894  38 E0 00 01 */	li r7, 1
/* 804EA898  39 00 00 16 */	li r8, 0x16
/* 804EA89C  4B FF F6 1D */	bl Player_actor_request_main_hold
lbl_804EA8A0:
/* 804EA8A0  39 61 00 20 */	addi r11, r1, 0x20
/* 804EA8A4  4B BB 06 7D */	bl func_8009AF20
/* 804EA8A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EA8AC  7C 08 03 A6 */	mtlr r0
/* 804EA8B0  38 21 00 20 */	addi r1, r1, 0x20
/* 804EA8B4  4E 80 00 20 */	blr 

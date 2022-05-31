lbl_804F9918:
/* 804F9918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F991C  7C 08 02 A6 */	mflr r0
/* 804F9920  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F9928  7C 9F 23 78 */	mr r31, r4
/* 804F992C  93 C1 00 08 */	stw r30, 8(r1)
/* 804F9930  7C 7E 1B 78 */	mr r30, r3
/* 804F9934  4B FD DB A9 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F9938  2C 03 00 00 */	cmpwi r3, 0
/* 804F993C  40 82 00 2C */	bne lbl_804F9968
/* 804F9940  7F C3 F3 78 */	mr r3, r30
/* 804F9944  7F E4 FB 78 */	mr r4, r31
/* 804F9948  4B FF FF AD */	bl Player_actor_SetEffect_Putin_scoop
/* 804F994C  7F C3 F3 78 */	mr r3, r30
/* 804F9950  4B FF E7 C5 */	bl Player_actor_SetSound_Fill_scoop
/* 804F9954  7F C3 F3 78 */	mr r3, r30
/* 804F9958  7F E4 FB 78 */	mr r4, r31
/* 804F995C  38 A0 00 00 */	li r5, 0
/* 804F9960  38 C0 00 00 */	li r6, 0
/* 804F9964  4B FE 19 8D */	bl Player_actor_Set_FootMark_Base1
lbl_804F9968:
/* 804F9968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F996C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F9970  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F9974  7C 08 03 A6 */	mtlr r0
/* 804F9978  38 21 00 10 */	addi r1, r1, 0x10
/* 804F997C  4E 80 00 20 */	blr 

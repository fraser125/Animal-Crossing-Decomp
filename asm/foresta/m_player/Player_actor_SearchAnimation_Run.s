lbl_804E6DD8:
/* 804E6DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E6DDC  7C 08 02 A6 */	mflr r0
/* 804E6DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E6DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E6DE8  7C 9F 23 78 */	mr r31, r4
/* 804E6DEC  93 C1 00 08 */	stw r30, 8(r1)
/* 804E6DF0  7C 7E 1B 78 */	mr r30, r3
/* 804E6DF4  4B FF 06 E9 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804E6DF8  2C 03 00 00 */	cmpwi r3, 0
/* 804E6DFC  40 82 00 38 */	bne lbl_804E6E34
/* 804E6E00  7F C3 F3 78 */	mr r3, r30
/* 804E6E04  7F E4 FB 78 */	mr r4, r31
/* 804E6E08  38 A0 00 00 */	li r5, 0
/* 804E6E0C  38 C0 00 00 */	li r6, 0
/* 804E6E10  4B FF 44 E1 */	bl Player_actor_Set_FootMark_Base1
/* 804E6E14  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E6E18  3C 80 80 64 */	lis r4, lit_3573@ha /* 0x80647A44@ha */
/* 804E6E1C  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804E6E20  C0 44 7A 44 */	lfs f2, lit_3573@l(r4)  /* 0x80647A44@l */
/* 804E6E24  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E6E28  7F C3 F3 78 */	mr r3, r30
/* 804E6E2C  7F E4 FB 78 */	mr r4, r31
/* 804E6E30  4B FF F6 91 */	bl Player_actor_SetEffect_Walk
lbl_804E6E34:
/* 804E6E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E6E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E6E3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E6E40  7C 08 03 A6 */	mtlr r0
/* 804E6E44  38 21 00 10 */	addi r1, r1, 0x10
/* 804E6E48  4E 80 00 20 */	blr 

lbl_80504A80:
/* 80504A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504A84  7C 08 02 A6 */	mflr r0
/* 80504A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80504A90  7C 9F 23 78 */	mr r31, r4
/* 80504A94  93 C1 00 08 */	stw r30, 8(r1)
/* 80504A98  7C 7E 1B 78 */	mr r30, r3
/* 80504A9C  4B FD 2A 41 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 80504AA0  2C 03 00 00 */	cmpwi r3, 0
/* 80504AA4  40 82 00 38 */	bne lbl_80504ADC
/* 80504AA8  7F C3 F3 78 */	mr r3, r30
/* 80504AAC  7F E4 FB 78 */	mr r4, r31
/* 80504AB0  38 A0 00 00 */	li r5, 0
/* 80504AB4  38 C0 00 00 */	li r6, 0
/* 80504AB8  4B FD 68 39 */	bl Player_actor_Set_FootMark_Base1
/* 80504ABC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80504AC0  3C 80 80 64 */	lis r4, lit_3573@ha /* 0x80647A44@ha */
/* 80504AC4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80504AC8  C0 44 7A 44 */	lfs f2, lit_3573@l(r4)  /* 0x80647A44@l */
/* 80504ACC  C0 25 00 00 */	lfs f1, 0(r5)
/* 80504AD0  7F C3 F3 78 */	mr r3, r30
/* 80504AD4  7F E4 FB 78 */	mr r4, r31
/* 80504AD8  4B FF FF 89 */	bl Player_actor_SetEffect_Push_snowball
lbl_80504ADC:
/* 80504ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504AE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80504AE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80504AE8  7C 08 03 A6 */	mtlr r0
/* 80504AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80504AF0  4E 80 00 20 */	blr 

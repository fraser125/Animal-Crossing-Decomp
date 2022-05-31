lbl_804E65EC:
/* 804E65EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E65F0  7C 08 02 A6 */	mflr r0
/* 804E65F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E65F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E65FC  7C 9F 23 78 */	mr r31, r4
/* 804E6600  93 C1 00 08 */	stw r30, 8(r1)
/* 804E6604  7C 7E 1B 78 */	mr r30, r3
/* 804E6608  4B FF 0E D5 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804E660C  2C 03 00 00 */	cmpwi r3, 0
/* 804E6610  40 82 00 38 */	bne lbl_804E6648
/* 804E6614  7F C3 F3 78 */	mr r3, r30
/* 804E6618  7F E4 FB 78 */	mr r4, r31
/* 804E661C  38 A0 00 00 */	li r5, 0
/* 804E6620  38 C0 00 00 */	li r6, 0
/* 804E6624  4B FF 4C CD */	bl Player_actor_Set_FootMark_Base1
/* 804E6628  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E662C  3C 80 80 64 */	lis r4, lit_3573@ha /* 0x80647A44@ha */
/* 804E6630  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804E6634  C0 44 7A 44 */	lfs f2, lit_3573@l(r4)  /* 0x80647A44@l */
/* 804E6638  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E663C  7F C3 F3 78 */	mr r3, r30
/* 804E6640  7F E4 FB 78 */	mr r4, r31
/* 804E6644  4B FF FE 7D */	bl Player_actor_SetEffect_Walk
lbl_804E6648:
/* 804E6648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E664C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E6650  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E6654  7C 08 03 A6 */	mtlr r0
/* 804E6658  38 21 00 10 */	addi r1, r1, 0x10
/* 804E665C  4E 80 00 20 */	blr 

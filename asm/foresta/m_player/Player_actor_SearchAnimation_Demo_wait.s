lbl_804FD024:
/* 804FD024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FD028  7C 08 02 A6 */	mflr r0
/* 804FD02C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FD030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FD034  7C 7F 1B 78 */	mr r31, r3
/* 804FD038  4B FD A4 A5 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804FD03C  2C 03 00 00 */	cmpwi r3, 0
/* 804FD040  40 82 00 10 */	bne lbl_804FD050
/* 804FD044  7F E3 FB 78 */	mr r3, r31
/* 804FD048  38 9F 0D 18 */	addi r4, r31, 0xd18
/* 804FD04C  4B FF DB 55 */	bl Player_actor_Set_FeelEffect_common
lbl_804FD050:
/* 804FD050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FD054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FD058  7C 08 03 A6 */	mtlr r0
/* 804FD05C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FD060  4E 80 00 20 */	blr 

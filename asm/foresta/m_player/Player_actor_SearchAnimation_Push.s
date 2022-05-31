lbl_804EA7B4:
/* 804EA7B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EA7B8  7C 08 02 A6 */	mflr r0
/* 804EA7BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EA7C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EA7C4  7C 9F 23 78 */	mr r31, r4
/* 804EA7C8  93 C1 00 08 */	stw r30, 8(r1)
/* 804EA7CC  7C 7E 1B 78 */	mr r30, r3
/* 804EA7D0  4B FE CD 0D */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804EA7D4  2C 03 00 00 */	cmpwi r3, 0
/* 804EA7D8  40 82 00 18 */	bne lbl_804EA7F0
/* 804EA7DC  7F C3 F3 78 */	mr r3, r30
/* 804EA7E0  7F E4 FB 78 */	mr r4, r31
/* 804EA7E4  38 A0 00 00 */	li r5, 0
/* 804EA7E8  38 C0 00 00 */	li r6, 0
/* 804EA7EC  4B FF 0B 05 */	bl Player_actor_Set_FootMark_Base1
lbl_804EA7F0:
/* 804EA7F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EA7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EA7F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EA7FC  7C 08 03 A6 */	mtlr r0
/* 804EA800  38 21 00 10 */	addi r1, r1, 0x10
/* 804EA804  4E 80 00 20 */	blr 

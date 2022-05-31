lbl_804F4A18:
/* 804F4A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4A1C  7C 08 02 A6 */	mflr r0
/* 804F4A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4A24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F4A28  7C 9F 23 78 */	mr r31, r4
/* 804F4A2C  93 C1 00 08 */	stw r30, 8(r1)
/* 804F4A30  7C 7E 1B 78 */	mr r30, r3
/* 804F4A34  4B FE 2A A9 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F4A38  2C 03 00 00 */	cmpwi r3, 0
/* 804F4A3C  40 82 00 10 */	bne lbl_804F4A4C
/* 804F4A40  7F C3 F3 78 */	mr r3, r30
/* 804F4A44  7F E4 FB 78 */	mr r4, r31
/* 804F4A48  4B FF FE E9 */	bl Player_actor_CorrectSomething_Putaway_net
lbl_804F4A4C:
/* 804F4A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4A50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F4A54  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F4A58  7C 08 03 A6 */	mtlr r0
/* 804F4A5C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4A60  4E 80 00 20 */	blr 

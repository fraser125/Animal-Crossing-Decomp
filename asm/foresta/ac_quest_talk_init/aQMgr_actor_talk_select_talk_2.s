lbl_8048C260:
/* 8048C260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C264  7C 08 02 A6 */	mflr r0
/* 8048C268  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C26C  38 00 00 00 */	li r0, 0
/* 8048C270  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C274  7C 7F 1B 78 */	mr r31, r3
/* 8048C278  80 63 01 78 */	lwz r3, 0x178(r3)
/* 8048C27C  80 63 00 00 */	lwz r3, 0(r3)
/* 8048C280  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 8048C284  90 1F 0A 8C */	stw r0, 0xa8c(r31)
/* 8048C288  4B F4 9A 75 */	bl mNpc_CheckIslandAnimal
/* 8048C28C  2C 03 00 01 */	cmpwi r3, 1
/* 8048C290  40 82 00 10 */	bne lbl_8048C2A0
/* 8048C294  7F E3 FB 78 */	mr r3, r31
/* 8048C298  4B FF FF 51 */	bl aQMgr_actor_talk_select_talk_island
/* 8048C29C  48 00 00 0C */	b lbl_8048C2A8
lbl_8048C2A0:
/* 8048C2A0  7F E3 FB 78 */	mr r3, r31
/* 8048C2A4  4B FF F9 15 */	bl aQMgr_actor_talk_select_talk
lbl_8048C2A8:
/* 8048C2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C2AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C2B0  7C 08 03 A6 */	mtlr r0
/* 8048C2B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C2B8  4E 80 00 20 */	blr 

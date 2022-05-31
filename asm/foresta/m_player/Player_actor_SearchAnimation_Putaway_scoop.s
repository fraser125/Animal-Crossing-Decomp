lbl_804F9CCC:
/* 804F9CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9CD0  7C 08 02 A6 */	mflr r0
/* 804F9CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9CD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F9CDC  7C 9F 23 78 */	mr r31, r4
/* 804F9CE0  93 C1 00 08 */	stw r30, 8(r1)
/* 804F9CE4  7C 7E 1B 78 */	mr r30, r3
/* 804F9CE8  4B FD D7 F5 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F9CEC  2C 03 00 00 */	cmpwi r3, 0
/* 804F9CF0  40 82 00 18 */	bne lbl_804F9D08
/* 804F9CF4  7F C3 F3 78 */	mr r3, r30
/* 804F9CF8  7F E4 FB 78 */	mr r4, r31
/* 804F9CFC  38 A0 00 00 */	li r5, 0
/* 804F9D00  38 C0 00 00 */	li r6, 0
/* 804F9D04  4B FE 15 ED */	bl Player_actor_Set_FootMark_Base1
lbl_804F9D08:
/* 804F9D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9D0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F9D10  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F9D14  7C 08 03 A6 */	mtlr r0
/* 804F9D18  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9D1C  4E 80 00 20 */	blr 

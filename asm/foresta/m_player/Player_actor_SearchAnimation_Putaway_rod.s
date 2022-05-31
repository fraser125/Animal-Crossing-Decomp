lbl_804F70D4:
/* 804F70D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F70D8  7C 08 02 A6 */	mflr r0
/* 804F70DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F70E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F70E4  7C 9F 23 78 */	mr r31, r4
/* 804F70E8  93 C1 00 08 */	stw r30, 8(r1)
/* 804F70EC  7C 7E 1B 78 */	mr r30, r3
/* 804F70F0  4B FE 03 ED */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F70F4  2C 03 00 00 */	cmpwi r3, 0
/* 804F70F8  40 82 00 18 */	bne lbl_804F7110
/* 804F70FC  7F C3 F3 78 */	mr r3, r30
/* 804F7100  7F E4 FB 78 */	mr r4, r31
/* 804F7104  38 A0 00 00 */	li r5, 0
/* 804F7108  38 C0 00 00 */	li r6, 0
/* 804F710C  4B FE 41 E5 */	bl Player_actor_Set_FootMark_Base1
lbl_804F7110:
/* 804F7110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7114  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F7118  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F711C  7C 08 03 A6 */	mtlr r0
/* 804F7120  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7124  4E 80 00 20 */	blr 

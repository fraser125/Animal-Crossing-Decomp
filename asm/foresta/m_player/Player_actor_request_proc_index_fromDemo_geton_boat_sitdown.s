lbl_805074E0:
/* 805074E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805074E4  7C 08 02 A6 */	mflr r0
/* 805074E8  2C 05 00 00 */	cmpwi r5, 0
/* 805074EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805074F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805074F4  7C 9F 23 78 */	mr r31, r4
/* 805074F8  41 82 00 14 */	beq lbl_8050750C
/* 805074FC  4B FC DE 71 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80507500  7F E3 FB 78 */	mr r3, r31
/* 80507504  38 80 00 13 */	li r4, 0x13
/* 80507508  48 00 00 A1 */	bl func_805075A8
lbl_8050750C:
/* 8050750C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80507510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80507514  7C 08 03 A6 */	mtlr r0
/* 80507518  38 21 00 10 */	addi r1, r1, 0x10
/* 8050751C  4E 80 00 20 */	blr 

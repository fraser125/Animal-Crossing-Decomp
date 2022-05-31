lbl_80506A2C:
/* 80506A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80506A30  7C 08 02 A6 */	mflr r0
/* 80506A34  2C 05 00 00 */	cmpwi r5, 0
/* 80506A38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506A3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80506A40  7C 9F 23 78 */	mr r31, r4
/* 80506A44  41 82 00 2C */	beq lbl_80506A70
/* 80506A48  4B FC E9 25 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80506A4C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80506A50  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 80506A54  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 80506A58  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 80506A5C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80506A60  7F E3 FB 78 */	mr r3, r31
/* 80506A64  38 80 00 00 */	li r4, 0
/* 80506A68  38 A0 00 01 */	li r5, 1
/* 80506A6C  4B FD F1 91 */	bl func_804E5BFC
lbl_80506A70:
/* 80506A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80506A74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80506A78  7C 08 03 A6 */	mtlr r0
/* 80506A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80506A80  4E 80 00 20 */	blr 

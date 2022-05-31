lbl_8056EC38:
/* 8056EC38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056EC3C  7C 08 02 A6 */	mflr r0
/* 8056EC40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056EC44  38 00 00 83 */	li r0, 0x83
/* 8056EC48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056EC4C  7C 7F 1B 78 */	mr r31, r3
/* 8056EC50  3C 60 80 57 */	lis r3, aPMAN_eff_wings@ha /* 0x8056E218@ha */
/* 8056EC54  90 1F 08 40 */	stw r0, 0x840(r31)
/* 8056EC58  38 03 E2 18 */	addi r0, r3, aPMAN_eff_wings@l /* 0x8056E218@l */
/* 8056EC5C  38 64 1C C0 */	addi r3, r4, 0x1cc0
/* 8056EC60  7C 04 03 78 */	mr r4, r0
/* 8056EC64  4B E4 75 B1 */	bl mEnv_unregist_nature
/* 8056EC68  38 00 00 01 */	li r0, 1
/* 8056EC6C  98 1F 09 9E */	stb r0, 0x99e(r31)
/* 8056EC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056EC74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056EC78  7C 08 03 A6 */	mtlr r0
/* 8056EC7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8056EC80  4E 80 00 20 */	blr 

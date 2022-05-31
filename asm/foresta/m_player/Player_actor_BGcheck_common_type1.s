lbl_804D7C98:
/* 804D7C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D7C9C  7C 08 02 A6 */	mflr r0
/* 804D7CA0  3C A0 80 64 */	lis r5, lit_1077@ha /* 0x80646A1C@ha */
/* 804D7CA4  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D7CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7CAC  38 C0 00 00 */	li r6, 0
/* 804D7CB0  C0 25 6A 1C */	lfs f1, lit_1077@l(r5)  /* 0x80646A1C@l */
/* 804D7CB4  38 A0 00 01 */	li r5, 1
/* 804D7CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D7CBC  7C 7F 1B 78 */	mr r31, r3
/* 804D7CC0  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804D7CC4  7F E4 FB 78 */	mr r4, r31
/* 804D7CC8  38 60 00 00 */	li r3, 0
/* 804D7CCC  38 E0 00 01 */	li r7, 1
/* 804D7CD0  4B EB 20 D1 */	bl mCoBG_BgCheckControll
/* 804D7CD4  7F E3 FB 78 */	mr r3, r31
/* 804D7CD8  4B FF E7 D5 */	bl Player_actor_CorrectWadeBlockBorder
/* 804D7CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7CE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D7CE4  7C 08 03 A6 */	mtlr r0
/* 804D7CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7CEC  4E 80 00 20 */	blr 

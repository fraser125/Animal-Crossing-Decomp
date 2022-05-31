lbl_8040F888:
/* 8040F888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040F88C  7C 08 02 A6 */	mflr r0
/* 8040F890  3C C0 80 64 */	lis r6, lit_496@ha /* 0x806437B0@ha */
/* 8040F894  3C A0 80 64 */	lis r5, lit_497@ha /* 0x806437B4@ha */
/* 8040F898  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040F89C  C0 26 37 B0 */	lfs f1, lit_496@l(r6)  /* 0x806437B0@l */
/* 8040F8A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040F8A4  7C 9F 23 78 */	mr r31, r4
/* 8040F8A8  C0 45 37 B4 */	lfs f2, lit_497@l(r5)  /* 0x806437B4@l */
/* 8040F8AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8040F8B0  7C 7E 1B 78 */	mr r30, r3
/* 8040F8B4  38 7E 01 78 */	addi r3, r30, 0x178
/* 8040F8B8  4B FF FE A9 */	bl func_8040F760
/* 8040F8BC  3C 60 80 64 */	lis r3, lit_498@ha /* 0x806437B8@ha */
/* 8040F8C0  3C 80 80 64 */	lis r4, lit_499@ha /* 0x806437BC@ha */
/* 8040F8C4  38 A3 37 B8 */	addi r5, r3, lit_498@l /* 0x806437B8@l */
/* 8040F8C8  C0 44 37 BC */	lfs f2, lit_499@l(r4)  /* 0x806437BC@l */
/* 8040F8CC  C0 25 00 00 */	lfs f1, 0(r5)
/* 8040F8D0  38 7E 01 8C */	addi r3, r30, 0x18c
/* 8040F8D4  4B FF FE 8D */	bl func_8040F760
/* 8040F8D8  3C 60 80 64 */	lis r3, data_8064377C@ha /* 0x8064377C@ha */
/* 8040F8DC  3C 80 80 64 */	lis r4, lit_500@ha /* 0x806437C0@ha */
/* 8040F8E0  38 A3 37 7C */	addi r5, r3, data_8064377C@l /* 0x8064377C@l */
/* 8040F8E4  C0 44 37 C0 */	lfs f2, lit_500@l(r4)  /* 0x806437C0@l */
/* 8040F8E8  C0 25 00 00 */	lfs f1, 0(r5)
/* 8040F8EC  38 7E 01 90 */	addi r3, r30, 0x190
/* 8040F8F0  4B FF FE 71 */	bl func_8040F760
/* 8040F8F4  7F C3 F3 78 */	mr r3, r30
/* 8040F8F8  7F E4 FB 78 */	mr r4, r31
/* 8040F8FC  4B FF FE 95 */	bl aAp_GroundFriction
/* 8040F900  7F C3 F3 78 */	mr r3, r30
/* 8040F904  4B FF FE 75 */	bl aAp_FallByWall
/* 8040F908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040F90C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040F910  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040F914  7C 08 03 A6 */	mtlr r0
/* 8040F918  38 21 00 10 */	addi r1, r1, 0x10
/* 8040F91C  4E 80 00 20 */	blr 

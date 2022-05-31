lbl_805A8244:
/* 805A8244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8248  7C 08 02 A6 */	mflr r0
/* 805A824C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8250  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A8254  7C 7F 1B 78 */	mr r31, r3
/* 805A8258  7C 83 23 78 */	mr r3, r4
/* 805A825C  4B E3 13 E5 */	bl get_player_actor_withoutCheck
/* 805A8260  80 BF 01 4C */	lwz r5, 0x14c(r31)
/* 805A8264  38 9F 00 28 */	addi r4, r31, 0x28
/* 805A8268  90 7F 01 50 */	stw r3, 0x150(r31)
/* 805A826C  38 63 00 28 */	addi r3, r3, 0x28
/* 805A8270  38 A5 01 94 */	addi r5, r5, 0x194
/* 805A8274  4B E1 2D 05 */	bl xyz_t_sub
/* 805A8278  80 9F 02 BC */	lwz r4, 0x2bc(r31)
/* 805A827C  3C 60 80 65 */	lis r3, lit_782@ha /* 0x8064A52C@ha */
/* 805A8280  C0 03 A5 2C */	lfs f0, lit_782@l(r3)  /* 0x8064A52C@l */
/* 805A8284  38 04 03 20 */	addi r0, r4, 0x320
/* 805A8288  90 1F 02 BC */	stw r0, 0x2bc(r31)
/* 805A828C  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 805A8290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A8298  7C 08 03 A6 */	mtlr r0
/* 805A829C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A82A0  4E 80 00 20 */	blr 

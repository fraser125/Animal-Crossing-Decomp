lbl_80543610:
/* 80543610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80543614  7C 08 02 A6 */	mflr r0
/* 80543618  3C A0 80 6A */	lis r5, think_idx_3263@ha /* 0x806A3E74@ha */
/* 8054361C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80543620  38 A5 3E 74 */	addi r5, r5, think_idx_3263@l /* 0x806A3E74@l */
/* 80543624  88 03 07 DD */	lbz r0, 0x7dd(r3)
/* 80543628  54 00 10 3A */	slwi r0, r0, 2
/* 8054362C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80543630  4B FF EF B1 */	bl aNPC_think_init_proc
/* 80543634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80543638  7C 08 03 A6 */	mtlr r0
/* 8054363C  38 21 00 10 */	addi r1, r1, 0x10
/* 80543640  4E 80 00 20 */	blr 

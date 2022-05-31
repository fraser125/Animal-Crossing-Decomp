lbl_80543480:
/* 80543480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80543484  7C 08 02 A6 */	mflr r0
/* 80543488  3C A0 80 6A */	lis r5, think_idx_3233@ha /* 0x806A3E60@ha */
/* 8054348C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80543490  38 A5 3E 60 */	addi r5, r5, think_idx_3233@l /* 0x806A3E60@l */
/* 80543494  88 03 07 DD */	lbz r0, 0x7dd(r3)
/* 80543498  54 00 10 3A */	slwi r0, r0, 2
/* 8054349C  7C A5 00 2E */	lwzx r5, r5, r0
/* 805434A0  4B FF F1 41 */	bl aNPC_think_init_proc
/* 805434A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805434A8  7C 08 03 A6 */	mtlr r0
/* 805434AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805434B0  4E 80 00 20 */	blr 

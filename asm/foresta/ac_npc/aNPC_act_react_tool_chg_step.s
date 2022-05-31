lbl_80534F1C:
/* 80534F1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534F20  7C 08 02 A6 */	mflr r0
/* 80534F24  3C A0 80 6A */	lis r5, act_idx_3413@ha /* 0x806A2764@ha */
/* 80534F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534F2C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80534F30  98 83 07 F6 */	stb r4, 0x7f6(r3)
/* 80534F34  38 85 27 64 */	addi r4, r5, act_idx_3413@l /* 0x806A2764@l */
/* 80534F38  7C 84 00 AE */	lbzx r4, r4, r0
/* 80534F3C  4B FF AD F1 */	bl aNPC_setupAction
/* 80534F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80534F44  7C 08 03 A6 */	mtlr r0
/* 80534F48  38 21 00 10 */	addi r1, r1, 0x10
/* 80534F4C  4E 80 00 20 */	blr 

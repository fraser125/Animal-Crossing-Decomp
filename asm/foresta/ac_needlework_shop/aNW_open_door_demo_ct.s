lbl_805B6B30:
/* 805B6B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B6B34  7C 08 02 A6 */	mflr r0
/* 805B6B38  3C 80 80 65 */	lis r4, lit_497@ha /* 0x8064A9D4@ha */
/* 805B6B3C  38 60 00 05 */	li r3, 5
/* 805B6B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B6B44  C0 24 A9 D4 */	lfs f1, lit_497@l(r4)  /* 0x8064A9D4@l */
/* 805B6B48  4B DE 27 A9 */	bl mDemo_Set_house_info
/* 805B6B4C  38 60 00 07 */	li r3, 7
/* 805B6B50  4B DE 1D D1 */	bl mDemo_Set_camera
/* 805B6B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B6B58  7C 08 03 A6 */	mtlr r0
/* 805B6B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B6B60  4E 80 00 20 */	blr 

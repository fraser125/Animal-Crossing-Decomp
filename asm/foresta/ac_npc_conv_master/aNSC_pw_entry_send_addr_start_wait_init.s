lbl_8054AC34:
/* 8054AC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054AC38  7C 08 02 A6 */	mflr r0
/* 8054AC3C  38 60 00 04 */	li r3, 4
/* 8054AC40  38 80 00 09 */	li r4, 9
/* 8054AC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054AC48  38 A0 00 00 */	li r5, 0
/* 8054AC4C  4B E4 D7 ED */	bl mDemo_Set_OrderValue
/* 8054AC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AC54  7C 08 03 A6 */	mtlr r0
/* 8054AC58  38 21 00 10 */	addi r1, r1, 0x10
/* 8054AC5C  4E 80 00 20 */	blr 

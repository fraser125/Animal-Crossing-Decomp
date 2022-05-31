lbl_8054AD28:
/* 8054AD28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054AD2C  7C 08 02 A6 */	mflr r0
/* 8054AD30  38 80 00 1C */	li r4, 0x1c
/* 8054AD34  38 63 09 D8 */	addi r3, r3, 0x9d8
/* 8054AD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054AD3C  38 A0 00 20 */	li r5, 0x20
/* 8054AD40  4B E6 FD 09 */	bl mem_clear
/* 8054AD44  38 60 00 04 */	li r3, 4
/* 8054AD48  38 80 00 09 */	li r4, 9
/* 8054AD4C  38 A0 00 00 */	li r5, 0
/* 8054AD50  4B E4 D6 E9 */	bl mDemo_Set_OrderValue
/* 8054AD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AD58  7C 08 03 A6 */	mtlr r0
/* 8054AD5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054AD60  4E 80 00 20 */	blr 

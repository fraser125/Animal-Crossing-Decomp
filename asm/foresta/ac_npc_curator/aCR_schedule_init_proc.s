lbl_8054B510:
/* 8054B510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B514  7C 08 02 A6 */	mflr r0
/* 8054B518  3C C0 80 55 */	lis r6, aCR_think_proc@ha /* 0x8054B4DC@ha */
/* 8054B51C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054B520  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B524  38 C6 B4 DC */	addi r6, r6, aCR_think_proc@l /* 0x8054B4DC@l */
/* 8054B528  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054B52C  38 00 00 00 */	li r0, 0
/* 8054B530  90 C3 07 D4 */	stw r6, 0x7d4(r3)
/* 8054B534  3C E5 00 02 */	addis r7, r5, 2
/* 8054B538  38 A0 00 06 */	li r5, 6
/* 8054B53C  38 C0 00 00 */	li r6, 0
/* 8054B540  98 03 08 31 */	stb r0, 0x831(r3)
/* 8054B544  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8054B548  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8054B54C  7D 89 03 A6 */	mtctr r12
/* 8054B550  4E 80 04 21 */	bctrl 
/* 8054B554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B558  7C 08 03 A6 */	mtlr r0
/* 8054B55C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B560  4E 80 00 20 */	blr 

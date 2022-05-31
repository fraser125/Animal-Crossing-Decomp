lbl_803F1B1C:
/* 803F1B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F1B20  7C 08 02 A6 */	mflr r0
/* 803F1B24  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803F1B28  54 84 10 3A */	slwi r4, r4, 2
/* 803F1B2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F1B30  38 05 85 38 */	addi r0, r5, common_data@l /* 0x81138538@l */
/* 803F1B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F1B38  7C 7F 1B 78 */	mr r31, r3
/* 803F1B3C  7C 60 22 14 */	add r3, r0, r4
/* 803F1B40  38 80 00 04 */	li r4, 4
/* 803F1B44  3C 63 00 02 */	addis r3, r3, 2
/* 803F1B48  38 63 0E F8 */	addi r3, r3, 0xef8
/* 803F1B4C  4B C6 B5 1D */	bl bzero
/* 803F1B50  38 00 00 00 */	li r0, 0
/* 803F1B54  B0 1F 00 00 */	sth r0, 0(r31)
/* 803F1B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1B5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F1B60  7C 08 03 A6 */	mtlr r0
/* 803F1B64  38 21 00 10 */	addi r1, r1, 0x10
/* 803F1B68  4E 80 00 20 */	blr 

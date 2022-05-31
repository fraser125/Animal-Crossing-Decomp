lbl_803F1E74:
/* 803F1E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F1E78  7C 08 02 A6 */	mflr r0
/* 803F1E7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F1E80  38 80 00 0C */	li r4, 0xc
/* 803F1E84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F1E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F1E8C  3C 63 00 02 */	addis r3, r3, 2
/* 803F1E90  38 63 0E F8 */	addi r3, r3, 0xef8
/* 803F1E94  4B C6 B1 D5 */	bl bzero
/* 803F1E98  4B FF FF 95 */	bl mSN_decide_msg
/* 803F1E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1EA0  7C 08 03 A6 */	mtlr r0
/* 803F1EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 803F1EA8  4E 80 00 20 */	blr 

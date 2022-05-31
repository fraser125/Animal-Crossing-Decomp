lbl_80407CB4:
/* 80407CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80407CB8  7C 08 02 A6 */	mflr r0
/* 80407CBC  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 80407CC0  38 80 00 00 */	li r4, 0
/* 80407CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80407CC8  38 63 F0 38 */	addi r3, r3, data_8065F038@l /* 0x8065F038@l */
/* 80407CCC  38 A0 00 01 */	li r5, 1
/* 80407CD0  80 63 00 00 */	lwz r3, 0(r3)
/* 80407CD4  38 63 00 6C */	addi r3, r3, 0x6c
/* 80407CD8  4B C5 84 65 */	bl osSendMesg
/* 80407CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80407CE0  7C 08 03 A6 */	mtlr r0
/* 80407CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80407CE8  4E 80 00 20 */	blr 

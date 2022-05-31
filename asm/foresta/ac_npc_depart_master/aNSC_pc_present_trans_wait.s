lbl_80551A48:
/* 80551A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551A4C  7C 08 02 A6 */	mflr r0
/* 80551A50  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80551A54  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80551A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551A5C  3C A5 00 02 */	addis r5, r5, 2
/* 80551A60  80 A5 60 94 */	lwz r5, 0x6094(r5)
/* 80551A64  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80551A68  7C 00 18 40 */	cmplw r0, r3
/* 80551A6C  41 82 00 0C */	beq lbl_80551A78
/* 80551A70  38 A0 00 3C */	li r5, 0x3c
/* 80551A74  48 00 0D C1 */	bl aNSC_setupAction
lbl_80551A78:
/* 80551A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551A7C  7C 08 03 A6 */	mtlr r0
/* 80551A80  38 21 00 10 */	addi r1, r1, 0x10
/* 80551A84  4E 80 00 20 */	blr 

lbl_8057E2D0:
/* 8057E2D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E2D4  7C 08 02 A6 */	mflr r0
/* 8057E2D8  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8057E2DC  3C A0 80 58 */	lis r5, aSHM_think_proc@ha /* 0x8057E29C@ha */
/* 8057E2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E2E4  38 05 E2 9C */	addi r0, r5, aSHM_think_proc@l /* 0x8057E29C@l */
/* 8057E2E8  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8057E2EC  38 A0 00 06 */	li r5, 6
/* 8057E2F0  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8057E2F4  3C E6 00 02 */	addis r7, r6, 2
/* 8057E2F8  38 C0 00 00 */	li r6, 0
/* 8057E2FC  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8057E300  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8057E304  7D 89 03 A6 */	mtctr r12
/* 8057E308  4E 80 04 21 */	bctrl 
/* 8057E30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E310  7C 08 03 A6 */	mtlr r0
/* 8057E314  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E318  4E 80 00 20 */	blr 

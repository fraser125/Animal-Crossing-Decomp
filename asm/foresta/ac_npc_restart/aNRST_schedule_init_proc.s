lbl_80572434:
/* 80572434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80572438  7C 08 02 A6 */	mflr r0
/* 8057243C  3C C0 80 57 */	lis r6, aNRST_think_proc@ha /* 0x80572400@ha */
/* 80572440  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80572444  90 01 00 14 */	stw r0, 0x14(r1)
/* 80572448  38 C6 24 00 */	addi r6, r6, aNRST_think_proc@l /* 0x80572400@l */
/* 8057244C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80572450  38 00 00 00 */	li r0, 0
/* 80572454  90 C3 07 D4 */	stw r6, 0x7d4(r3)
/* 80572458  3C E5 00 02 */	addis r7, r5, 2
/* 8057245C  38 A0 00 06 */	li r5, 6
/* 80572460  38 C0 00 00 */	li r6, 0
/* 80572464  90 03 09 A8 */	stw r0, 0x9a8(r3)
/* 80572468  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8057246C  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80572470  7D 89 03 A6 */	mtctr r12
/* 80572474  4E 80 04 21 */	bctrl 
/* 80572478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057247C  7C 08 03 A6 */	mtlr r0
/* 80572480  38 21 00 10 */	addi r1, r1, 0x10
/* 80572484  4E 80 00 20 */	blr 

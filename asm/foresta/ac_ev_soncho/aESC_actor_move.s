lbl_8052463C:
/* 8052463C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80524640  7C 08 02 A6 */	mflr r0
/* 80524644  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80524648  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052464C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80524650  3C A5 00 02 */	addis r5, r5, 2
/* 80524654  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80524658  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 8052465C  7D 89 03 A6 */	mtctr r12
/* 80524660  4E 80 04 21 */	bctrl 
/* 80524664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80524668  7C 08 03 A6 */	mtlr r0
/* 8052466C  38 21 00 10 */	addi r1, r1, 0x10
/* 80524670  4E 80 00 20 */	blr 

lbl_8063DA20:
/* 8063DA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063DA24  7C 08 02 A6 */	mflr r0
/* 8063DA28  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 8063DA2C  38 C0 00 14 */	li r6, 0x14
/* 8063DA30  39 07 85 38 */	addi r8, r7, common_data@l /* 0x81138538@l */
/* 8063DA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063DA38  3D 08 00 02 */	addis r8, r8, 2
/* 8063DA3C  38 E0 00 14 */	li r7, 0x14
/* 8063DA40  81 08 60 8C */	lwz r8, 0x608c(r8)
/* 8063DA44  81 88 00 54 */	lwz r12, 0x54(r8)
/* 8063DA48  7D 89 03 A6 */	mtctr r12
/* 8063DA4C  4E 80 04 21 */	bctrl 
/* 8063DA50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063DA54  7C 08 03 A6 */	mtlr r0
/* 8063DA58  38 21 00 10 */	addi r1, r1, 0x10
/* 8063DA5C  4E 80 00 20 */	blr 

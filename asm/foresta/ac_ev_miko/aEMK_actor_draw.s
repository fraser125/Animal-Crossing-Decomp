lbl_80521E28:
/* 80521E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80521E2C  7C 08 02 A6 */	mflr r0
/* 80521E30  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80521E34  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80521E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521E3C  3C A5 00 02 */	addis r5, r5, 2
/* 80521E40  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80521E44  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 80521E48  7D 89 03 A6 */	mtctr r12
/* 80521E4C  4E 80 04 21 */	bctrl 
/* 80521E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521E54  7C 08 03 A6 */	mtlr r0
/* 80521E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80521E5C  4E 80 00 20 */	blr 

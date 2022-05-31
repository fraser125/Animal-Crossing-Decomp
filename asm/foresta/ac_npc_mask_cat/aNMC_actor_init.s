lbl_8055EF70:
/* 8055EF70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EF74  7C 08 02 A6 */	mflr r0
/* 8055EF78  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055EF7C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055EF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EF84  3C A5 00 02 */	addis r5, r5, 2
/* 8055EF88  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8055EF8C  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 8055EF90  7D 89 03 A6 */	mtctr r12
/* 8055EF94  4E 80 04 21 */	bctrl 
/* 8055EF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EF9C  7C 08 03 A6 */	mtlr r0
/* 8055EFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EFA4  4E 80 00 20 */	blr 

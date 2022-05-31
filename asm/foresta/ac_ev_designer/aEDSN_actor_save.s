lbl_8051CD70:
/* 8051CD70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051CD74  7C 08 02 A6 */	mflr r0
/* 8051CD78  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051CD7C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051CD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051CD84  3C A5 00 02 */	addis r5, r5, 2
/* 8051CD88  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051CD8C  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 8051CD90  7D 89 03 A6 */	mtctr r12
/* 8051CD94  4E 80 04 21 */	bctrl 
/* 8051CD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051CD9C  7C 08 03 A6 */	mtlr r0
/* 8051CDA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051CDA4  4E 80 00 20 */	blr 

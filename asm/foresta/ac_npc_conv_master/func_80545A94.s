lbl_80545A94:
/* 80545A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80545A98  7C 08 02 A6 */	mflr r0
/* 80545A9C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80545AA0  54 87 18 38 */	slwi r7, r4, 3
/* 80545AA4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80545AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80545AAC  3C 85 00 02 */	addis r4, r5, 2
/* 80545AB0  3C C0 80 6A */	lis r6, anime@ha /* 0x806A4310@ha */
/* 80545AB4  80 A4 60 4C */	lwz r5, 0x604c(r4)
/* 80545AB8  38 06 43 10 */	addi r0, r6, anime@l /* 0x806A4310@l */
/* 80545ABC  7C C0 3A 14 */	add r6, r0, r7
/* 80545AC0  81 85 01 14 */	lwz r12, 0x114(r5)
/* 80545AC4  80 86 00 00 */	lwz r4, 0(r6)
/* 80545AC8  80 A6 00 04 */	lwz r5, 4(r6)
/* 80545ACC  7D 89 03 A6 */	mtctr r12
/* 80545AD0  4E 80 04 21 */	bctrl 
/* 80545AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80545AD8  7C 08 03 A6 */	mtlr r0
/* 80545ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80545AE0  4E 80 00 20 */	blr 

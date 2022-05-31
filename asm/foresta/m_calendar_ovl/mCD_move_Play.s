lbl_805C7E10:
/* 805C7E10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7E14  7C 08 02 A6 */	mflr r0
/* 805C7E18  3C A0 80 6D */	lis r5, mCD_play_proc@ha /* 0x806C87D8@ha */
/* 805C7E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7E20  38 A5 87 D8 */	addi r5, r5, mCD_play_proc@l /* 0x806C87D8@l */
/* 805C7E24  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805C7E28  80 C6 09 EC */	lwz r6, 0x9ec(r6)
/* 805C7E2C  88 06 10 55 */	lbz r0, 0x1055(r6)
/* 805C7E30  54 00 10 3A */	slwi r0, r0, 2
/* 805C7E34  7D 85 00 2E */	lwzx r12, r5, r0
/* 805C7E38  7D 89 03 A6 */	mtctr r12
/* 805C7E3C  4E 80 04 21 */	bctrl 
/* 805C7E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7E44  7C 08 03 A6 */	mtlr r0
/* 805C7E48  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7E4C  4E 80 00 20 */	blr 

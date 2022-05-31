lbl_8055A404:
/* 8055A404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055A408  7C 08 02 A6 */	mflr r0
/* 8055A40C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055A410  54 87 18 38 */	slwi r7, r4, 3
/* 8055A414  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055A418  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055A41C  3C 85 00 02 */	addis r4, r5, 2
/* 8055A420  3C C0 80 6B */	lis r6, anime@ha /* 0x806A96AC@ha */
/* 8055A424  80 A4 60 4C */	lwz r5, 0x604c(r4)
/* 8055A428  38 06 96 AC */	addi r0, r6, anime@l /* 0x806A96AC@l */
/* 8055A42C  7C C0 3A 14 */	add r6, r0, r7
/* 8055A430  81 85 01 14 */	lwz r12, 0x114(r5)
/* 8055A434  80 86 00 00 */	lwz r4, 0(r6)
/* 8055A438  80 A6 00 04 */	lwz r5, 4(r6)
/* 8055A43C  7D 89 03 A6 */	mtctr r12
/* 8055A440  4E 80 04 21 */	bctrl 
/* 8055A444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055A448  7C 08 03 A6 */	mtlr r0
/* 8055A44C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055A450  4E 80 00 20 */	blr 

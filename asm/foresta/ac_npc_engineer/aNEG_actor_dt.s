lbl_80552994:
/* 80552994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552998  7C 08 02 A6 */	mflr r0
/* 8055299C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805529A0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805529A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805529A8  3C A5 00 02 */	addis r5, r5, 2
/* 805529AC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805529B0  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 805529B4  7D 89 03 A6 */	mtctr r12
/* 805529B8  4E 80 04 21 */	bctrl 
/* 805529BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805529C0  7C 08 03 A6 */	mtlr r0
/* 805529C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805529C8  4E 80 00 20 */	blr 
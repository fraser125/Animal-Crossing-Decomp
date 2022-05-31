lbl_803D9094:
/* 803D9094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D9098  7C 08 02 A6 */	mflr r0
/* 803D909C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D90A0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D90A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D90A8  3C 63 00 02 */	addis r3, r3, 2
/* 803D90AC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803D90B0  A0 63 10 88 */	lhz r3, 0x1088(r3)
/* 803D90B4  4B FF FF 65 */	bl mPlib_Get_PlayerTexRom_p
/* 803D90B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D90BC  7C 08 03 A6 */	mtlr r0
/* 803D90C0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D90C4  4E 80 00 20 */	blr 

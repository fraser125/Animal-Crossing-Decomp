lbl_803FAAA4:
/* 803FAAA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FAAA8  7C 08 02 A6 */	mflr r0
/* 803FAAAC  3C 60 81 1A */	lis r3, l_mCD_wctrl@ha /* 0x8119CC40@ha */
/* 803FAAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FAAB4  38 63 CC 40 */	addi r3, r3, l_mCD_wctrl@l /* 0x8119CC40@l */
/* 803FAAB8  4B FF FF 8D */	bl mCD_clear_write_control_common
/* 803FAABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FAAC0  7C 08 03 A6 */	mtlr r0
/* 803FAAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 803FAAC8  4E 80 00 20 */	blr 

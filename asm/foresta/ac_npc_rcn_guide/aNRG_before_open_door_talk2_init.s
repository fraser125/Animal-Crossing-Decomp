lbl_8056FC88:
/* 8056FC88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056FC8C  7C 08 02 A6 */	mflr r0
/* 8056FC90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056FC94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056FC98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FC9C  3C 63 00 02 */	addis r3, r3, 2
/* 8056FCA0  80 63 60 AC */	lwz r3, 0x60ac(r3)
/* 8056FCA4  80 63 00 00 */	lwz r3, 0(r3)
/* 8056FCA8  80 63 01 94 */	lwz r3, 0x194(r3)
/* 8056FCAC  4B FF F3 D1 */	bl aNRG_set_house_master_name
/* 8056FCB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FCB4  7C 08 03 A6 */	mtlr r0
/* 8056FCB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FCBC  4E 80 00 20 */	blr 

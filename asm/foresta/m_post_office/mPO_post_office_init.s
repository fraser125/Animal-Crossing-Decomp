lbl_803DFDF8:
/* 803DFDF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DFDFC  7C 08 02 A6 */	mflr r0
/* 803DFE00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFE04  38 80 08 3C */	li r4, 0x83c
/* 803DFE08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFE0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DFE10  3C 63 00 02 */	addis r3, r3, 2
/* 803DFE14  38 63 06 94 */	addi r3, r3, 0x694
/* 803DFE18  4B C7 D2 51 */	bl bzero
/* 803DFE1C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFE20  38 80 00 05 */	li r4, 5
/* 803DFE24  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFE28  3C 63 00 02 */	addis r3, r3, 2
/* 803DFE2C  38 63 06 9C */	addi r3, r3, 0x69c
/* 803DFE30  4B FD C9 21 */	bl mMl_clear_mail_box
/* 803DFE34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFE38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFE3C  3C 63 00 02 */	addis r3, r3, 2
/* 803DFE40  38 63 0C 6E */	addi r3, r3, 0xc6e
/* 803DFE44  4B FD C8 BD */	bl mMl_clear_mail
/* 803DFE48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFE4C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFE50  3C 63 00 02 */	addis r3, r3, 2
/* 803DFE54  38 63 0D 98 */	addi r3, r3, 0xd98
/* 803DFE58  4B FD C8 A9 */	bl mMl_clear_mail
/* 803DFE5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFE60  3C 80 00 0F */	lis r4, 0x000F /* 0x000F000F@ha */
/* 803DFE64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFE68  3C 63 00 02 */	addis r3, r3, 2
/* 803DFE6C  38 04 00 0F */	addi r0, r4, 0x000F /* 0x000F000F@l */
/* 803DFE70  7C 64 1B 78 */	mr r4, r3
/* 803DFE74  90 03 0E C4 */	stw r0, 0xec4(r3)
/* 803DFE78  38 84 61 20 */	addi r4, r4, 0x6120
/* 803DFE7C  38 63 0E C8 */	addi r3, r3, 0xec8
/* 803DFE80  48 02 73 B5 */	bl lbRTC_TimeCopy
/* 803DFE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DFE88  7C 08 03 A6 */	mtlr r0
/* 803DFE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DFE90  4E 80 00 20 */	blr 

lbl_80554B54:
/* 80554B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80554B58  7C 08 02 A6 */	mflr r0
/* 80554B5C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80554B60  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80554B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80554B68  3C A5 00 02 */	addis r5, r5, 2
/* 80554B6C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80554B70  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80554B74  7D 89 03 A6 */	mtctr r12
/* 80554B78  4E 80 04 21 */	bctrl 
/* 80554B7C  38 60 00 8D */	li r3, 0x8d
/* 80554B80  48 0D 93 A5 */	bl sAdo_SysLevStop
/* 80554B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80554B88  7C 08 03 A6 */	mtlr r0
/* 80554B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80554B90  4E 80 00 20 */	blr 

lbl_80558C70:
/* 80558C70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80558C74  7C 08 02 A6 */	mflr r0
/* 80558C78  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80558C7C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80558C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80558C84  3C A5 00 02 */	addis r5, r5, 2
/* 80558C88  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80558C8C  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80558C90  7D 89 03 A6 */	mtctr r12
/* 80558C94  4E 80 04 21 */	bctrl 
/* 80558C98  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80558C9C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80558CA0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80558CA4  38 60 00 5D */	li r3, 0x5d
/* 80558CA8  3C A4 00 02 */	addis r5, r4, 2
/* 80558CAC  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80558CB0  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 80558CB4  81 85 00 04 */	lwz r12, 4(r5)
/* 80558CB8  7D 89 03 A6 */	mtctr r12
/* 80558CBC  4E 80 04 21 */	bctrl 
/* 80558CC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80558CC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80558CC8  3C 63 00 02 */	addis r3, r3, 2
/* 80558CCC  80 63 60 B0 */	lwz r3, 0x60b0(r3)
/* 80558CD0  28 03 00 00 */	cmplwi r3, 0
/* 80558CD4  41 82 00 28 */	beq lbl_80558CFC
/* 80558CD8  80 03 00 04 */	lwz r0, 4(r3)
/* 80558CDC  2C 00 00 05 */	cmpwi r0, 5
/* 80558CE0  40 82 00 1C */	bne lbl_80558CFC
/* 80558CE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80558CE8  28 03 00 00 */	cmplwi r3, 0
/* 80558CEC  41 82 00 10 */	beq lbl_80558CFC
/* 80558CF0  38 00 00 00 */	li r0, 0
/* 80558CF4  90 03 01 80 */	stw r0, 0x180(r3)
/* 80558CF8  B0 03 01 7C */	sth r0, 0x17c(r3)
lbl_80558CFC:
/* 80558CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80558D00  7C 08 03 A6 */	mtlr r0
/* 80558D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80558D08  4E 80 00 20 */	blr 

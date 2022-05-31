lbl_80415BDC:
/* 80415BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415BE0  7C 08 02 A6 */	mflr r0
/* 80415BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415BE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80415BEC  7C 7F 1B 78 */	mr r31, r3
/* 80415BF0  38 60 00 02 */	li r3, 2
/* 80415BF4  4B F8 4E 25 */	bl mEv_CheckEvent
/* 80415BF8  2C 03 00 00 */	cmpwi r3, 0
/* 80415BFC  41 82 00 0C */	beq lbl_80415C08
/* 80415C00  7F E3 FB 78 */	mr r3, r31
/* 80415C04  4B FF FF 19 */	bl func_80415B1C
lbl_80415C08:
/* 80415C08  3C 60 80 41 */	lis r3, aBD_UnitNo2FtrNo@ha /* 0x80415C68@ha */
/* 80415C0C  3C 80 80 41 */	lis r4, aBD_ReportFtrSales@ha /* 0x80415D00@ha */
/* 80415C10  38 03 5C 68 */	addi r0, r3, aBD_UnitNo2FtrNo@l /* 0x80415C68@l */
/* 80415C14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80415C18  90 1F 01 74 */	stw r0, 0x174(r31)
/* 80415C1C  38 84 5D 00 */	addi r4, r4, aBD_ReportFtrSales@l /* 0x80415D00@l */
/* 80415C20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80415C24  38 1F 01 74 */	addi r0, r31, 0x174
/* 80415C28  90 9F 01 78 */	stw r4, 0x178(r31)
/* 80415C2C  3C 63 00 02 */	addis r3, r3, 2
/* 80415C30  90 03 60 A4 */	stw r0, 0x60a4(r3)
/* 80415C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415C3C  7C 08 03 A6 */	mtlr r0
/* 80415C40  38 21 00 10 */	addi r1, r1, 0x10
/* 80415C44  4E 80 00 20 */	blr 

lbl_8051CCE4:
/* 8051CCE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051CCE8  7C 08 02 A6 */	mflr r0
/* 8051CCEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051CCF0  39 61 00 20 */	addi r11, r1, 0x20
/* 8051CCF4  4B B7 E1 E1 */	bl func_8009AED4
/* 8051CCF8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051CCFC  7C 7D 1B 78 */	mr r29, r3
/* 8051CD00  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051CD04  7C 9E 23 78 */	mr r30, r4
/* 8051CD08  3F E5 00 02 */	addis r31, r5, 2
/* 8051CD0C  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8051CD10  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8051CD14  7D 89 03 A6 */	mtctr r12
/* 8051CD18  4E 80 04 21 */	bctrl 
/* 8051CD1C  2C 03 00 01 */	cmpwi r3, 1
/* 8051CD20  40 82 00 38 */	bne lbl_8051CD58
/* 8051CD24  3C 60 80 52 */	lis r3, aEDSN_schedule_proc@ha /* 0x8051DED8@ha */
/* 8051CD28  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A031C@ha */
/* 8051CD2C  38 03 DE D8 */	addi r0, r3, aEDSN_schedule_proc@l /* 0x8051DED8@l */
/* 8051CD30  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8051CD34  38 A4 03 1C */	addi r5, r4, ct_data@l /* 0x806A031C@l */
/* 8051CD38  7F A3 EB 78 */	mr r3, r29
/* 8051CD3C  7F C4 F3 78 */	mr r4, r30
/* 8051CD40  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8051CD44  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8051CD48  7D 89 03 A6 */	mtctr r12
/* 8051CD4C  4E 80 04 21 */	bctrl 
/* 8051CD50  A8 1D 09 78 */	lha r0, 0x978(r29)
/* 8051CD54  98 1D 09 97 */	stb r0, 0x997(r29)
lbl_8051CD58:
/* 8051CD58  39 61 00 20 */	addi r11, r1, 0x20
/* 8051CD5C  4B B7 E1 C5 */	bl func_8009AF20
/* 8051CD60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051CD64  7C 08 03 A6 */	mtlr r0
/* 8051CD68  38 21 00 20 */	addi r1, r1, 0x20
/* 8051CD6C  4E 80 00 20 */	blr 

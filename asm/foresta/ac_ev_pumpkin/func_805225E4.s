lbl_805225E4:
/* 805225E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805225E8  7C 08 02 A6 */	mflr r0
/* 805225EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805225F0  39 61 00 20 */	addi r11, r1, 0x20
/* 805225F4  4B B7 88 E1 */	bl func_8009AED4
/* 805225F8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805225FC  7C 7D 1B 78 */	mr r29, r3
/* 80522600  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80522604  7C 9E 23 78 */	mr r30, r4
/* 80522608  3F E5 00 02 */	addis r31, r5, 2
/* 8052260C  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80522610  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80522614  7D 89 03 A6 */	mtctr r12
/* 80522618  4E 80 04 21 */	bctrl 
/* 8052261C  2C 03 00 01 */	cmpwi r3, 1
/* 80522620  40 82 00 50 */	bne lbl_80522670
/* 80522624  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 80522628  3C 60 80 6A */	lis r3, ct_data@ha /* 0x806A0A84@ha */
/* 8052262C  38 A3 0A 84 */	addi r5, r3, ct_data@l /* 0x806A0A84@l */
/* 80522630  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 80522634  7F A3 EB 78 */	mr r3, r29
/* 80522638  7F C4 F3 78 */	mr r4, r30
/* 8052263C  7D 89 03 A6 */	mtctr r12
/* 80522640  4E 80 04 21 */	bctrl 
/* 80522644  38 00 FF FF */	li r0, -1
/* 80522648  38 60 00 31 */	li r3, 0x31
/* 8052264C  90 1D 08 F4 */	stw r0, 0x8f4(r29)
/* 80522650  38 80 00 00 */	li r4, 0
/* 80522654  4B E7 BA 89 */	bl mEv_get_common_area
/* 80522658  28 03 00 00 */	cmplwi r3, 0
/* 8052265C  40 82 00 10 */	bne lbl_8052266C
/* 80522660  38 60 00 31 */	li r3, 0x31
/* 80522664  38 80 00 00 */	li r4, 0
/* 80522668  4B E7 B9 8D */	bl mEv_reserve_common_area
lbl_8052266C:
/* 8052266C  90 7D 09 9C */	stw r3, 0x99c(r29)
lbl_80522670:
/* 80522670  39 61 00 20 */	addi r11, r1, 0x20
/* 80522674  4B B7 88 AD */	bl func_8009AF20
/* 80522678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052267C  7C 08 03 A6 */	mtlr r0
/* 80522680  38 21 00 20 */	addi r1, r1, 0x20
/* 80522684  4E 80 00 20 */	blr 
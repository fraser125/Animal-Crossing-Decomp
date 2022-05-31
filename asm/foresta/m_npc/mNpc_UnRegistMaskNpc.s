lbl_803CEDA0:
/* 803CEDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CEDA4  7C 08 02 A6 */	mflr r0
/* 803CEDA8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CEDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CEDB0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CEDB4  38 00 00 03 */	li r0, 3
/* 803CEDB8  3C 84 00 02 */	addis r4, r4, 2
/* 803CEDBC  7C 09 03 A6 */	mtctr r0
/* 803CEDC0  38 84 68 78 */	addi r4, r4, 0x6878
lbl_803CEDC4:
/* 803CEDC4  7C 04 18 40 */	cmplw r4, r3
/* 803CEDC8  40 82 00 10 */	bne lbl_803CEDD8
/* 803CEDCC  38 80 09 90 */	li r4, 0x990
/* 803CEDD0  4B C8 E2 99 */	bl bzero
/* 803CEDD4  48 00 00 0C */	b lbl_803CEDE0
lbl_803CEDD8:
/* 803CEDD8  38 84 09 90 */	addi r4, r4, 0x990
/* 803CEDDC  42 00 FF E8 */	bdnz lbl_803CEDC4
lbl_803CEDE0:
/* 803CEDE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CEDE4  7C 08 03 A6 */	mtlr r0
/* 803CEDE8  38 21 00 10 */	addi r1, r1, 0x10
/* 803CEDEC  4E 80 00 20 */	blr 

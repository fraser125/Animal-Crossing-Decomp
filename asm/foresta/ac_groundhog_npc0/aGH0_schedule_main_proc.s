lbl_80590FCC:
/* 80590FCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80590FD0  7C 08 02 A6 */	mflr r0
/* 80590FD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80590FD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80590FDC  4B B0 9E F9 */	bl func_8009AED4
/* 80590FE0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80590FE4  7C 7D 1B 78 */	mr r29, r3
/* 80590FE8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80590FEC  7C 9E 23 78 */	mr r30, r4
/* 80590FF0  3F E5 00 02 */	addis r31, r5, 2
/* 80590FF4  38 A0 FF FF */	li r5, -1
/* 80590FF8  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80590FFC  38 C0 00 01 */	li r6, 1
/* 80591000  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80591004  7D 89 03 A6 */	mtctr r12
/* 80591008  4E 80 04 21 */	bctrl 
/* 8059100C  2C 03 00 00 */	cmpwi r3, 0
/* 80591010  40 82 00 24 */	bne lbl_80591034
/* 80591014  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80591018  7F A3 EB 78 */	mr r3, r29
/* 8059101C  7F C4 F3 78 */	mr r4, r30
/* 80591020  38 A0 FF FF */	li r5, -1
/* 80591024  81 86 01 20 */	lwz r12, 0x120(r6)
/* 80591028  38 C0 00 02 */	li r6, 2
/* 8059102C  7D 89 03 A6 */	mtctr r12
/* 80591030  4E 80 04 21 */	bctrl 
lbl_80591034:
/* 80591034  39 61 00 20 */	addi r11, r1, 0x20
/* 80591038  4B B0 9E E9 */	bl func_8009AF20
/* 8059103C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80591040  7C 08 03 A6 */	mtlr r0
/* 80591044  38 21 00 20 */	addi r1, r1, 0x20
/* 80591048  4E 80 00 20 */	blr 

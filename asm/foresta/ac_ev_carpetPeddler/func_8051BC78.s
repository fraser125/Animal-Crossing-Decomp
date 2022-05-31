lbl_8051BC78:
/* 8051BC78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051BC7C  7C 08 02 A6 */	mflr r0
/* 8051BC80  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051BC84  39 61 00 20 */	addi r11, r1, 0x20
/* 8051BC88  4B B7 F2 4D */	bl func_8009AED4
/* 8051BC8C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051BC90  7C 7D 1B 78 */	mr r29, r3
/* 8051BC94  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051BC98  7C 9E 23 78 */	mr r30, r4
/* 8051BC9C  3F E5 00 02 */	addis r31, r5, 2
/* 8051BCA0  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8051BCA4  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8051BCA8  7D 89 03 A6 */	mtctr r12
/* 8051BCAC  4E 80 04 21 */	bctrl 
/* 8051BCB0  2C 03 00 01 */	cmpwi r3, 1
/* 8051BCB4  40 82 00 30 */	bne lbl_8051BCE4
/* 8051BCB8  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 8051BCBC  3C 60 80 6A */	lis r3, ct_data@ha /* 0x806A01D4@ha */
/* 8051BCC0  38 A3 01 D4 */	addi r5, r3, ct_data@l /* 0x806A01D4@l */
/* 8051BCC4  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 8051BCC8  7F A3 EB 78 */	mr r3, r29
/* 8051BCCC  7F C4 F3 78 */	mr r4, r30
/* 8051BCD0  7D 89 03 A6 */	mtctr r12
/* 8051BCD4  4E 80 04 21 */	bctrl 
/* 8051BCD8  3C 60 80 52 */	lis r3, aECPD_setupAction@ha /* 0x8051C880@ha */
/* 8051BCDC  38 03 C8 80 */	addi r0, r3, aECPD_setupAction@l /* 0x8051C880@l */
/* 8051BCE0  90 1D 09 A0 */	stw r0, 0x9a0(r29)
lbl_8051BCE4:
/* 8051BCE4  39 61 00 20 */	addi r11, r1, 0x20
/* 8051BCE8  4B B7 F2 39 */	bl func_8009AF20
/* 8051BCEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051BCF0  7C 08 03 A6 */	mtlr r0
/* 8051BCF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8051BCF8  4E 80 00 20 */	blr 

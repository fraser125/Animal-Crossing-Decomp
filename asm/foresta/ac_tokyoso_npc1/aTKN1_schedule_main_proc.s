lbl_8058D654:
/* 8058D654  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058D658  7C 08 02 A6 */	mflr r0
/* 8058D65C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058D660  39 61 00 20 */	addi r11, r1, 0x20
/* 8058D664  4B B0 D8 71 */	bl func_8009AED4
/* 8058D668  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058D66C  7C 7E 1B 78 */	mr r30, r3
/* 8058D670  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058D674  7C 9D 23 78 */	mr r29, r4
/* 8058D678  3F E5 00 02 */	addis r31, r5, 2
/* 8058D67C  38 C0 00 01 */	li r6, 1
/* 8058D680  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8058D684  38 A0 FF FF */	li r5, -1
/* 8058D688  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058D68C  7D 89 03 A6 */	mtctr r12
/* 8058D690  4E 80 04 21 */	bctrl 
/* 8058D694  2C 03 00 00 */	cmpwi r3, 0
/* 8058D698  40 82 00 28 */	bne lbl_8058D6C0
/* 8058D69C  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8058D6A0  7F C3 F3 78 */	mr r3, r30
/* 8058D6A4  7F A4 EB 78 */	mr r4, r29
/* 8058D6A8  38 A0 FF FF */	li r5, -1
/* 8058D6AC  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8058D6B0  38 C0 00 02 */	li r6, 2
/* 8058D6B4  7D 89 03 A6 */	mtctr r12
/* 8058D6B8  4E 80 04 21 */	bctrl 
/* 8058D6BC  48 00 00 4C */	b lbl_8058D708
lbl_8058D6C0:
/* 8058D6C0  88 1E 09 5A */	lbz r0, 0x95a(r30)
/* 8058D6C4  28 00 00 01 */	cmplwi r0, 1
/* 8058D6C8  40 82 00 40 */	bne lbl_8058D708
/* 8058D6CC  88 1E 09 A8 */	lbz r0, 0x9a8(r30)
/* 8058D6D0  28 00 00 0B */	cmplwi r0, 0xb
/* 8058D6D4  40 82 00 34 */	bne lbl_8058D708
/* 8058D6D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058D6DC  7F C3 F3 78 */	mr r3, r30
/* 8058D6E0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8058D6E4  3C 84 00 02 */	addis r4, r4, 2
/* 8058D6E8  80 84 60 D8 */	lwz r4, 0x60d8(r4)
/* 8058D6EC  81 84 00 00 */	lwz r12, 0(r4)
/* 8058D6F0  7D 89 03 A6 */	mtctr r12
/* 8058D6F4  4E 80 04 21 */	bctrl 
/* 8058D6F8  7F C3 F3 78 */	mr r3, r30
/* 8058D6FC  7F A4 EB 78 */	mr r4, r29
/* 8058D700  38 A0 00 0B */	li r5, 0xb
/* 8058D704  4B FF FE 19 */	bl aTKN1_setup_think_proc
lbl_8058D708:
/* 8058D708  39 61 00 20 */	addi r11, r1, 0x20
/* 8058D70C  4B B0 D8 15 */	bl func_8009AF20
/* 8058D710  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058D714  7C 08 03 A6 */	mtlr r0
/* 8058D718  38 21 00 20 */	addi r1, r1, 0x20
/* 8058D71C  4E 80 00 20 */	blr 

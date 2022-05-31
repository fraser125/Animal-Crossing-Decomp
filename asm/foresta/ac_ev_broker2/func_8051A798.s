lbl_8051A798:
/* 8051A798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051A79C  7C 08 02 A6 */	mflr r0
/* 8051A7A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051A7A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8051A7A8  4B B8 07 2D */	bl func_8009AED4
/* 8051A7AC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051A7B0  7C 7F 1B 78 */	mr r31, r3
/* 8051A7B4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051A7B8  7C 9D 23 78 */	mr r29, r4
/* 8051A7BC  3F C5 00 02 */	addis r30, r5, 2
/* 8051A7C0  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 8051A7C4  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8051A7C8  7D 89 03 A6 */	mtctr r12
/* 8051A7CC  4E 80 04 21 */	bctrl 
/* 8051A7D0  2C 03 00 01 */	cmpwi r3, 1
/* 8051A7D4  40 82 00 88 */	bne lbl_8051A85C
/* 8051A7D8  80 7E 60 4C */	lwz r3, 0x604c(r30)
/* 8051A7DC  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A00D4@ha */
/* 8051A7E0  38 A4 00 D4 */	addi r5, r4, ct_data@l /* 0x806A00D4@l */
/* 8051A7E4  7F FE FB 78 */	mr r30, r31
/* 8051A7E8  81 83 00 D0 */	lwz r12, 0xd0(r3)
/* 8051A7EC  7F E3 FB 78 */	mr r3, r31
/* 8051A7F0  7F A4 EB 78 */	mr r4, r29
/* 8051A7F4  7D 89 03 A6 */	mtctr r12
/* 8051A7F8  4E 80 04 21 */	bctrl 
/* 8051A7FC  38 A0 00 00 */	li r5, 0
/* 8051A800  3C 60 80 65 */	lis r3, data_8064908C@ha /* 0x8064908C@ha */
/* 8051A804  98 BF 08 30 */	stb r5, 0x830(r31)
/* 8051A808  38 00 FF FF */	li r0, -1
/* 8051A80C  38 83 90 8C */	addi r4, r3, data_8064908C@l /* 0x8064908C@l */
/* 8051A810  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051A814  98 1F 09 A4 */	stb r0, 0x9a4(r31)
/* 8051A818  38 00 00 01 */	li r0, 1
/* 8051A81C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051A820  C0 04 00 00 */	lfs f0, 0(r4)
/* 8051A824  98 1F 01 08 */	stb r0, 0x108(r31)
/* 8051A828  38 00 00 32 */	li r0, 0x32
/* 8051A82C  3C 63 00 03 */	addis r3, r3, 3
/* 8051A830  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
/* 8051A834  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 8051A838  A0 03 85 3E */	lhz r0, -0x7ac2(r3)
/* 8051A83C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8051A840  40 82 00 10 */	bne lbl_8051A850
/* 8051A844  B0 BF 09 78 */	sth r5, 0x978(r31)
/* 8051A848  38 80 00 00 */	li r4, 0
/* 8051A84C  48 00 00 08 */	b lbl_8051A854
lbl_8051A850:
/* 8051A850  38 80 00 07 */	li r4, 7
lbl_8051A854:
/* 8051A854  7F C3 F3 78 */	mr r3, r30
/* 8051A858  48 00 13 0D */	bl aEBR2_setupAction
lbl_8051A85C:
/* 8051A85C  39 61 00 20 */	addi r11, r1, 0x20
/* 8051A860  4B B8 06 C1 */	bl func_8009AF20
/* 8051A864  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051A868  7C 08 03 A6 */	mtlr r0
/* 8051A86C  38 21 00 20 */	addi r1, r1, 0x20
/* 8051A870  4E 80 00 20 */	blr 

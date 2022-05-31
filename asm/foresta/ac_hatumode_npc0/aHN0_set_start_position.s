lbl_8052ADB4:
/* 8052ADB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052ADB8  7C 08 02 A6 */	mflr r0
/* 8052ADBC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052ADC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052ADC4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8052ADC8  3C 84 00 02 */	addis r4, r4, 2
/* 8052ADCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052ADD0  7C 7F 1B 78 */	mr r31, r3
/* 8052ADD4  80 84 60 D0 */	lwz r4, 0x60d0(r4)
/* 8052ADD8  28 04 00 00 */	cmplwi r4, 0
/* 8052ADDC  40 82 00 0C */	bne lbl_8052ADE8
/* 8052ADE0  38 60 00 00 */	li r3, 0
/* 8052ADE4  48 00 00 2C */	b lbl_8052AE10
lbl_8052ADE8:
/* 8052ADE8  81 84 00 08 */	lwz r12, 8(r4)
/* 8052ADEC  7D 89 03 A6 */	mtctr r12
/* 8052ADF0  4E 80 04 21 */	bctrl 
/* 8052ADF4  98 7F 09 A8 */	stb r3, 0x9a8(r31)
/* 8052ADF8  38 00 80 00 */	li r0, -32768
/* 8052ADFC  38 60 00 01 */	li r3, 1
/* 8052AE00  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8052AE04  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8052AE08  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 8052AE0C  B0 1F 09 24 */	sth r0, 0x924(r31)
lbl_8052AE10:
/* 8052AE10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052AE14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052AE18  7C 08 03 A6 */	mtlr r0
/* 8052AE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052AE20  4E 80 00 20 */	blr 

lbl_8039ADD0:
/* 8039ADD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039ADD4  7C 08 02 A6 */	mflr r0
/* 8039ADD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039ADDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039ADE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039ADE4  3C 63 00 02 */	addis r3, r3, 2
/* 8039ADE8  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8039ADEC  28 00 00 05 */	cmplwi r0, 5
/* 8039ADF0  40 80 00 14 */	bge lbl_8039AE04
/* 8039ADF4  3C 60 20 00 */	lis r3, 0x2000 /* 0x20000016@ha */
/* 8039ADF8  38 63 00 16 */	addi r3, r3, 0x0016 /* 0x20000016@l */
/* 8039ADFC  7C 63 02 14 */	add r3, r3, r0
/* 8039AE00  4B FF FB 79 */	bl mEv_EventON
lbl_8039AE04:
/* 8039AE04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AE08  7C 08 03 A6 */	mtlr r0
/* 8039AE0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AE10  4E 80 00 20 */	blr 

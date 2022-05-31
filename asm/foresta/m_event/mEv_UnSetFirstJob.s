lbl_8039AC94:
/* 8039AC94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AC98  7C 08 02 A6 */	mflr r0
/* 8039AC9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039ACA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039ACA4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039ACA8  3C 63 00 02 */	addis r3, r3, 2
/* 8039ACAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039ACB0  8B E3 60 03 */	lbz r31, 0x6003(r3)
/* 8039ACB4  28 1F 00 04 */	cmplwi r31, 4
/* 8039ACB8  40 80 00 1C */	bge lbl_8039ACD4
/* 8039ACBC  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039ACC0  38 63 00 02 */	addi r3, r3, 2
/* 8039ACC4  4B FF FD 05 */	bl mEv_EventOFF
/* 8039ACC8  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039ACCC  38 63 00 0A */	addi r3, r3, 0xa
/* 8039ACD0  4B FF FC A9 */	bl mEv_EventON
lbl_8039ACD4:
/* 8039ACD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039ACD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039ACDC  7C 08 03 A6 */	mtlr r0
/* 8039ACE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8039ACE4  4E 80 00 20 */	blr 

lbl_8039AE74:
/* 8039AE74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AE78  7C 08 02 A6 */	mflr r0
/* 8039AE7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039AE80  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039AE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039AE88  3C 63 00 02 */	addis r3, r3, 2
/* 8039AE8C  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8039AE90  28 00 00 05 */	cmplwi r0, 5
/* 8039AE94  40 80 00 14 */	bge lbl_8039AEA8
/* 8039AE98  3C 60 20 00 */	lis r3, 0x2000 /* 0x20000016@ha */
/* 8039AE9C  38 63 00 16 */	addi r3, r3, 0x0016 /* 0x20000016@l */
/* 8039AEA0  7C 63 02 14 */	add r3, r3, r0
/* 8039AEA4  4B FF FB 25 */	bl mEv_EventOFF
lbl_8039AEA8:
/* 8039AEA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AEAC  7C 08 03 A6 */	mtlr r0
/* 8039AEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AEB4  4E 80 00 20 */	blr 

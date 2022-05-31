lbl_8039AAEC:
/* 8039AAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AAF0  7C 08 02 A6 */	mflr r0
/* 8039AAF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039AAF8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039AAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039AB00  3C 63 00 02 */	addis r3, r3, 2
/* 8039AB04  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8039AB08  28 00 00 04 */	cmplwi r0, 4
/* 8039AB0C  40 80 00 14 */	bge lbl_8039AB20
/* 8039AB10  3C 60 20 00 */	lis r3, 0x2000 /* 0x20000002@ha */
/* 8039AB14  38 63 00 02 */	addi r3, r3, 0x0002 /* 0x20000002@l */
/* 8039AB18  7C 63 02 14 */	add r3, r3, r0
/* 8039AB1C  4B FF FE 5D */	bl mEv_EventON
lbl_8039AB20:
/* 8039AB20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AB24  7C 08 03 A6 */	mtlr r0
/* 8039AB28  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AB2C  4E 80 00 20 */	blr 

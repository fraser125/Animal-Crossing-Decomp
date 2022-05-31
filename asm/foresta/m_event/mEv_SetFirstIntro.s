lbl_8039ACE8:
/* 8039ACE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039ACEC  7C 08 02 A6 */	mflr r0
/* 8039ACF0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039ACF4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039ACF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039ACFC  3C 63 00 02 */	addis r3, r3, 2
/* 8039AD00  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8039AD04  28 00 00 04 */	cmplwi r0, 4
/* 8039AD08  40 80 00 14 */	bge lbl_8039AD1C
/* 8039AD0C  3C 60 20 00 */	lis r3, 0x2000 /* 0x20000006@ha */
/* 8039AD10  38 63 00 06 */	addi r3, r3, 0x0006 /* 0x20000006@l */
/* 8039AD14  7C 63 02 14 */	add r3, r3, r0
/* 8039AD18  4B FF FC 61 */	bl mEv_EventON
lbl_8039AD1C:
/* 8039AD1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AD20  7C 08 03 A6 */	mtlr r0
/* 8039AD24  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AD28  4E 80 00 20 */	blr 

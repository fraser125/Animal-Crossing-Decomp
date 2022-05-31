lbl_8039AD8C:
/* 8039AD8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AD90  7C 08 02 A6 */	mflr r0
/* 8039AD94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039AD98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039AD9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039ADA0  3C 63 00 02 */	addis r3, r3, 2
/* 8039ADA4  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8039ADA8  28 00 00 04 */	cmplwi r0, 4
/* 8039ADAC  40 80 00 14 */	bge lbl_8039ADC0
/* 8039ADB0  3C 60 20 00 */	lis r3, 0x2000 /* 0x20000006@ha */
/* 8039ADB4  38 63 00 06 */	addi r3, r3, 0x0006 /* 0x20000006@l */
/* 8039ADB8  7C 63 02 14 */	add r3, r3, r0
/* 8039ADBC  4B FF FC 0D */	bl mEv_EventOFF
lbl_8039ADC0:
/* 8039ADC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039ADC4  7C 08 03 A6 */	mtlr r0
/* 8039ADC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8039ADCC  4E 80 00 20 */	blr 

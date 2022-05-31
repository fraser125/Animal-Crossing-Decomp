lbl_804ABF90:
/* 804ABF90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ABF94  7C 08 02 A6 */	mflr r0
/* 804ABF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ABF9C  88 04 00 02 */	lbz r0, 2(r4)
/* 804ABFA0  28 00 00 03 */	cmplwi r0, 3
/* 804ABFA4  40 82 00 44 */	bne lbl_804ABFE8
/* 804ABFA8  2C 03 00 1F */	cmpwi r3, 0x1f
/* 804ABFAC  41 81 00 3C */	bgt lbl_804ABFE8
/* 804ABFB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804ABFB4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804ABFB8  3C 63 00 02 */	addis r3, r3, 2
/* 804ABFBC  80 63 60 A0 */	lwz r3, 0x60a0(r3)
/* 804ABFC0  80 A3 00 08 */	lwz r5, 8(r3)
/* 804ABFC4  2C 05 FF FF */	cmpwi r5, -1
/* 804ABFC8  41 82 00 20 */	beq lbl_804ABFE8
/* 804ABFCC  80 64 01 50 */	lwz r3, 0x150(r4)
/* 804ABFD0  28 03 00 00 */	cmplwi r3, 0
/* 804ABFD4  41 82 00 14 */	beq lbl_804ABFE8
/* 804ABFD8  A8 03 00 26 */	lha r0, 0x26(r3)
/* 804ABFDC  7C 00 28 00 */	cmpw r0, r5
/* 804ABFE0  40 82 00 08 */	bne lbl_804ABFE8
/* 804ABFE4  4B EC 84 5D */	bl Actor_delete
lbl_804ABFE8:
/* 804ABFE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ABFEC  7C 08 03 A6 */	mtlr r0
/* 804ABFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804ABFF4  4E 80 00 20 */	blr 

lbl_804ABAE4:
/* 804ABAE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804ABAE8  7C 08 02 A6 */	mflr r0
/* 804ABAEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804ABAF0  39 61 00 30 */	addi r11, r1, 0x30
/* 804ABAF4  4B BE F3 E1 */	bl func_8009AED4
/* 804ABAF8  7C 7D 1B 78 */	mr r29, r3
/* 804ABAFC  38 60 00 0F */	li r3, 0xf
/* 804ABB00  A0 BD 00 06 */	lhz r5, 6(r29)
/* 804ABB04  38 80 00 08 */	li r4, 8
/* 804ABB08  3C A5 FF FF */	addis r5, r5, 0xffff
/* 804ABB0C  38 05 2F D3 */	addi r0, r5, 0x2fd3
/* 804ABB10  54 1E 07 FE */	clrlwi r30, r0, 0x1f
/* 804ABB14  4B EF 22 B9 */	bl mEv_get_save_area
/* 804ABB18  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 804ABB1C  7C 7F 1B 78 */	mr r31, r3
/* 804ABB20  57 C0 10 3A */	slwi r0, r30, 2
/* 804ABB24  7F A3 EB 78 */	mr r3, r29
/* 804ABB28  FC 00 00 1E */	fctiwz f0, f0
/* 804ABB2C  7C 9F 02 14 */	add r4, r31, r0
/* 804ABB30  D8 01 00 08 */	stfd f0, 8(r1)
/* 804ABB34  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804ABB38  B0 04 00 0A */	sth r0, 0xa(r4)
/* 804ABB3C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 804ABB40  FC 00 00 1E */	fctiwz f0, f0
/* 804ABB44  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804ABB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ABB4C  B0 04 00 0C */	sth r0, 0xc(r4)
/* 804ABB50  4B FF FF 05 */	bl aTKC_clip_get_angle
/* 804ABB54  57 C0 08 3C */	slwi r0, r30, 1
/* 804ABB58  7C 9F 02 14 */	add r4, r31, r0
/* 804ABB5C  B0 64 00 12 */	sth r3, 0x12(r4)
/* 804ABB60  39 61 00 30 */	addi r11, r1, 0x30
/* 804ABB64  4B BE F3 BD */	bl func_8009AF20
/* 804ABB68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804ABB6C  7C 08 03 A6 */	mtlr r0
/* 804ABB70  38 21 00 30 */	addi r1, r1, 0x30
/* 804ABB74  4E 80 00 20 */	blr 

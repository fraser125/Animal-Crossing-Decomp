lbl_804ABEC4:
/* 804ABEC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804ABEC8  7C 08 02 A6 */	mflr r0
/* 804ABECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ABED0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804ABED4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804ABED8  7C 7E 1B 78 */	mr r30, r3
/* 804ABEDC  3C 60 80 69 */	lis r3, dt_tbl@ha /* 0x8068F3A8@ha */
/* 804ABEE0  88 9E 09 AB */	lbz r4, 0x9ab(r30)
/* 804ABEE4  38 03 F3 A8 */	addi r0, r3, dt_tbl@l /* 0x8068F3A8@l */
/* 804ABEE8  54 83 18 38 */	slwi r3, r4, 3
/* 804ABEEC  7F E0 1A 14 */	add r31, r0, r3
/* 804ABEF0  4B BB 0E 05 */	bl fqrand
/* 804ABEF4  3C 60 80 64 */	lis r3, lit_752@ha /* 0x80645E9C@ha */
/* 804ABEF8  80 1F 00 00 */	lwz r0, 0(r31)
/* 804ABEFC  38 83 5E 9C */	addi r4, r3, lit_752@l /* 0x80645E9C@l */
/* 804ABF00  80 7E 09 98 */	lwz r3, 0x998(r30)
/* 804ABF04  C0 04 00 00 */	lfs f0, 0(r4)
/* 804ABF08  EC 00 00 72 */	fmuls f0, f0, f1
/* 804ABF0C  FC 00 00 1E */	fctiwz f0, f0
/* 804ABF10  D8 01 00 08 */	stfd f0, 8(r1)
/* 804ABF14  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804ABF18  7C 00 22 14 */	add r0, r0, r4
/* 804ABF1C  7C 63 02 14 */	add r3, r3, r0
/* 804ABF20  4B EE C5 F5 */	bl mDemo_Set_msg_num
/* 804ABF24  88 7F 00 04 */	lbz r3, 4(r31)
/* 804ABF28  4B EE C9 21 */	bl mDemo_Set_talk_turn
/* 804ABF2C  88 7F 00 05 */	lbz r3, 5(r31)
/* 804ABF30  4B EE C9 F1 */	bl mDemo_Set_camera
/* 804ABF34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804ABF38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804ABF3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804ABF40  7C 08 03 A6 */	mtlr r0
/* 804ABF44  38 21 00 20 */	addi r1, r1, 0x20
/* 804ABF48  4E 80 00 20 */	blr 

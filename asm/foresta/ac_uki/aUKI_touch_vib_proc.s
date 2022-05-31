lbl_804ADA78:
/* 804ADA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ADA7C  7C 08 02 A6 */	mflr r0
/* 804ADA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ADA84  80 03 02 90 */	lwz r0, 0x290(r3)
/* 804ADA88  2C 00 00 00 */	cmpwi r0, 0
/* 804ADA8C  41 80 00 44 */	blt lbl_804ADAD0
/* 804ADA90  3C A0 80 69 */	lis r5, gyoei_type@ha /* 0x8068F798@ha */
/* 804ADA94  3C 60 80 64 */	lis r3, data_80645F24@ha /* 0x80645F24@ha */
/* 804ADA98  54 06 18 38 */	slwi r6, r0, 3
/* 804ADA9C  3C 80 80 69 */	lis r4, vib_data_table_537@ha /* 0x8068F9A8@ha */
/* 804ADAA0  38 A5 F7 98 */	addi r5, r5, gyoei_type@l /* 0x8068F798@l */
/* 804ADAA4  C0 23 5F 24 */	lfs f1, data_80645F24@l(r3)  /* 0x80645F24@l */
/* 804ADAA8  7C A5 32 AE */	lhax r5, r5, r6
/* 804ADAAC  38 04 F9 A8 */	addi r0, r4, vib_data_table_537@l /* 0x8068F9A8@l */
/* 804ADAB0  38 80 00 01 */	li r4, 1
/* 804ADAB4  54 A3 20 36 */	slwi r3, r5, 4
/* 804ADAB8  7C E0 1A 14 */	add r7, r0, r3
/* 804ADABC  80 67 00 00 */	lwz r3, 0(r7)
/* 804ADAC0  80 A7 00 04 */	lwz r5, 4(r7)
/* 804ADAC4  80 C7 00 08 */	lwz r6, 8(r7)
/* 804ADAC8  80 E7 00 0C */	lwz r7, 0xc(r7)
/* 804ADACC  4B F5 64 A1 */	bl mVibctl_simple_entry
lbl_804ADAD0:
/* 804ADAD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ADAD4  7C 08 03 A6 */	mtlr r0
/* 804ADAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 804ADADC  4E 80 00 20 */	blr 

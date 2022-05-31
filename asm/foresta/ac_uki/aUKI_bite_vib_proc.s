lbl_804ADAE0:
/* 804ADAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ADAE4  7C 08 02 A6 */	mflr r0
/* 804ADAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ADAEC  80 03 02 90 */	lwz r0, 0x290(r3)
/* 804ADAF0  2C 00 00 00 */	cmpwi r0, 0
/* 804ADAF4  41 80 00 44 */	blt lbl_804ADB38
/* 804ADAF8  3C A0 80 69 */	lis r5, gyoei_type@ha /* 0x8068F798@ha */
/* 804ADAFC  3C 60 80 64 */	lis r3, data_80645F24@ha /* 0x80645F24@ha */
/* 804ADB00  54 06 18 38 */	slwi r6, r0, 3
/* 804ADB04  3C 80 80 69 */	lis r4, vib_data_table_544@ha /* 0x8068FA28@ha */
/* 804ADB08  38 A5 F7 98 */	addi r5, r5, gyoei_type@l /* 0x8068F798@l */
/* 804ADB0C  C0 23 5F 24 */	lfs f1, data_80645F24@l(r3)  /* 0x80645F24@l */
/* 804ADB10  7C A5 32 AE */	lhax r5, r5, r6
/* 804ADB14  38 04 FA 28 */	addi r0, r4, vib_data_table_544@l /* 0x8068FA28@l */
/* 804ADB18  38 80 00 09 */	li r4, 9
/* 804ADB1C  54 A3 20 36 */	slwi r3, r5, 4
/* 804ADB20  7C E0 1A 14 */	add r7, r0, r3
/* 804ADB24  80 67 00 00 */	lwz r3, 0(r7)
/* 804ADB28  80 A7 00 04 */	lwz r5, 4(r7)
/* 804ADB2C  80 C7 00 08 */	lwz r6, 8(r7)
/* 804ADB30  80 E7 00 0C */	lwz r7, 0xc(r7)
/* 804ADB34  4B F5 64 39 */	bl mVibctl_simple_entry
lbl_804ADB38:
/* 804ADB38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ADB3C  7C 08 03 A6 */	mtlr r0
/* 804ADB40  38 21 00 10 */	addi r1, r1, 0x10
/* 804ADB44  4E 80 00 20 */	blr 

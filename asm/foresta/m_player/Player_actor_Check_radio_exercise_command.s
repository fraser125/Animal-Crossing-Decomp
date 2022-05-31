lbl_804DEDC8:
/* 804DEDC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804DEDCC  7C 08 02 A6 */	mflr r0
/* 804DEDD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804DEDD4  39 61 00 40 */	addi r11, r1, 0x40
/* 804DEDD8  4B BB C0 DD */	bl func_8009AEB4
/* 804DEDDC  3C C0 80 6A */	lis r6, data_8069E480@ha /* 0x8069E480@ha */
/* 804DEDE0  2C 04 00 00 */	cmpwi r4, 0
/* 804DEDE4  3B A6 E4 80 */	addi r29, r6, data_8069E480@l /* 0x8069E480@l */
/* 804DEDE8  83 43 12 38 */	lwz r26, 0x1238(r3)
/* 804DEDEC  7C BE 2B 78 */	mr r30, r5
/* 804DEDF0  3B 63 12 2C */	addi r27, r3, 0x122c
/* 804DEDF4  3B 3D 02 24 */	addi r25, r29, 0x224
/* 804DEDF8  3B 1D 02 6C */	addi r24, r29, 0x26c
/* 804DEDFC  41 80 00 14 */	blt lbl_804DEE10
/* 804DEE00  38 7D 02 B4 */	addi r3, r29, 0x2b4
/* 804DEE04  7F 83 20 AE */	lbzx r28, r3, r4
/* 804DEE08  7F 9C 07 74 */	extsb r28, r28
/* 804DEE0C  48 00 00 08 */	b lbl_804DEE14
lbl_804DEE10:
/* 804DEE10  3B 80 FF FF */	li r28, -1
lbl_804DEE14:
/* 804DEE14  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DEE18  3B E0 00 00 */	li r31, 0
/* 804DEE1C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804DEE20  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_804DEE24:
/* 804DEE24  80 78 00 00 */	lwz r3, 0(r24)
/* 804DEE28  2C 1C 00 00 */	cmpwi r28, 0
/* 804DEE2C  80 19 00 00 */	lwz r0, 0(r25)
/* 804DEE30  38 63 FF FF */	addi r3, r3, -1
/* 804DEE34  7E E0 1A 14 */	add r23, r0, r3
/* 804DEE38  41 80 00 0C */	blt lbl_804DEE44
/* 804DEE3C  7C 1F E0 00 */	cmpw r31, r28
/* 804DEE40  40 82 00 7C */	bne lbl_804DEEBC
lbl_804DEE44:
/* 804DEE44  7C 75 1B 78 */	mr r21, r3
/* 804DEE48  3A C0 00 00 */	li r22, 0
/* 804DEE4C  48 00 00 3C */	b lbl_804DEE88
lbl_804DEE50:
/* 804DEE50  7E C3 B3 78 */	mr r3, r22
/* 804DEE54  7F 64 DB 78 */	mr r4, r27
/* 804DEE58  7F 45 D3 78 */	mr r5, r26
/* 804DEE5C  4B FF FD E9 */	bl Player_actor_Get_RadioExerciseCommand
/* 804DEE60  88 17 00 00 */	lbz r0, 0(r23)
/* 804DEE64  7C 64 07 74 */	extsb r4, r3
/* 804DEE68  7C 00 07 74 */	extsb r0, r0
/* 804DEE6C  7C 04 00 00 */	cmpw r4, r0
/* 804DEE70  40 82 00 20 */	bne lbl_804DEE90
/* 804DEE74  7C 60 07 75 */	extsb. r0, r3
/* 804DEE78  41 80 00 18 */	blt lbl_804DEE90
/* 804DEE7C  3A F7 FF FF */	addi r23, r23, -1
/* 804DEE80  3A D6 00 01 */	addi r22, r22, 1
/* 804DEE84  3A B5 FF FF */	addi r21, r21, -1
lbl_804DEE88:
/* 804DEE88  2C 15 00 00 */	cmpwi r21, 0
/* 804DEE8C  40 80 FF C4 */	bge lbl_804DEE50
lbl_804DEE90:
/* 804DEE90  2C 15 00 00 */	cmpwi r21, 0
/* 804DEE94  40 80 00 28 */	bge lbl_804DEEBC
/* 804DEE98  38 7D 02 B4 */	addi r3, r29, 0x2b4
/* 804DEE9C  7C 03 F8 AE */	lbzx r0, r3, r31
/* 804DEEA0  7C 00 07 75 */	extsb. r0, r0
/* 804DEEA4  41 80 00 10 */	blt lbl_804DEEB4
/* 804DEEA8  3C 60 80 64 */	lis r3, lit_5247@ha /* 0x80647CE4@ha */
/* 804DEEAC  C0 03 7C E4 */	lfs f0, lit_5247@l(r3)  /* 0x80647CE4@l */
/* 804DEEB0  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_804DEEB4:
/* 804DEEB4  7F E3 FB 78 */	mr r3, r31
/* 804DEEB8  48 00 00 1C */	b lbl_804DEED4
lbl_804DEEBC:
/* 804DEEBC  3B FF 00 01 */	addi r31, r31, 1
/* 804DEEC0  3B 39 00 04 */	addi r25, r25, 4
/* 804DEEC4  2C 1F 00 12 */	cmpwi r31, 0x12
/* 804DEEC8  3B 18 00 04 */	addi r24, r24, 4
/* 804DEECC  41 80 FF 58 */	blt lbl_804DEE24
/* 804DEED0  38 60 FF FF */	li r3, -1
lbl_804DEED4:
/* 804DEED4  39 61 00 40 */	addi r11, r1, 0x40
/* 804DEED8  4B BB C0 29 */	bl func_8009AF00
/* 804DEEDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804DEEE0  7C 08 03 A6 */	mtlr r0
/* 804DEEE4  38 21 00 40 */	addi r1, r1, 0x40
/* 804DEEE8  4E 80 00 20 */	blr 

lbl_803B98CC:
/* 803B98CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803B98D0  7C 08 02 A6 */	mflr r0
/* 803B98D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 803B98D8  39 61 00 50 */	addi r11, r1, 0x50
/* 803B98DC  4B CE 15 D9 */	bl func_8009AEB4
/* 803B98E0  3D 20 81 17 */	lis r9, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B98E4  7C 75 1B 78 */	mr r21, r3
/* 803B98E8  7C 96 23 78 */	mr r22, r4
/* 803B98EC  7C B7 2B 78 */	mr r23, r5
/* 803B98F0  7C D8 33 78 */	mr r24, r6
/* 803B98F4  7C F9 3B 78 */	mr r25, r7
/* 803B98F8  7D 1A 43 78 */	mr r26, r8
/* 803B98FC  3B A9 9B A0 */	addi r29, r9, data_81169BA0@l /* 0x81169BA0@l */
/* 803B9900  3B 60 00 00 */	li r27, 0
/* 803B9904  3B E0 00 00 */	li r31, 0
/* 803B9908  3B C0 00 00 */	li r30, 0
lbl_803B990C:
/* 803B990C  7C 7D F2 14 */	add r3, r29, r30
/* 803B9910  80 03 00 44 */	lwz r0, 0x44(r3)
/* 803B9914  28 00 00 00 */	cmplwi r0, 0
/* 803B9918  40 82 00 8C */	bne lbl_803B99A4
/* 803B991C  C0 56 00 00 */	lfs f2, 0(r22)
/* 803B9920  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9924  C0 36 00 04 */	lfs f1, 4(r22)
/* 803B9928  38 03 9B A0 */	addi r0, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B992C  C0 16 00 08 */	lfs f0, 8(r22)
/* 803B9930  FC 40 10 1E */	fctiwz f2, f2
/* 803B9934  FC 20 08 1E */	fctiwz f1, f1
/* 803B9938  7C 60 FA 14 */	add r3, r0, r31
/* 803B993C  FC 00 00 1E */	fctiwz f0, f0
/* 803B9940  3B 83 00 54 */	addi r28, r3, 0x54
/* 803B9944  D8 41 00 08 */	stfd f2, 8(r1)
/* 803B9948  7F 83 E3 78 */	mr r3, r28
/* 803B994C  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 803B9950  7E E7 BB 78 */	mr r7, r23
/* 803B9954  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803B9958  7F 08 C3 78 */	mr r8, r24
/* 803B995C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803B9960  7F 29 CB 78 */	mr r9, r25
/* 803B9964  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803B9968  7F 4A D3 78 */	mr r10, r26
/* 803B996C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 803B9970  48 00 1F 51 */	bl Light_point_ct
/* 803B9974  7E A3 AB 78 */	mr r3, r21
/* 803B9978  7F 85 E3 78 */	mr r5, r28
/* 803B997C  38 95 1D 90 */	addi r4, r21, 0x1d90
/* 803B9980  48 00 27 FD */	bl Global_light_list_new
/* 803B9984  28 03 00 00 */	cmplwi r3, 0
/* 803B9988  41 82 00 1C */	beq lbl_803B99A4
/* 803B998C  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9990  38 04 9B A0 */	addi r0, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B9994  7C 80 F2 14 */	add r4, r0, r30
/* 803B9998  90 64 00 44 */	stw r3, 0x44(r4)
/* 803B999C  7F 63 DB 78 */	mr r3, r27
/* 803B99A0  48 00 00 1C */	b lbl_803B99BC
lbl_803B99A4:
/* 803B99A4  3B 7B 00 01 */	addi r27, r27, 1
/* 803B99A8  3B DE 00 04 */	addi r30, r30, 4
/* 803B99AC  2C 1B 00 04 */	cmpwi r27, 4
/* 803B99B0  3B FF 00 0E */	addi r31, r31, 0xe
/* 803B99B4  41 80 FF 58 */	blt lbl_803B990C
/* 803B99B8  38 60 FF FF */	li r3, -1
lbl_803B99BC:
/* 803B99BC  39 61 00 50 */	addi r11, r1, 0x50
/* 803B99C0  4B CE 15 41 */	bl func_8009AF00
/* 803B99C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803B99C8  7C 08 03 A6 */	mtlr r0
/* 803B99CC  38 21 00 50 */	addi r1, r1, 0x50
/* 803B99D0  4E 80 00 20 */	blr 

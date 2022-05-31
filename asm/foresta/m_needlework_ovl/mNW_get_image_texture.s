lbl_805E992C:
/* 805E992C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E9930  7C 08 02 A6 */	mflr r0
/* 805E9934  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E9938  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E993C  93 C1 00 08 */	stw r30, 8(r1)
/* 805E9940  7C 7E 1B 78 */	mr r30, r3
/* 805E9944  4B FF FE DD */	bl mNW_get_image_no
/* 805E9948  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805E994C  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 805E9950  7F C3 F3 78 */	mr r3, r30
/* 805E9954  83 C4 09 D8 */	lwz r30, 0x9d8(r4)
/* 805E9958  4B FF FD 29 */	bl func_805E9680
/* 805E995C  2C 03 00 00 */	cmpwi r3, 0
/* 805E9960  41 82 00 14 */	beq lbl_805E9974
/* 805E9964  1C 7F 02 20 */	mulli r3, r31, 0x220
/* 805E9968  38 63 00 40 */	addi r3, r3, 0x40
/* 805E996C  7C 7E 1A 14 */	add r3, r30, r3
/* 805E9970  48 00 00 24 */	b lbl_805E9994
lbl_805E9974:
/* 805E9974  57 E0 07 7E */	clrlwi r0, r31, 0x1d
/* 805E9978  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E997C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805E9980  1C 60 02 20 */	mulli r3, r0, 0x220
/* 805E9984  3C 84 00 02 */	addis r4, r4, 2
/* 805E9988  80 04 61 3C */	lwz r0, 0x613c(r4)
/* 805E998C  38 63 12 60 */	addi r3, r3, 0x1260
/* 805E9990  7C 60 1A 14 */	add r3, r0, r3
lbl_805E9994:
/* 805E9994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E9998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E999C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E99A0  7C 08 03 A6 */	mtlr r0
/* 805E99A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805E99A8  4E 80 00 20 */	blr 

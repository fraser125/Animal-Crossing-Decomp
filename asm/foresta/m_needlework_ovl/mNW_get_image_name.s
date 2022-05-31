lbl_805E99AC:
/* 805E99AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E99B0  7C 08 02 A6 */	mflr r0
/* 805E99B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E99B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E99BC  93 C1 00 08 */	stw r30, 8(r1)
/* 805E99C0  7C 7E 1B 78 */	mr r30, r3
/* 805E99C4  4B FF FE 5D */	bl mNW_get_image_no
/* 805E99C8  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805E99CC  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 805E99D0  7F C3 F3 78 */	mr r3, r30
/* 805E99D4  83 C4 09 D8 */	lwz r30, 0x9d8(r4)
/* 805E99D8  4B FF FC A9 */	bl func_805E9680
/* 805E99DC  2C 03 00 00 */	cmpwi r3, 0
/* 805E99E0  41 82 00 14 */	beq lbl_805E99F4
/* 805E99E4  1C 7F 02 20 */	mulli r3, r31, 0x220
/* 805E99E8  38 63 00 20 */	addi r3, r3, 0x20
/* 805E99EC  7C 7E 1A 14 */	add r3, r30, r3
/* 805E99F0  48 00 00 24 */	b lbl_805E9A14
lbl_805E99F4:
/* 805E99F4  57 E0 07 7E */	clrlwi r0, r31, 0x1d
/* 805E99F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E99FC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805E9A00  1C 60 02 20 */	mulli r3, r0, 0x220
/* 805E9A04  3C 84 00 02 */	addis r4, r4, 2
/* 805E9A08  80 04 61 3C */	lwz r0, 0x613c(r4)
/* 805E9A0C  38 63 12 40 */	addi r3, r3, 0x1240
/* 805E9A10  7C 60 1A 14 */	add r3, r0, r3
lbl_805E9A14:
/* 805E9A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E9A18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E9A1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E9A20  7C 08 03 A6 */	mtlr r0
/* 805E9A24  38 21 00 10 */	addi r1, r1, 0x10
/* 805E9A28  4E 80 00 20 */	blr 

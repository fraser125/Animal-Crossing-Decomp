lbl_805E978C:
/* 805E978C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E9790  7C 08 02 A6 */	mflr r0
/* 805E9794  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E9798  39 61 00 20 */	addi r11, r1, 0x20
/* 805E979C  4B AB 17 35 */	bl func_8009AED0
/* 805E97A0  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 805E97A4  7C 9C 23 79 */	or. r28, r4, r4
/* 805E97A8  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 805E97AC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E97B0  3C C6 00 02 */	addis r6, r6, 2
/* 805E97B4  7C BD 2B 78 */	mr r29, r5
/* 805E97B8  80 C6 61 3C */	lwz r6, 0x613c(r6)
/* 805E97BC  83 C4 09 D8 */	lwz r30, 0x9d8(r4)
/* 805E97C0  3B E6 23 40 */	addi r31, r6, 0x2340
/* 805E97C4  41 80 00 44 */	blt lbl_805E9808
/* 805E97C8  2C 1C 00 08 */	cmpwi r28, 8
/* 805E97CC  41 80 00 08 */	blt lbl_805E97D4
/* 805E97D0  48 00 00 38 */	b lbl_805E9808
lbl_805E97D4:
/* 805E97D4  2C 1D 00 00 */	cmpwi r29, 0
/* 805E97D8  41 80 00 30 */	blt lbl_805E9808
/* 805E97DC  2C 1D 00 08 */	cmpwi r29, 8
/* 805E97E0  41 80 00 08 */	blt lbl_805E97E8
/* 805E97E4  48 00 00 24 */	b lbl_805E9808
lbl_805E97E8:
/* 805E97E8  4B FF FE 99 */	bl func_805E9680
/* 805E97EC  2C 03 00 00 */	cmpwi r3, 0
/* 805E97F0  41 82 00 08 */	beq lbl_805E97F8
/* 805E97F4  3B FE 11 20 */	addi r31, r30, 0x1120
lbl_805E97F8:
/* 805E97F8  7C 7F E0 AE */	lbzx r3, r31, r28
/* 805E97FC  7C 1F E8 AE */	lbzx r0, r31, r29
/* 805E9800  7C 1F E1 AE */	stbx r0, r31, r28
/* 805E9804  7C 7F E9 AE */	stbx r3, r31, r29
lbl_805E9808:
/* 805E9808  39 61 00 20 */	addi r11, r1, 0x20
/* 805E980C  4B AB 17 11 */	bl func_8009AF1C
/* 805E9810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E9814  7C 08 03 A6 */	mtlr r0
/* 805E9818  38 21 00 20 */	addi r1, r1, 0x20
/* 805E981C  4E 80 00 20 */	blr 

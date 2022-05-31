lbl_804BBAE0:
/* 804BBAE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BBAE4  7C 08 02 A6 */	mflr r0
/* 804BBAE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BBAEC  39 61 00 40 */	addi r11, r1, 0x40
/* 804BBAF0  4B BD F3 D5 */	bl func_8009AEC4
/* 804BBAF4  3D 20 81 14 */	lis r9, common_data@ha /* 0x81138538@ha */
/* 804BBAF8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804BBAFC  39 29 85 38 */	addi r9, r9, common_data@l /* 0x81138538@l */
/* 804BBB00  7C 79 1B 78 */	mr r25, r3
/* 804BBB04  3D 29 00 02 */	addis r9, r9, 2
/* 804BBB08  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804BBB0C  81 29 60 80 */	lwz r9, 0x6080(r9)
/* 804BBB10  7C 9A 23 78 */	mr r26, r4
/* 804BBB14  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804BBB18  7C BB 2B 78 */	mr r27, r5
/* 804BBB1C  7C DC 33 78 */	mr r28, r6
/* 804BBB20  7C FD 3B 78 */	mr r29, r7
/* 804BBB24  80 89 00 00 */	lwz r4, 0(r9)
/* 804BBB28  7D 1E 43 78 */	mr r30, r8
/* 804BBB2C  3F E4 00 01 */	addis r31, r4, 1
/* 804BBB30  3B FF 25 98 */	addi r31, r31, 0x2598
/* 804BBB34  4B FF B9 51 */	bl func_804B7484
/* 804BBB38  93 A1 00 08 */	stw r29, 8(r1)
/* 804BBB3C  3C 60 80 66 */	lis r3, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804BBB40  38 E3 F0 5C */	addi r7, r3, ZeroSVec@l /* 0x8065F05C@l */
/* 804BBB44  7F E4 FB 78 */	mr r4, r31
/* 804BBB48  93 C1 00 0C */	stw r30, 0xc(r1)
/* 804BBB4C  7F 23 CB 78 */	mr r3, r25
/* 804BBB50  7F 45 D3 78 */	mr r5, r26
/* 804BBB54  7F 66 DB 78 */	mr r6, r27
/* 804BBB58  7F 8A E3 78 */	mr r10, r28
/* 804BBB5C  39 01 00 10 */	addi r8, r1, 0x10
/* 804BBB60  39 20 00 FF */	li r9, 0xff
/* 804BBB64  48 00 02 0D */	bl bit_cmn_single_drawS
/* 804BBB68  7F 23 CB 78 */	mr r3, r25
/* 804BBB6C  4B FF B9 69 */	bl bit_draw_ta_clr
/* 804BBB70  39 61 00 40 */	addi r11, r1, 0x40
/* 804BBB74  4B BD F3 9D */	bl func_8009AF10
/* 804BBB78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BBB7C  7C 08 03 A6 */	mtlr r0
/* 804BBB80  38 21 00 40 */	addi r1, r1, 0x40
/* 804BBB84  4E 80 00 20 */	blr 

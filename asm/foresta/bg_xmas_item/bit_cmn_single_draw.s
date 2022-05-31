lbl_804CA9F0:
/* 804CA9F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CA9F4  7C 08 02 A6 */	mflr r0
/* 804CA9F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CA9FC  39 61 00 40 */	addi r11, r1, 0x40
/* 804CAA00  4B BD 04 C5 */	bl func_8009AEC4
/* 804CAA04  3D 20 81 14 */	lis r9, common_data@ha /* 0x81138538@ha */
/* 804CAA08  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804CAA0C  39 29 85 38 */	addi r9, r9, common_data@l /* 0x81138538@l */
/* 804CAA10  7C 79 1B 78 */	mr r25, r3
/* 804CAA14  3D 29 00 02 */	addis r9, r9, 2
/* 804CAA18  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804CAA1C  81 29 60 80 */	lwz r9, 0x6080(r9)
/* 804CAA20  7C 9A 23 78 */	mr r26, r4
/* 804CAA24  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804CAA28  7C BB 2B 78 */	mr r27, r5
/* 804CAA2C  7C DC 33 78 */	mr r28, r6
/* 804CAA30  7C FD 3B 78 */	mr r29, r7
/* 804CAA34  80 89 00 00 */	lwz r4, 0(r9)
/* 804CAA38  7D 1E 43 78 */	mr r30, r8
/* 804CAA3C  3F E4 00 01 */	addis r31, r4, 1
/* 804CAA40  3B FF 25 98 */	addi r31, r31, 0x2598
/* 804CAA44  4B FF B9 51 */	bl func_804C6394
/* 804CAA48  93 A1 00 08 */	stw r29, 8(r1)
/* 804CAA4C  3C 60 80 66 */	lis r3, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804CAA50  38 E3 F0 5C */	addi r7, r3, ZeroSVec@l /* 0x8065F05C@l */
/* 804CAA54  7F E4 FB 78 */	mr r4, r31
/* 804CAA58  93 C1 00 0C */	stw r30, 0xc(r1)
/* 804CAA5C  7F 23 CB 78 */	mr r3, r25
/* 804CAA60  7F 45 D3 78 */	mr r5, r26
/* 804CAA64  7F 66 DB 78 */	mr r6, r27
/* 804CAA68  7F 8A E3 78 */	mr r10, r28
/* 804CAA6C  39 01 00 10 */	addi r8, r1, 0x10
/* 804CAA70  39 20 00 FF */	li r9, 0xff
/* 804CAA74  48 00 02 0D */	bl bit_cmn_single_drawS
/* 804CAA78  7F 23 CB 78 */	mr r3, r25
/* 804CAA7C  4B FF B9 69 */	bl bit_draw_ta_clr
/* 804CAA80  39 61 00 40 */	addi r11, r1, 0x40
/* 804CAA84  4B BD 04 8D */	bl func_8009AF10
/* 804CAA88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CAA8C  7C 08 03 A6 */	mtlr r0
/* 804CAA90  38 21 00 40 */	addi r1, r1, 0x40
/* 804CAA94  4E 80 00 20 */	blr 

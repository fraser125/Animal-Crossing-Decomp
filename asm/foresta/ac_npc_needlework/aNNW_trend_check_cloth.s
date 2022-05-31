lbl_805619E8:
/* 805619E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805619EC  7C 08 02 A6 */	mflr r0
/* 805619F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805619F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805619F8  4B B3 94 D1 */	bl func_8009AEC8
/* 805619FC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80561A00  7C 7A 1B 78 */	mr r26, r3
/* 80561A04  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80561A08  3B 80 00 00 */	li r28, 0
/* 80561A0C  3F C3 00 01 */	addis r30, r3, 1
/* 80561A10  3B E0 00 00 */	li r31, 0
/* 80561A14  3B 60 00 00 */	li r27, 0
/* 80561A18  3B DE 74 38 */	addi r30, r30, 0x7438
lbl_80561A1C:
/* 80561A1C  7F BE FA 14 */	add r29, r30, r31
/* 80561A20  7F A3 EB 78 */	mr r3, r29
/* 80561A24  4B E6 99 B9 */	bl mNpc_CheckFreeAnimalPersonalID
/* 80561A28  2C 03 00 00 */	cmpwi r3, 0
/* 80561A2C  40 82 00 24 */	bne lbl_80561A50
/* 80561A30  A0 1D 08 E4 */	lhz r0, 0x8e4(r29)
/* 80561A34  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 80561A38  40 82 00 18 */	bne lbl_80561A50
/* 80561A3C  88 1D 08 EB */	lbz r0, 0x8eb(r29)
/* 80561A40  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80561A44  7C 00 D0 00 */	cmpw r0, r26
/* 80561A48  40 82 00 08 */	bne lbl_80561A50
/* 80561A4C  3B 7B 00 01 */	addi r27, r27, 1
lbl_80561A50:
/* 80561A50  3B 9C 00 01 */	addi r28, r28, 1
/* 80561A54  3B FF 09 88 */	addi r31, r31, 0x988
/* 80561A58  2C 1C 00 0F */	cmpwi r28, 0xf
/* 80561A5C  41 80 FF C0 */	blt lbl_80561A1C
/* 80561A60  7F 63 DB 78 */	mr r3, r27
/* 80561A64  39 61 00 20 */	addi r11, r1, 0x20
/* 80561A68  4B B3 94 AD */	bl func_8009AF14
/* 80561A6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80561A70  7C 08 03 A6 */	mtlr r0
/* 80561A74  38 21 00 20 */	addi r1, r1, 0x20
/* 80561A78  4E 80 00 20 */	blr 

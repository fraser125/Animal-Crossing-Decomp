lbl_80511D2C:
/* 80511D2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80511D30  7C 08 02 A6 */	mflr r0
/* 80511D34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80511D38  39 61 00 20 */	addi r11, r1, 0x20
/* 80511D3C  4B B8 91 95 */	bl func_8009AED0
/* 80511D40  7C 7C 1B 78 */	mr r28, r3
/* 80511D44  7C 9D 23 78 */	mr r29, r4
/* 80511D48  7C BE 2B 78 */	mr r30, r5
/* 80511D4C  3B E0 00 00 */	li r31, 0
lbl_80511D50:
/* 80511D50  A0 1C 00 00 */	lhz r0, 0(r28)
/* 80511D54  28 00 58 3A */	cmplwi r0, 0x583a
/* 80511D58  40 82 00 14 */	bne lbl_80511D6C
/* 80511D5C  7F A3 EB 78 */	mr r3, r29
/* 80511D60  7F C4 F3 78 */	mr r4, r30
/* 80511D64  4B E9 29 09 */	bl mFM_GetReseveName
/* 80511D68  B0 7C 00 00 */	sth r3, 0(r28)
lbl_80511D6C:
/* 80511D6C  3B FF 00 01 */	addi r31, r31, 1
/* 80511D70  3B 9C 00 02 */	addi r28, r28, 2
/* 80511D74  2C 1F 01 00 */	cmpwi r31, 0x100
/* 80511D78  41 80 FF D8 */	blt lbl_80511D50
/* 80511D7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80511D80  4B B8 91 9D */	bl func_8009AF1C
/* 80511D84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80511D88  7C 08 03 A6 */	mtlr r0
/* 80511D8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80511D90  4E 80 00 20 */	blr 

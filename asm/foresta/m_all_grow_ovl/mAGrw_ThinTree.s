lbl_805119B0:
/* 805119B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805119B4  7C 08 02 A6 */	mflr r0
/* 805119B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805119BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805119C0  4B B8 95 11 */	bl func_8009AED0
/* 805119C4  38 00 01 00 */	li r0, 0x100
/* 805119C8  7C 7E 1B 78 */	mr r30, r3
/* 805119CC  7C 9F 23 78 */	mr r31, r4
/* 805119D0  90 A1 00 08 */	stw r5, 8(r1)
/* 805119D4  38 80 00 00 */	li r4, 0
/* 805119D8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805119DC  7C 09 03 A6 */	mtctr r0
lbl_805119E0:
/* 805119E0  A0 7E 00 00 */	lhz r3, 0(r30)
/* 805119E4  28 03 08 00 */	cmplwi r3, 0x800
/* 805119E8  41 80 00 0C */	blt lbl_805119F4
/* 805119EC  28 03 08 3B */	cmplwi r3, 0x83b
/* 805119F0  40 81 00 7C */	ble lbl_80511A6C
lbl_805119F4:
/* 805119F4  28 03 08 4F */	cmplwi r3, 0x84f
/* 805119F8  41 80 00 0C */	blt lbl_80511A04
/* 805119FC  28 03 08 5B */	cmplwi r3, 0x85b
/* 80511A00  40 81 00 6C */	ble lbl_80511A6C
lbl_80511A04:
/* 80511A04  28 03 08 5D */	cmplwi r3, 0x85d
/* 80511A08  41 80 00 0C */	blt lbl_80511A14
/* 80511A0C  28 03 08 61 */	cmplwi r3, 0x861
/* 80511A10  40 81 00 5C */	ble lbl_80511A6C
lbl_80511A14:
/* 80511A14  28 03 08 63 */	cmplwi r3, 0x863
/* 80511A18  41 80 00 0C */	blt lbl_80511A24
/* 80511A1C  28 03 08 68 */	cmplwi r3, 0x868
/* 80511A20  40 81 00 4C */	ble lbl_80511A6C
lbl_80511A24:
/* 80511A24  38 03 FF A2 */	addi r0, r3, -94
/* 80511A28  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80511A2C  28 00 00 03 */	cmplwi r0, 3
/* 80511A30  40 81 00 3C */	ble lbl_80511A6C
/* 80511A34  28 03 00 69 */	cmplwi r3, 0x69
/* 80511A38  41 82 00 34 */	beq lbl_80511A6C
/* 80511A3C  38 03 FF 88 */	addi r0, r3, -120
/* 80511A40  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80511A44  28 00 00 02 */	cmplwi r0, 2
/* 80511A48  40 81 00 24 */	ble lbl_80511A6C
/* 80511A4C  28 03 00 82 */	cmplwi r3, 0x82
/* 80511A50  41 82 00 1C */	beq lbl_80511A6C
/* 80511A54  38 03 FF 81 */	addi r0, r3, -127
/* 80511A58  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80511A5C  28 00 00 01 */	cmplwi r0, 1
/* 80511A60  40 81 00 0C */	ble lbl_80511A6C
/* 80511A64  28 03 00 81 */	cmplwi r3, 0x81
/* 80511A68  40 82 00 08 */	bne lbl_80511A70
lbl_80511A6C:
/* 80511A6C  38 84 00 01 */	addi r4, r4, 1
lbl_80511A70:
/* 80511A70  3B DE 00 02 */	addi r30, r30, 2
/* 80511A74  42 00 FF 6C */	bdnz lbl_805119E0
/* 80511A78  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80511A7C  7F A7 00 51 */	subf. r29, r7, r0
/* 80511A80  40 81 00 44 */	ble lbl_80511AC4
/* 80511A84  80 61 00 08 */	lwz r3, 8(r1)
/* 80511A88  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80511A8C  7C 03 02 14 */	add r0, r3, r0
/* 80511A90  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80511A94  48 00 00 20 */	b lbl_80511AB4
lbl_80511A98:
/* 80511A98  7F E4 FB 78 */	mr r4, r31
/* 80511A9C  38 7E FE 00 */	addi r3, r30, -512
/* 80511AA0  38 A1 00 08 */	addi r5, r1, 8
/* 80511AA4  38 C1 00 0C */	addi r6, r1, 0xc
/* 80511AA8  4B FF FD C9 */	bl mAGrw_KillTree0
/* 80511AAC  3B BD FF FF */	addi r29, r29, -1
/* 80511AB0  3B 9C FF FF */	addi r28, r28, -1
lbl_80511AB4:
/* 80511AB4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80511AB8  41 82 00 0C */	beq lbl_80511AC4
/* 80511ABC  2C 1D 00 00 */	cmpwi r29, 0
/* 80511AC0  40 82 FF D8 */	bne lbl_80511A98
lbl_80511AC4:
/* 80511AC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80511AC8  4B B8 94 55 */	bl func_8009AF1C
/* 80511ACC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80511AD0  7C 08 03 A6 */	mtlr r0
/* 80511AD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80511AD8  4E 80 00 20 */	blr 

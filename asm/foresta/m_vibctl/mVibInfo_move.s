lbl_80403D20:
/* 80403D20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80403D24  7C 08 02 A6 */	mflr r0
/* 80403D28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80403D2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80403D30  4B C9 71 A5 */	bl func_8009AED4
/* 80403D34  7C 7D 1B 78 */	mr r29, r3
/* 80403D38  4B FF FF 11 */	bl mVibInfo_force
/* 80403D3C  3B C0 00 00 */	li r30, 0
/* 80403D40  3B E0 00 00 */	li r31, 0
/* 80403D44  48 00 00 18 */	b lbl_80403D5C
lbl_80403D48:
/* 80403D48  38 7F 00 04 */	addi r3, r31, 4
/* 80403D4C  7C 7D 1A 14 */	add r3, r29, r3
/* 80403D50  4B FF FA 45 */	bl func_80403794
/* 80403D54  3B DE 00 01 */	addi r30, r30, 1
/* 80403D58  3B FF 00 44 */	addi r31, r31, 0x44
lbl_80403D5C:
/* 80403D5C  80 7D 01 14 */	lwz r3, 0x114(r29)
/* 80403D60  7C 1E 18 00 */	cmpw r30, r3
/* 80403D64  41 80 FF E4 */	blt lbl_80403D48
/* 80403D68  3B C3 FF FF */	addi r30, r3, -1
/* 80403D6C  1F FE 00 44 */	mulli r31, r30, 0x44
/* 80403D70  48 00 00 28 */	b lbl_80403D98
lbl_80403D74:
/* 80403D74  38 1F 00 30 */	addi r0, r31, 0x30
/* 80403D78  7C 1D 00 2E */	lwzx r0, r29, r0
/* 80403D7C  2C 00 00 03 */	cmpwi r0, 3
/* 80403D80  41 80 00 10 */	blt lbl_80403D90
/* 80403D84  7F A3 EB 78 */	mr r3, r29
/* 80403D88  7F C4 F3 78 */	mr r4, r30
/* 80403D8C  4B FF FD C5 */	bl mVibInfo_elem_delete
lbl_80403D90:
/* 80403D90  3B DE FF FF */	addi r30, r30, -1
/* 80403D94  3B FF FF BC */	addi r31, r31, -68
lbl_80403D98:
/* 80403D98  2C 1E 00 00 */	cmpwi r30, 0
/* 80403D9C  40 80 FF D8 */	bge lbl_80403D74
/* 80403DA0  7F A3 EB 78 */	mr r3, r29
/* 80403DA4  4B FF FE 61 */	bl mVibInfo_set_target_elem
/* 80403DA8  80 1D 01 18 */	lwz r0, 0x118(r29)
/* 80403DAC  2C 00 00 00 */	cmpwi r0, 0
/* 80403DB0  40 82 00 0C */	bne lbl_80403DBC
/* 80403DB4  7F A3 EB 78 */	mr r3, r29
/* 80403DB8  4B FF FF 25 */	bl mVibInfo_set_motor
lbl_80403DBC:
/* 80403DBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80403DC0  4B C9 71 61 */	bl func_8009AF20
/* 80403DC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80403DC8  7C 08 03 A6 */	mtlr r0
/* 80403DCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80403DD0  4E 80 00 20 */	blr 

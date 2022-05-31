lbl_80628E88:
/* 80628E88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80628E8C  7C 08 02 A6 */	mflr r0
/* 80628E90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80628E94  39 61 00 20 */	addi r11, r1, 0x20
/* 80628E98  4B A7 20 31 */	bl func_8009AEC8
/* 80628E9C  7C 9B 23 78 */	mr r27, r4
/* 80628EA0  3C A0 80 6D */	lis r5, data_806D3C08@ha /* 0x806D3C08@ha */
/* 80628EA4  7C 7A 1B 78 */	mr r26, r3
/* 80628EA8  38 80 00 FF */	li r4, 0xff
/* 80628EAC  7F 63 DB 78 */	mr r3, r27
/* 80628EB0  3B C5 3C 08 */	addi r30, r5, data_806D3C08@l /* 0x806D3C08@l */
/* 80628EB4  38 A0 00 9B */	li r5, 0x9b
/* 80628EB8  38 C0 00 96 */	li r6, 0x96
/* 80628EBC  38 E0 00 FF */	li r7, 0xff
/* 80628EC0  4B A3 22 E1 */	bl gfxprint_color
/* 80628EC4  7F 63 DB 78 */	mr r3, r27
/* 80628EC8  38 80 00 0C */	li r4, 0xc
/* 80628ECC  38 A0 00 02 */	li r5, 2
/* 80628ED0  4B A3 23 41 */	bl gfxprint_locate8x8
/* 80628ED4  7F 63 DB 78 */	mr r3, r27
/* 80628ED8  38 9E 07 64 */	addi r4, r30, 0x764
/* 80628EDC  4C C6 31 82 */	crclr 6
/* 80628EE0  4B A3 2A 3D */	bl gfxprint_printf
/* 80628EE4  7F 63 DB 78 */	mr r3, r27
/* 80628EE8  38 80 00 FF */	li r4, 0xff
/* 80628EEC  38 A0 00 FF */	li r5, 0xff
/* 80628EF0  38 C0 00 FF */	li r6, 0xff
/* 80628EF4  38 E0 00 FF */	li r7, 0xff
/* 80628EF8  4B A3 22 A9 */	bl gfxprint_color
/* 80628EFC  3B A0 00 00 */	li r29, 0
/* 80628F00  3B FE 03 7C */	addi r31, r30, 0x37c
lbl_80628F04:
/* 80628F04  7F 63 DB 78 */	mr r3, r27
/* 80628F08  38 BD 00 04 */	addi r5, r29, 4
/* 80628F0C  38 80 00 05 */	li r4, 5
/* 80628F10  4B A3 23 01 */	bl gfxprint_locate8x8
/* 80628F14  80 BA 02 18 */	lwz r5, 0x218(r26)
/* 80628F18  38 7D 00 34 */	addi r3, r29, 0x34
/* 80628F1C  38 80 00 34 */	li r4, 0x34
/* 80628F20  80 1A 02 14 */	lwz r0, 0x214(r26)
/* 80628F24  7C A5 1A 14 */	add r5, r5, r3
/* 80628F28  7C 65 23 D6 */	divw r3, r5, r4
/* 80628F2C  7C 63 21 D6 */	mullw r3, r3, r4
/* 80628F30  7F 83 28 50 */	subf r28, r3, r5
/* 80628F34  7C 1C 00 00 */	cmpw r28, r0
/* 80628F38  40 82 00 48 */	bne lbl_80628F80
/* 80628F3C  80 1A 02 00 */	lwz r0, 0x200(r26)
/* 80628F40  2C 00 00 00 */	cmpwi r0, 0
/* 80628F44  41 82 00 20 */	beq lbl_80628F64
/* 80628F48  7F 63 DB 78 */	mr r3, r27
/* 80628F4C  38 80 00 FF */	li r4, 0xff
/* 80628F50  38 A0 00 78 */	li r5, 0x78
/* 80628F54  38 C0 00 78 */	li r6, 0x78
/* 80628F58  38 E0 00 FF */	li r7, 0xff
/* 80628F5C  4B A3 22 45 */	bl gfxprint_color
/* 80628F60  48 00 00 38 */	b lbl_80628F98
lbl_80628F64:
/* 80628F64  7F 63 DB 78 */	mr r3, r27
/* 80628F68  38 80 00 FF */	li r4, 0xff
/* 80628F6C  38 A0 00 14 */	li r5, 0x14
/* 80628F70  38 C0 00 14 */	li r6, 0x14
/* 80628F74  38 E0 00 FF */	li r7, 0xff
/* 80628F78  4B A3 22 29 */	bl gfxprint_color
/* 80628F7C  48 00 00 1C */	b lbl_80628F98
lbl_80628F80:
/* 80628F80  7F 63 DB 78 */	mr r3, r27
/* 80628F84  38 80 00 C8 */	li r4, 0xc8
/* 80628F88  38 A0 00 C8 */	li r5, 0xc8
/* 80628F8C  38 C0 00 37 */	li r6, 0x37
/* 80628F90  38 E0 00 FF */	li r7, 0xff
/* 80628F94  4B A3 22 0D */	bl gfxprint_color
lbl_80628F98:
/* 80628F98  1C 1C 00 0C */	mulli r0, r28, 0xc
/* 80628F9C  7C BF 00 2E */	lwzx r5, r31, r0
/* 80628FA0  28 05 00 00 */	cmplwi r5, 0
/* 80628FA4  40 82 00 08 */	bne lbl_80628FAC
/* 80628FA8  38 BE 07 78 */	addi r5, r30, 0x778
lbl_80628FAC:
/* 80628FAC  7F 63 DB 78 */	mr r3, r27
/* 80628FB0  38 9E 07 60 */	addi r4, r30, 0x760
/* 80628FB4  4C C6 31 82 */	crclr 6
/* 80628FB8  4B A3 29 65 */	bl gfxprint_printf
/* 80628FBC  3B BD 00 01 */	addi r29, r29, 1
/* 80628FC0  2C 1D 00 0F */	cmpwi r29, 0xf
/* 80628FC4  41 80 FF 40 */	blt lbl_80628F04
/* 80628FC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80628FCC  4B A7 1F 49 */	bl func_8009AF14
/* 80628FD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80628FD4  7C 08 03 A6 */	mtlr r0
/* 80628FD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80628FDC  4E 80 00 20 */	blr 

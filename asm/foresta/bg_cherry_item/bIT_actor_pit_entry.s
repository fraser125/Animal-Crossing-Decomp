lbl_804B4E9C:
/* 804B4E9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B4EA0  7C 08 02 A6 */	mflr r0
/* 804B4EA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B4EA8  39 61 00 40 */	addi r11, r1, 0x40
/* 804B4EAC  4B BE 60 15 */	bl func_8009AEC0
/* 804B4EB0  7C 9A 23 78 */	mr r26, r4
/* 804B4EB4  7C 79 1B 78 */	mr r25, r3
/* 804B4EB8  7C BB 2B 78 */	mr r27, r5
/* 804B4EBC  7C DC 33 78 */	mr r28, r6
/* 804B4EC0  7C FD 3B 78 */	mr r29, r7
/* 804B4EC4  7F 5F 07 34 */	extsh r31, r26
/* 804B4EC8  3B 00 00 00 */	li r24, 0
/* 804B4ECC  3B C0 00 00 */	li r30, 0
/* 804B4ED0  48 00 00 B0 */	b lbl_804B4F80
lbl_804B4ED4:
/* 804B4ED4  A8 19 00 10 */	lha r0, 0x10(r25)
/* 804B4ED8  2C 00 00 00 */	cmpwi r0, 0
/* 804B4EDC  40 82 00 9C */	bne lbl_804B4F78
/* 804B4EE0  B3 59 00 10 */	sth r26, 0x10(r25)
/* 804B4EE4  38 00 00 00 */	li r0, 0
/* 804B4EE8  7F 23 CB 78 */	mr r3, r25
/* 804B4EEC  7F 84 E3 78 */	mr r4, r28
/* 804B4EF0  B3 B9 00 1A */	sth r29, 0x1a(r25)
/* 804B4EF4  B3 79 00 12 */	sth r27, 0x12(r25)
/* 804B4EF8  B0 19 00 16 */	sth r0, 0x16(r25)
/* 804B4EFC  4B F0 5F C1 */	bl xyz_t_move
/* 804B4F00  2C 1F 00 04 */	cmpwi r31, 4
/* 804B4F04  41 82 00 30 */	beq lbl_804B4F34
/* 804B4F08  40 80 00 70 */	bge lbl_804B4F78
/* 804B4F0C  2C 1F 00 01 */	cmpwi r31, 1
/* 804B4F10  41 82 00 08 */	beq lbl_804B4F18
/* 804B4F14  48 00 00 64 */	b lbl_804B4F78
lbl_804B4F18:
/* 804B4F18  3C 60 80 64 */	lis r3, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B4F1C  38 00 00 01 */	li r0, 1
/* 804B4F20  C0 03 5F EC */	lfs f0, data_80645FEC@l(r3)  /* 0x80645FEC@l */
/* 804B4F24  3B 00 00 01 */	li r24, 1
/* 804B4F28  D0 19 00 0C */	stfs f0, 0xc(r25)
/* 804B4F2C  B0 19 00 14 */	sth r0, 0x14(r25)
/* 804B4F30  48 00 00 48 */	b lbl_804B4F78
lbl_804B4F34:
/* 804B4F34  80 D9 00 00 */	lwz r6, 0(r25)
/* 804B4F38  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804B4F3C  80 19 00 04 */	lwz r0, 4(r25)
/* 804B4F40  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804B4F44  38 81 00 08 */	addi r4, r1, 8
/* 804B4F48  38 A0 00 01 */	li r5, 1
/* 804B4F4C  90 C1 00 08 */	stw r6, 8(r1)
/* 804B4F50  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B4F54  80 19 00 08 */	lwz r0, 8(r25)
/* 804B4F58  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B4F5C  4B EF 28 D5 */	bl mFI_SetFG_common
/* 804B4F60  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646014@ha */
/* 804B4F64  38 00 00 00 */	li r0, 0
/* 804B4F68  C0 03 60 14 */	lfs f0, lit_845@l(r3)  /* 0x80646014@l */
/* 804B4F6C  3B 00 00 01 */	li r24, 1
/* 804B4F70  D0 19 00 0C */	stfs f0, 0xc(r25)
/* 804B4F74  B0 19 00 14 */	sth r0, 0x14(r25)
lbl_804B4F78:
/* 804B4F78  3B DE 00 01 */	addi r30, r30, 1
/* 804B4F7C  3B 39 00 1C */	addi r25, r25, 0x1c
lbl_804B4F80:
/* 804B4F80  2C 18 00 00 */	cmpwi r24, 0
/* 804B4F84  40 82 00 0C */	bne lbl_804B4F90
/* 804B4F88  2C 1E 00 0D */	cmpwi r30, 0xd
/* 804B4F8C  41 80 FF 48 */	blt lbl_804B4ED4
lbl_804B4F90:
/* 804B4F90  7F 03 C3 78 */	mr r3, r24
/* 804B4F94  39 61 00 40 */	addi r11, r1, 0x40
/* 804B4F98  4B BE 5F 75 */	bl func_8009AF0C
/* 804B4F9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B4FA0  7C 08 03 A6 */	mtlr r0
/* 804B4FA4  38 21 00 40 */	addi r1, r1, 0x40
/* 804B4FA8  4E 80 00 20 */	blr 

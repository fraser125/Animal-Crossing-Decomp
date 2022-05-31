lbl_804C3D18:
/* 804C3D18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C3D1C  7C 08 02 A6 */	mflr r0
/* 804C3D20  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C3D24  39 61 00 40 */	addi r11, r1, 0x40
/* 804C3D28  4B BD 71 99 */	bl func_8009AEC0
/* 804C3D2C  7C 9A 23 78 */	mr r26, r4
/* 804C3D30  7C 79 1B 78 */	mr r25, r3
/* 804C3D34  7C BB 2B 78 */	mr r27, r5
/* 804C3D38  7C DC 33 78 */	mr r28, r6
/* 804C3D3C  7C FD 3B 78 */	mr r29, r7
/* 804C3D40  7F 5F 07 34 */	extsh r31, r26
/* 804C3D44  3B 00 00 00 */	li r24, 0
/* 804C3D48  3B C0 00 00 */	li r30, 0
/* 804C3D4C  48 00 00 B0 */	b lbl_804C3DFC
lbl_804C3D50:
/* 804C3D50  A8 19 00 10 */	lha r0, 0x10(r25)
/* 804C3D54  2C 00 00 00 */	cmpwi r0, 0
/* 804C3D58  40 82 00 9C */	bne lbl_804C3DF4
/* 804C3D5C  B3 59 00 10 */	sth r26, 0x10(r25)
/* 804C3D60  38 00 00 00 */	li r0, 0
/* 804C3D64  7F 23 CB 78 */	mr r3, r25
/* 804C3D68  7F 84 E3 78 */	mr r4, r28
/* 804C3D6C  B3 B9 00 1A */	sth r29, 0x1a(r25)
/* 804C3D70  B3 79 00 12 */	sth r27, 0x12(r25)
/* 804C3D74  B0 19 00 16 */	sth r0, 0x16(r25)
/* 804C3D78  4B EF 71 45 */	bl xyz_t_move
/* 804C3D7C  2C 1F 00 04 */	cmpwi r31, 4
/* 804C3D80  41 82 00 30 */	beq lbl_804C3DB0
/* 804C3D84  40 80 00 70 */	bge lbl_804C3DF4
/* 804C3D88  2C 1F 00 01 */	cmpwi r31, 1
/* 804C3D8C  41 82 00 08 */	beq lbl_804C3D94
/* 804C3D90  48 00 00 64 */	b lbl_804C3DF4
lbl_804C3D94:
/* 804C3D94  3C 60 80 64 */	lis r3, data_8064613C@ha /* 0x8064613C@ha */
/* 804C3D98  38 00 00 01 */	li r0, 1
/* 804C3D9C  C0 03 61 3C */	lfs f0, data_8064613C@l(r3)  /* 0x8064613C@l */
/* 804C3DA0  3B 00 00 01 */	li r24, 1
/* 804C3DA4  D0 19 00 0C */	stfs f0, 0xc(r25)
/* 804C3DA8  B0 19 00 14 */	sth r0, 0x14(r25)
/* 804C3DAC  48 00 00 48 */	b lbl_804C3DF4
lbl_804C3DB0:
/* 804C3DB0  80 D9 00 00 */	lwz r6, 0(r25)
/* 804C3DB4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C3DB8  80 19 00 04 */	lwz r0, 4(r25)
/* 804C3DBC  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C3DC0  38 81 00 08 */	addi r4, r1, 8
/* 804C3DC4  38 A0 00 01 */	li r5, 1
/* 804C3DC8  90 C1 00 08 */	stw r6, 8(r1)
/* 804C3DCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C3DD0  80 19 00 08 */	lwz r0, 8(r25)
/* 804C3DD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C3DD8  4B EE 3A 59 */	bl mFI_SetFG_common
/* 804C3DDC  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646164@ha */
/* 804C3DE0  38 00 00 00 */	li r0, 0
/* 804C3DE4  C0 03 61 64 */	lfs f0, lit_845@l(r3)  /* 0x80646164@l */
/* 804C3DE8  3B 00 00 01 */	li r24, 1
/* 804C3DEC  D0 19 00 0C */	stfs f0, 0xc(r25)
/* 804C3DF0  B0 19 00 14 */	sth r0, 0x14(r25)
lbl_804C3DF4:
/* 804C3DF4  3B DE 00 01 */	addi r30, r30, 1
/* 804C3DF8  3B 39 00 1C */	addi r25, r25, 0x1c
lbl_804C3DFC:
/* 804C3DFC  2C 18 00 00 */	cmpwi r24, 0
/* 804C3E00  40 82 00 0C */	bne lbl_804C3E0C
/* 804C3E04  2C 1E 00 0D */	cmpwi r30, 0xd
/* 804C3E08  41 80 FF 48 */	blt lbl_804C3D50
lbl_804C3E0C:
/* 804C3E0C  7F 03 C3 78 */	mr r3, r24
/* 804C3E10  39 61 00 40 */	addi r11, r1, 0x40
/* 804C3E14  4B BD 70 F9 */	bl func_8009AF0C
/* 804C3E18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C3E1C  7C 08 03 A6 */	mtlr r0
/* 804C3E20  38 21 00 40 */	addi r1, r1, 0x40
/* 804C3E24  4E 80 00 20 */	blr 

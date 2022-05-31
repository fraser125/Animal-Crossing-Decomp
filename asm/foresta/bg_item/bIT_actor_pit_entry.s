lbl_804BC220:
/* 804BC220  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BC224  7C 08 02 A6 */	mflr r0
/* 804BC228  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BC22C  39 61 00 40 */	addi r11, r1, 0x40
/* 804BC230  4B BD EC 91 */	bl func_8009AEC0
/* 804BC234  7C 9A 23 78 */	mr r26, r4
/* 804BC238  7C 79 1B 78 */	mr r25, r3
/* 804BC23C  7C BB 2B 78 */	mr r27, r5
/* 804BC240  7C DC 33 78 */	mr r28, r6
/* 804BC244  7C FD 3B 78 */	mr r29, r7
/* 804BC248  7F 5F 07 34 */	extsh r31, r26
/* 804BC24C  3B 00 00 00 */	li r24, 0
/* 804BC250  3B C0 00 00 */	li r30, 0
/* 804BC254  48 00 00 B0 */	b lbl_804BC304
lbl_804BC258:
/* 804BC258  A8 19 00 10 */	lha r0, 0x10(r25)
/* 804BC25C  2C 00 00 00 */	cmpwi r0, 0
/* 804BC260  40 82 00 9C */	bne lbl_804BC2FC
/* 804BC264  B3 59 00 10 */	sth r26, 0x10(r25)
/* 804BC268  38 00 00 00 */	li r0, 0
/* 804BC26C  7F 23 CB 78 */	mr r3, r25
/* 804BC270  7F 84 E3 78 */	mr r4, r28
/* 804BC274  B3 B9 00 1A */	sth r29, 0x1a(r25)
/* 804BC278  B3 79 00 12 */	sth r27, 0x12(r25)
/* 804BC27C  B0 19 00 16 */	sth r0, 0x16(r25)
/* 804BC280  4B EF EC 3D */	bl xyz_t_move
/* 804BC284  2C 1F 00 04 */	cmpwi r31, 4
/* 804BC288  41 82 00 30 */	beq lbl_804BC2B8
/* 804BC28C  40 80 00 70 */	bge lbl_804BC2FC
/* 804BC290  2C 1F 00 01 */	cmpwi r31, 1
/* 804BC294  41 82 00 08 */	beq lbl_804BC29C
/* 804BC298  48 00 00 64 */	b lbl_804BC2FC
lbl_804BC29C:
/* 804BC29C  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804BC2A0  38 00 00 01 */	li r0, 1
/* 804BC2A4  C0 03 60 8C */	lfs f0, data_8064608C@l(r3)  /* 0x8064608C@l */
/* 804BC2A8  3B 00 00 01 */	li r24, 1
/* 804BC2AC  D0 19 00 0C */	stfs f0, 0xc(r25)
/* 804BC2B0  B0 19 00 14 */	sth r0, 0x14(r25)
/* 804BC2B4  48 00 00 48 */	b lbl_804BC2FC
lbl_804BC2B8:
/* 804BC2B8  80 D9 00 00 */	lwz r6, 0(r25)
/* 804BC2BC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804BC2C0  80 19 00 04 */	lwz r0, 4(r25)
/* 804BC2C4  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804BC2C8  38 81 00 08 */	addi r4, r1, 8
/* 804BC2CC  38 A0 00 01 */	li r5, 1
/* 804BC2D0  90 C1 00 08 */	stw r6, 8(r1)
/* 804BC2D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BC2D8  80 19 00 08 */	lwz r0, 8(r25)
/* 804BC2DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BC2E0  4B EE B5 51 */	bl mFI_SetFG_common
/* 804BC2E4  3C 60 80 64 */	lis r3, lit_845@ha /* 0x806460B4@ha */
/* 804BC2E8  38 00 00 00 */	li r0, 0
/* 804BC2EC  C0 03 60 B4 */	lfs f0, lit_845@l(r3)  /* 0x806460B4@l */
/* 804BC2F0  3B 00 00 01 */	li r24, 1
/* 804BC2F4  D0 19 00 0C */	stfs f0, 0xc(r25)
/* 804BC2F8  B0 19 00 14 */	sth r0, 0x14(r25)
lbl_804BC2FC:
/* 804BC2FC  3B DE 00 01 */	addi r30, r30, 1
/* 804BC300  3B 39 00 1C */	addi r25, r25, 0x1c
lbl_804BC304:
/* 804BC304  2C 18 00 00 */	cmpwi r24, 0
/* 804BC308  40 82 00 0C */	bne lbl_804BC314
/* 804BC30C  2C 1E 00 0D */	cmpwi r30, 0xd
/* 804BC310  41 80 FF 48 */	blt lbl_804BC258
lbl_804BC314:
/* 804BC314  7F 03 C3 78 */	mr r3, r24
/* 804BC318  39 61 00 40 */	addi r11, r1, 0x40
/* 804BC31C  4B BD EB F1 */	bl func_8009AF0C
/* 804BC320  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BC324  7C 08 03 A6 */	mtlr r0
/* 804BC328  38 21 00 40 */	addi r1, r1, 0x40
/* 804BC32C  4E 80 00 20 */	blr 

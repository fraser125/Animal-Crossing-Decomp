lbl_804CB130:
/* 804CB130  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CB134  7C 08 02 A6 */	mflr r0
/* 804CB138  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CB13C  39 61 00 40 */	addi r11, r1, 0x40
/* 804CB140  4B BC FD 81 */	bl func_8009AEC0
/* 804CB144  7C 9A 23 78 */	mr r26, r4
/* 804CB148  7C 79 1B 78 */	mr r25, r3
/* 804CB14C  7C BB 2B 78 */	mr r27, r5
/* 804CB150  7C DC 33 78 */	mr r28, r6
/* 804CB154  7C FD 3B 78 */	mr r29, r7
/* 804CB158  7F 5F 07 34 */	extsh r31, r26
/* 804CB15C  3B 00 00 00 */	li r24, 0
/* 804CB160  3B C0 00 00 */	li r30, 0
/* 804CB164  48 00 00 B0 */	b lbl_804CB214
lbl_804CB168:
/* 804CB168  A8 19 00 10 */	lha r0, 0x10(r25)
/* 804CB16C  2C 00 00 00 */	cmpwi r0, 0
/* 804CB170  40 82 00 9C */	bne lbl_804CB20C
/* 804CB174  B3 59 00 10 */	sth r26, 0x10(r25)
/* 804CB178  38 00 00 00 */	li r0, 0
/* 804CB17C  7F 23 CB 78 */	mr r3, r25
/* 804CB180  7F 84 E3 78 */	mr r4, r28
/* 804CB184  B3 B9 00 1A */	sth r29, 0x1a(r25)
/* 804CB188  B3 79 00 12 */	sth r27, 0x12(r25)
/* 804CB18C  B0 19 00 16 */	sth r0, 0x16(r25)
/* 804CB190  4B EE FD 2D */	bl xyz_t_move
/* 804CB194  2C 1F 00 04 */	cmpwi r31, 4
/* 804CB198  41 82 00 30 */	beq lbl_804CB1C8
/* 804CB19C  40 80 00 70 */	bge lbl_804CB20C
/* 804CB1A0  2C 1F 00 01 */	cmpwi r31, 1
/* 804CB1A4  41 82 00 08 */	beq lbl_804CB1AC
/* 804CB1A8  48 00 00 64 */	b lbl_804CB20C
lbl_804CB1AC:
/* 804CB1AC  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804CB1B0  38 00 00 01 */	li r0, 1
/* 804CB1B4  C0 03 61 DC */	lfs f0, data_806461DC@l(r3)  /* 0x806461DC@l */
/* 804CB1B8  3B 00 00 01 */	li r24, 1
/* 804CB1BC  D0 19 00 0C */	stfs f0, 0xc(r25)
/* 804CB1C0  B0 19 00 14 */	sth r0, 0x14(r25)
/* 804CB1C4  48 00 00 48 */	b lbl_804CB20C
lbl_804CB1C8:
/* 804CB1C8  80 D9 00 00 */	lwz r6, 0(r25)
/* 804CB1CC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804CB1D0  80 19 00 04 */	lwz r0, 4(r25)
/* 804CB1D4  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804CB1D8  38 81 00 08 */	addi r4, r1, 8
/* 804CB1DC  38 A0 00 01 */	li r5, 1
/* 804CB1E0  90 C1 00 08 */	stw r6, 8(r1)
/* 804CB1E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CB1E8  80 19 00 08 */	lwz r0, 8(r25)
/* 804CB1EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CB1F0  4B ED C6 41 */	bl mFI_SetFG_common
/* 804CB1F4  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646204@ha */
/* 804CB1F8  38 00 00 00 */	li r0, 0
/* 804CB1FC  C0 03 62 04 */	lfs f0, lit_845@l(r3)  /* 0x80646204@l */
/* 804CB200  3B 00 00 01 */	li r24, 1
/* 804CB204  D0 19 00 0C */	stfs f0, 0xc(r25)
/* 804CB208  B0 19 00 14 */	sth r0, 0x14(r25)
lbl_804CB20C:
/* 804CB20C  3B DE 00 01 */	addi r30, r30, 1
/* 804CB210  3B 39 00 1C */	addi r25, r25, 0x1c
lbl_804CB214:
/* 804CB214  2C 18 00 00 */	cmpwi r24, 0
/* 804CB218  40 82 00 0C */	bne lbl_804CB224
/* 804CB21C  2C 1E 00 0D */	cmpwi r30, 0xd
/* 804CB220  41 80 FF 48 */	blt lbl_804CB168
lbl_804CB224:
/* 804CB224  7F 03 C3 78 */	mr r3, r24
/* 804CB228  39 61 00 40 */	addi r11, r1, 0x40
/* 804CB22C  4B BC FC E1 */	bl func_8009AF0C
/* 804CB230  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CB234  7C 08 03 A6 */	mtlr r0
/* 804CB238  38 21 00 40 */	addi r1, r1, 0x40
/* 804CB23C  4E 80 00 20 */	blr 

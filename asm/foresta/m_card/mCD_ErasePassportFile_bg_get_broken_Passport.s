lbl_803FEB24:
/* 803FEB24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803FEB28  7C 08 02 A6 */	mflr r0
/* 803FEB2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803FEB30  39 61 00 40 */	addi r11, r1, 0x40
/* 803FEB34  4B C9 C3 91 */	bl func_8009AEC4
/* 803FEB38  80 03 00 00 */	lwz r0, 0(r3)
/* 803FEB3C  7C 9F 23 78 */	mr r31, r4
/* 803FEB40  83 63 00 0C */	lwz r27, 0xc(r3)
/* 803FEB44  3B 40 00 00 */	li r26, 0
/* 803FEB48  2C 00 FF FF */	cmpwi r0, -1
/* 803FEB4C  80 A4 00 04 */	lwz r5, 4(r4)
/* 803FEB50  41 82 01 50 */	beq lbl_803FECA0
/* 803FEB54  28 1B 00 00 */	cmplwi r27, 0
/* 803FEB58  41 82 01 48 */	beq lbl_803FECA0
/* 803FEB5C  1C 80 00 94 */	mulli r4, r0, 0x94
/* 803FEB60  7C B9 2B 78 */	mr r25, r5
/* 803FEB64  7C 1D 03 78 */	mr r29, r0
/* 803FEB68  7C 1E 03 78 */	mr r30, r0
/* 803FEB6C  3B 84 00 54 */	addi r28, r4, 0x54
/* 803FEB70  7F 83 E2 14 */	add r28, r3, r28
/* 803FEB74  48 00 00 F0 */	b lbl_803FEC64
lbl_803FEB78:
/* 803FEB78  7F C3 F3 78 */	mr r3, r30
/* 803FEB7C  7F 24 CB 78 */	mr r4, r25
/* 803FEB80  7F 85 E3 78 */	mr r5, r28
/* 803FEB84  4B C9 3A 75 */	bl CARDGetStatus
/* 803FEB88  90 7C 00 74 */	stw r3, 0x74(r28)
/* 803FEB8C  80 1C 00 74 */	lwz r0, 0x74(r28)
/* 803FEB90  2C 00 00 00 */	cmpwi r0, 0
/* 803FEB94  40 82 00 CC */	bne lbl_803FEC60
/* 803FEB98  7F 83 E3 78 */	mr r3, r28
/* 803FEB9C  4B FF C1 6D */	bl mCD_CheckPassportFileStatus
/* 803FEBA0  2C 03 00 01 */	cmpwi r3, 1
/* 803FEBA4  40 82 00 BC */	bne lbl_803FEC60
/* 803FEBA8  7F C3 F3 78 */	mr r3, r30
/* 803FEBAC  7F 84 E3 78 */	mr r4, r28
/* 803FEBB0  38 A1 00 08 */	addi r5, r1, 8
/* 803FEBB4  4B C9 28 F1 */	bl CARDOpen
/* 803FEBB8  90 7C 00 74 */	stw r3, 0x74(r28)
/* 803FEBBC  80 1C 00 74 */	lwz r0, 0x74(r28)
/* 803FEBC0  2C 00 00 00 */	cmpwi r0, 0
/* 803FEBC4  40 82 00 9C */	bne lbl_803FEC60
/* 803FEBC8  7F 64 DB 78 */	mr r4, r27
/* 803FEBCC  38 61 00 08 */	addi r3, r1, 8
/* 803FEBD0  38 A0 60 00 */	li r5, 0x6000
/* 803FEBD4  38 C0 00 00 */	li r6, 0
/* 803FEBD8  4B C9 32 69 */	bl CARDRead
/* 803FEBDC  90 7C 00 74 */	stw r3, 0x74(r28)
/* 803FEBE0  80 1C 00 74 */	lwz r0, 0x74(r28)
/* 803FEBE4  2C 00 00 00 */	cmpwi r0, 0
/* 803FEBE8  40 82 00 70 */	bne lbl_803FEC58
/* 803FEBEC  38 7B 30 40 */	addi r3, r27, 0x3040
/* 803FEBF0  38 80 2E 20 */	li r4, 0x2e20
/* 803FEBF4  4B FA D9 09 */	bl mFRm_ReturnCheckSum
/* 803FEBF8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FEBFC  40 82 00 14 */	bne lbl_803FEC10
/* 803FEC00  38 7B 30 60 */	addi r3, r27, 0x3060
/* 803FEC04  4B FE 14 41 */	bl mPr_NullCheckPersonalID
/* 803FEC08  2C 03 00 01 */	cmpwi r3, 1
/* 803FEC0C  40 82 00 4C */	bne lbl_803FEC58
lbl_803FEC10:
/* 803FEC10  93 3F 00 04 */	stw r25, 4(r31)
/* 803FEC14  38 61 00 08 */	addi r3, r1, 8
/* 803FEC18  4B C9 2A 05 */	bl CARDClose
/* 803FEC1C  7F A3 EB 78 */	mr r3, r29
/* 803FEC20  7F 84 E3 78 */	mr r4, r28
/* 803FEC24  38 A0 00 00 */	li r5, 0
/* 803FEC28  4B C9 36 81 */	bl CARDDeleteAsync
/* 803FEC2C  90 7C 00 74 */	stw r3, 0x74(r28)
/* 803FEC30  80 1C 00 74 */	lwz r0, 0x74(r28)
/* 803FEC34  2C 00 00 00 */	cmpwi r0, 0
/* 803FEC38  40 82 00 18 */	bne lbl_803FEC50
/* 803FEC3C  80 7F 00 00 */	lwz r3, 0(r31)
/* 803FEC40  3B 40 00 01 */	li r26, 1
/* 803FEC44  38 03 00 01 */	addi r0, r3, 1
/* 803FEC48  90 1F 00 00 */	stw r0, 0(r31)
/* 803FEC4C  48 00 00 20 */	b lbl_803FEC6C
lbl_803FEC50:
/* 803FEC50  3B 40 FF FF */	li r26, -1
/* 803FEC54  48 00 00 18 */	b lbl_803FEC6C
lbl_803FEC58:
/* 803FEC58  38 61 00 08 */	addi r3, r1, 8
/* 803FEC5C  4B C9 29 C1 */	bl CARDClose
lbl_803FEC60:
/* 803FEC60  3B 39 00 01 */	addi r25, r25, 1
lbl_803FEC64:
/* 803FEC64  2C 19 00 7F */	cmpwi r25, 0x7f
/* 803FEC68  41 80 FF 10 */	blt lbl_803FEB78
lbl_803FEC6C:
/* 803FEC6C  2C 19 00 7F */	cmpwi r25, 0x7f
/* 803FEC70  40 82 00 1C */	bne lbl_803FEC8C
/* 803FEC74  7F A3 EB 78 */	mr r3, r29
/* 803FEC78  4B C9 1B 69 */	bl CARDUnmount
/* 803FEC7C  38 00 00 04 */	li r0, 4
/* 803FEC80  3B 40 00 01 */	li r26, 1
/* 803FEC84  90 1F 00 00 */	stw r0, 0(r31)
/* 803FEC88  48 00 00 2C */	b lbl_803FECB4
lbl_803FEC8C:
/* 803FEC8C  2C 1A FF FF */	cmpwi r26, -1
/* 803FEC90  40 82 00 24 */	bne lbl_803FECB4
/* 803FEC94  7F A3 EB 78 */	mr r3, r29
/* 803FEC98  4B C9 1B 49 */	bl CARDUnmount
/* 803FEC9C  48 00 00 18 */	b lbl_803FECB4
lbl_803FECA0:
/* 803FECA0  2C 00 FF FF */	cmpwi r0, -1
/* 803FECA4  41 82 00 0C */	beq lbl_803FECB0
/* 803FECA8  7C 03 03 78 */	mr r3, r0
/* 803FECAC  4B C9 1B 35 */	bl CARDUnmount
lbl_803FECB0:
/* 803FECB0  3B 40 FF FF */	li r26, -1
lbl_803FECB4:
/* 803FECB4  7F 43 D3 78 */	mr r3, r26
/* 803FECB8  39 61 00 40 */	addi r11, r1, 0x40
/* 803FECBC  4B C9 C2 55 */	bl func_8009AF10
/* 803FECC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803FECC4  7C 08 03 A6 */	mtlr r0
/* 803FECC8  38 21 00 40 */	addi r1, r1, 0x40
/* 803FECCC  4E 80 00 20 */	blr 

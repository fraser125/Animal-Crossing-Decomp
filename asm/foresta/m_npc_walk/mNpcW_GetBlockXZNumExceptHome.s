lbl_803D7EB4:
/* 803D7EB4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803D7EB8  7C 08 02 A6 */	mflr r0
/* 803D7EBC  90 01 00 54 */	stw r0, 0x54(r1)
/* 803D7EC0  39 61 00 50 */	addi r11, r1, 0x50
/* 803D7EC4  4B CC 2F FD */	bl func_8009AEC0
/* 803D7EC8  7C 78 1B 78 */	mr r24, r3
/* 803D7ECC  7C 99 23 78 */	mr r25, r4
/* 803D7ED0  7C BA 2B 78 */	mr r26, r5
/* 803D7ED4  3B E0 00 FF */	li r31, 0xff
/* 803D7ED8  3B C0 00 FF */	li r30, 0xff
/* 803D7EDC  3B A0 00 00 */	li r29, 0
/* 803D7EE0  3B 80 00 00 */	li r28, 0
/* 803D7EE4  3B 60 00 00 */	li r27, 0
lbl_803D7EE8:
/* 803D7EE8  7F 43 D3 78 */	mr r3, r26
/* 803D7EEC  4B FF 34 F1 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803D7EF0  2C 03 00 00 */	cmpwi r3, 0
/* 803D7EF4  40 82 00 6C */	bne lbl_803D7F60
/* 803D7EF8  88 7A 08 99 */	lbz r3, 0x899(r26)
/* 803D7EFC  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 803D7F00  88 BA 08 9A */	lbz r5, 0x89a(r26)
/* 803D7F04  38 03 FF FF */	addi r0, r3, -1
/* 803D7F08  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803D7F0C  38 A5 FF FF */	addi r5, r5, -1
/* 803D7F10  7C 80 1E 30 */	sraw r0, r4, r3
/* 803D7F14  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D7F18  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 803D7F1C  2C 00 00 01 */	cmpwi r0, 1
/* 803D7F20  40 82 00 18 */	bne lbl_803D7F38
/* 803D7F24  38 00 00 01 */	li r0, 1
/* 803D7F28  3B BD 00 01 */	addi r29, r29, 1
/* 803D7F2C  7C 00 18 30 */	slw r0, r0, r3
/* 803D7F30  7F E0 00 78 */	andc r0, r31, r0
/* 803D7F34  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_803D7F38:
/* 803D7F38  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 803D7F3C  7C 00 26 30 */	sraw r0, r0, r4
/* 803D7F40  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D7F44  2C 00 00 01 */	cmpwi r0, 1
/* 803D7F48  40 82 00 18 */	bne lbl_803D7F60
/* 803D7F4C  38 00 00 01 */	li r0, 1
/* 803D7F50  3B 9C 00 01 */	addi r28, r28, 1
/* 803D7F54  7C 00 20 30 */	slw r0, r0, r4
/* 803D7F58  7F C0 00 78 */	andc r0, r30, r0
/* 803D7F5C  54 1E 06 3E */	clrlwi r30, r0, 0x18
lbl_803D7F60:
/* 803D7F60  3B 7B 00 01 */	addi r27, r27, 1
/* 803D7F64  3B 5A 09 88 */	addi r26, r26, 0x988
/* 803D7F68  2C 1B 00 0F */	cmpwi r27, 0xf
/* 803D7F6C  41 80 FF 7C */	blt lbl_803D7EE8
/* 803D7F70  4B C8 4D 85 */	bl fqrand
/* 803D7F74  20 7D 00 05 */	subfic r3, r29, 5
/* 803D7F78  3C 00 43 30 */	lis r0, 0x4330
/* 803D7F7C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803D7F80  3C 80 80 64 */	lis r4, data_80642904@ha /* 0x80642904@ha */
/* 803D7F84  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D7F88  C8 44 29 04 */	lfd f2, data_80642904@l(r4)  /* 0x80642904@l */
/* 803D7F8C  90 01 00 08 */	stw r0, 8(r1)
/* 803D7F90  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D7F94  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D7F98  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D7F9C  FC 00 00 1E */	fctiwz f0, f0
/* 803D7FA0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D7FA4  83 41 00 14 */	lwz r26, 0x14(r1)
/* 803D7FA8  4B C8 4D 4D */	bl fqrand
/* 803D7FAC  20 1C 00 06 */	subfic r0, r28, 6
/* 803D7FB0  3C 60 43 30 */	lis r3, 0x4330
/* 803D7FB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803D7FB8  90 61 00 18 */	stw r3, 0x18(r1)
/* 803D7FBC  3C 80 80 64 */	lis r4, data_80642904@ha /* 0x80642904@ha */
/* 803D7FC0  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 803D7FC4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803D7FC8  38 00 00 05 */	li r0, 5
/* 803D7FCC  C8 44 29 04 */	lfd f2, data_80642904@l(r4)  /* 0x80642904@l */
/* 803D7FD0  38 80 00 00 */	li r4, 0
/* 803D7FD4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803D7FD8  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D7FDC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D7FE0  FC 00 00 1E */	fctiwz f0, f0
/* 803D7FE4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803D7FE8  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 803D7FEC  7C 09 03 A6 */	mtctr r0
lbl_803D7FF0:
/* 803D7FF0  7C 60 26 30 */	sraw r0, r3, r4
/* 803D7FF4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D7FF8  2C 00 00 01 */	cmpwi r0, 1
/* 803D7FFC  40 82 00 10 */	bne lbl_803D800C
/* 803D8000  2C 1A 00 00 */	cmpwi r26, 0
/* 803D8004  40 81 00 10 */	ble lbl_803D8014
/* 803D8008  3B 5A FF FF */	addi r26, r26, -1
lbl_803D800C:
/* 803D800C  38 84 00 01 */	addi r4, r4, 1
/* 803D8010  42 00 FF E0 */	bdnz lbl_803D7FF0
lbl_803D8014:
/* 803D8014  38 64 00 01 */	addi r3, r4, 1
/* 803D8018  38 00 00 06 */	li r0, 6
/* 803D801C  90 78 00 00 */	stw r3, 0(r24)
/* 803D8020  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 803D8024  38 80 00 00 */	li r4, 0
/* 803D8028  7C 09 03 A6 */	mtctr r0
lbl_803D802C:
/* 803D802C  7C 60 26 30 */	sraw r0, r3, r4
/* 803D8030  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D8034  2C 00 00 01 */	cmpwi r0, 1
/* 803D8038  40 82 00 10 */	bne lbl_803D8048
/* 803D803C  2C 05 00 00 */	cmpwi r5, 0
/* 803D8040  40 81 00 10 */	ble lbl_803D8050
/* 803D8044  38 A5 FF FF */	addi r5, r5, -1
lbl_803D8048:
/* 803D8048  38 84 00 01 */	addi r4, r4, 1
/* 803D804C  42 00 FF E0 */	bdnz lbl_803D802C
lbl_803D8050:
/* 803D8050  38 04 00 01 */	addi r0, r4, 1
/* 803D8054  90 19 00 00 */	stw r0, 0(r25)
/* 803D8058  80 18 00 00 */	lwz r0, 0(r24)
/* 803D805C  2C 00 00 00 */	cmpwi r0, 0
/* 803D8060  40 81 00 20 */	ble lbl_803D8080
/* 803D8064  2C 00 00 07 */	cmpwi r0, 7
/* 803D8068  40 80 00 18 */	bge lbl_803D8080
/* 803D806C  80 19 00 00 */	lwz r0, 0(r25)
/* 803D8070  2C 00 00 00 */	cmpwi r0, 0
/* 803D8074  40 81 00 0C */	ble lbl_803D8080
/* 803D8078  2C 00 00 08 */	cmpwi r0, 8
/* 803D807C  41 80 00 14 */	blt lbl_803D8090
lbl_803D8080:
/* 803D8080  38 60 00 04 */	li r3, 4
/* 803D8084  38 00 00 03 */	li r0, 3
/* 803D8088  90 78 00 00 */	stw r3, 0(r24)
/* 803D808C  90 19 00 00 */	stw r0, 0(r25)
lbl_803D8090:
/* 803D8090  39 61 00 50 */	addi r11, r1, 0x50
/* 803D8094  4B CC 2E 79 */	bl func_8009AF0C
/* 803D8098  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803D809C  7C 08 03 A6 */	mtlr r0
/* 803D80A0  38 21 00 50 */	addi r1, r1, 0x50
/* 803D80A4  4E 80 00 20 */	blr 

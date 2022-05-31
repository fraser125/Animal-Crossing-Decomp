lbl_8061FBF8:
/* 8061FBF8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8061FBFC  7C 08 02 A6 */	mflr r0
/* 8061FC00  90 01 00 84 */	stw r0, 0x84(r1)
/* 8061FC04  39 61 00 80 */	addi r11, r1, 0x80
/* 8061FC08  4B A7 B2 B5 */	bl func_8009AEBC
/* 8061FC0C  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 8061FC10  7C 78 1B 78 */	mr r24, r3
/* 8061FC14  38 6A 85 38 */	addi r3, r10, common_data@l /* 0x81138538@l */
/* 8061FC18  7C 99 23 78 */	mr r25, r4
/* 8061FC1C  3F E3 00 02 */	addis r31, r3, 2
/* 8061FC20  7C BA 2B 78 */	mr r26, r5
/* 8061FC24  80 1F 60 9C */	lwz r0, 0x609c(r31)
/* 8061FC28  7C DB 33 78 */	mr r27, r6
/* 8061FC2C  7C FC 3B 78 */	mr r28, r7
/* 8061FC30  7D 1D 43 78 */	mr r29, r8
/* 8061FC34  28 00 00 00 */	cmplwi r0, 0
/* 8061FC38  7D 3E 4B 78 */	mr r30, r9
/* 8061FC3C  41 82 02 2C */	beq lbl_8061FE68
/* 8061FC40  7F C0 07 35 */	extsh. r0, r30
/* 8061FC44  40 82 00 60 */	bne lbl_8061FCA4
/* 8061FC48  3A E0 00 03 */	li r23, 3
lbl_8061FC4C:
/* 8061FC4C  80 98 00 00 */	lwz r4, 0(r24)
/* 8061FC50  7F 25 CB 78 */	mr r5, r25
/* 8061FC54  80 78 00 04 */	lwz r3, 4(r24)
/* 8061FC58  7F 46 D3 78 */	mr r6, r26
/* 8061FC5C  80 18 00 08 */	lwz r0, 8(r24)
/* 8061FC60  7F 67 DB 78 */	mr r7, r27
/* 8061FC64  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8061FC68  7F 88 E3 78 */	mr r8, r28
/* 8061FC6C  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061FC70  7F A9 EB 78 */	mr r9, r29
/* 8061FC74  90 61 00 50 */	stw r3, 0x50(r1)
/* 8061FC78  7F CA F3 78 */	mr r10, r30
/* 8061FC7C  38 81 00 4C */	addi r4, r1, 0x4c
/* 8061FC80  38 60 00 3D */	li r3, 0x3d
/* 8061FC84  90 01 00 54 */	stw r0, 0x54(r1)
/* 8061FC88  81 8B 00 00 */	lwz r12, 0(r11)
/* 8061FC8C  7D 89 03 A6 */	mtctr r12
/* 8061FC90  4E 80 04 21 */	bctrl 
/* 8061FC94  2C 17 00 00 */	cmpwi r23, 0
/* 8061FC98  3A F7 FF FF */	addi r23, r23, -1
/* 8061FC9C  40 82 FF B0 */	bne lbl_8061FC4C
/* 8061FCA0  48 00 01 C8 */	b lbl_8061FE68
lbl_8061FCA4:
/* 8061FCA4  7F C0 07 34 */	extsh r0, r30
/* 8061FCA8  2C 00 00 01 */	cmpwi r0, 1
/* 8061FCAC  40 82 00 E0 */	bne lbl_8061FD8C
/* 8061FCB0  7F A0 07 34 */	extsh r0, r29
/* 8061FCB4  2C 00 00 09 */	cmpwi r0, 9
/* 8061FCB8  41 82 00 08 */	beq lbl_8061FCC0
/* 8061FCBC  48 00 01 AC */	b lbl_8061FE68
lbl_8061FCC0:
/* 8061FCC0  3A E0 00 04 */	li r23, 4
lbl_8061FCC4:
/* 8061FCC4  80 98 00 00 */	lwz r4, 0(r24)
/* 8061FCC8  7F 25 CB 78 */	mr r5, r25
/* 8061FCCC  80 78 00 04 */	lwz r3, 4(r24)
/* 8061FCD0  7F 46 D3 78 */	mr r6, r26
/* 8061FCD4  80 18 00 08 */	lwz r0, 8(r24)
/* 8061FCD8  7F 67 DB 78 */	mr r7, r27
/* 8061FCDC  90 81 00 40 */	stw r4, 0x40(r1)
/* 8061FCE0  7F 88 E3 78 */	mr r8, r28
/* 8061FCE4  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061FCE8  7F A9 EB 78 */	mr r9, r29
/* 8061FCEC  90 61 00 44 */	stw r3, 0x44(r1)
/* 8061FCF0  38 81 00 40 */	addi r4, r1, 0x40
/* 8061FCF4  38 60 00 33 */	li r3, 0x33
/* 8061FCF8  39 40 00 01 */	li r10, 1
/* 8061FCFC  90 01 00 48 */	stw r0, 0x48(r1)
/* 8061FD00  81 8B 00 00 */	lwz r12, 0(r11)
/* 8061FD04  7D 89 03 A6 */	mtctr r12
/* 8061FD08  4E 80 04 21 */	bctrl 
/* 8061FD0C  2C 17 00 00 */	cmpwi r23, 0
/* 8061FD10  3A F7 FF FF */	addi r23, r23, -1
/* 8061FD14  40 82 FF B0 */	bne lbl_8061FCC4
/* 8061FD18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061FD1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061FD20  3C 63 00 02 */	addis r3, r3, 2
/* 8061FD24  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 8061FD28  28 00 00 03 */	cmplwi r0, 3
/* 8061FD2C  40 82 01 3C */	bne lbl_8061FE68
/* 8061FD30  3A E0 00 04 */	li r23, 4
lbl_8061FD34:
/* 8061FD34  80 98 00 00 */	lwz r4, 0(r24)
/* 8061FD38  7F 25 CB 78 */	mr r5, r25
/* 8061FD3C  80 78 00 04 */	lwz r3, 4(r24)
/* 8061FD40  7F 46 D3 78 */	mr r6, r26
/* 8061FD44  80 18 00 08 */	lwz r0, 8(r24)
/* 8061FD48  7F 67 DB 78 */	mr r7, r27
/* 8061FD4C  90 81 00 34 */	stw r4, 0x34(r1)
/* 8061FD50  7F 88 E3 78 */	mr r8, r28
/* 8061FD54  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061FD58  7F A9 EB 78 */	mr r9, r29
/* 8061FD5C  90 61 00 38 */	stw r3, 0x38(r1)
/* 8061FD60  38 81 00 34 */	addi r4, r1, 0x34
/* 8061FD64  38 60 00 34 */	li r3, 0x34
/* 8061FD68  39 40 00 00 */	li r10, 0
/* 8061FD6C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8061FD70  81 8B 00 00 */	lwz r12, 0(r11)
/* 8061FD74  7D 89 03 A6 */	mtctr r12
/* 8061FD78  4E 80 04 21 */	bctrl 
/* 8061FD7C  2C 17 00 00 */	cmpwi r23, 0
/* 8061FD80  3A F7 FF FF */	addi r23, r23, -1
/* 8061FD84  40 82 FF B0 */	bne lbl_8061FD34
/* 8061FD88  48 00 00 E0 */	b lbl_8061FE68
lbl_8061FD8C:
/* 8061FD8C  2C 00 00 02 */	cmpwi r0, 2
/* 8061FD90  40 82 00 70 */	bne lbl_8061FE00
/* 8061FD94  38 1A 10 00 */	addi r0, r26, 0x1000
/* 8061FD98  3A E0 00 00 */	li r23, 0
/* 8061FD9C  7C 1A 07 34 */	extsh r26, r0
/* 8061FDA0  48 00 00 50 */	b lbl_8061FDF0
lbl_8061FDA4:
/* 8061FDA4  80 98 00 00 */	lwz r4, 0(r24)
/* 8061FDA8  7F 25 CB 78 */	mr r5, r25
/* 8061FDAC  80 78 00 04 */	lwz r3, 4(r24)
/* 8061FDB0  7F 46 D3 78 */	mr r6, r26
/* 8061FDB4  80 18 00 08 */	lwz r0, 8(r24)
/* 8061FDB8  7F 67 DB 78 */	mr r7, r27
/* 8061FDBC  90 81 00 28 */	stw r4, 0x28(r1)
/* 8061FDC0  7F 88 E3 78 */	mr r8, r28
/* 8061FDC4  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061FDC8  7F A9 EB 78 */	mr r9, r29
/* 8061FDCC  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8061FDD0  7E EA BB 78 */	mr r10, r23
/* 8061FDD4  38 81 00 28 */	addi r4, r1, 0x28
/* 8061FDD8  38 60 00 4B */	li r3, 0x4b
/* 8061FDDC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8061FDE0  81 8B 00 00 */	lwz r12, 0(r11)
/* 8061FDE4  7D 89 03 A6 */	mtctr r12
/* 8061FDE8  4E 80 04 21 */	bctrl 
/* 8061FDEC  3A F7 00 01 */	addi r23, r23, 1
lbl_8061FDF0:
/* 8061FDF0  7E E0 07 34 */	extsh r0, r23
/* 8061FDF4  2C 00 00 02 */	cmpwi r0, 2
/* 8061FDF8  41 80 FF AC */	blt lbl_8061FDA4
/* 8061FDFC  48 00 00 6C */	b lbl_8061FE68
lbl_8061FE00:
/* 8061FE00  2C 00 00 03 */	cmpwi r0, 3
/* 8061FE04  40 82 00 64 */	bne lbl_8061FE68
/* 8061FE08  3A E0 00 00 */	li r23, 0
/* 8061FE0C  48 00 00 50 */	b lbl_8061FE5C
lbl_8061FE10:
/* 8061FE10  80 98 00 00 */	lwz r4, 0(r24)
/* 8061FE14  7F 25 CB 78 */	mr r5, r25
/* 8061FE18  80 78 00 04 */	lwz r3, 4(r24)
/* 8061FE1C  7F 46 D3 78 */	mr r6, r26
/* 8061FE20  80 18 00 08 */	lwz r0, 8(r24)
/* 8061FE24  7F 67 DB 78 */	mr r7, r27
/* 8061FE28  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8061FE2C  7F 88 E3 78 */	mr r8, r28
/* 8061FE30  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061FE34  7E E9 BB 78 */	mr r9, r23
/* 8061FE38  90 61 00 20 */	stw r3, 0x20(r1)
/* 8061FE3C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8061FE40  38 60 00 6F */	li r3, 0x6f
/* 8061FE44  39 40 00 00 */	li r10, 0
/* 8061FE48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061FE4C  81 8B 00 00 */	lwz r12, 0(r11)
/* 8061FE50  7D 89 03 A6 */	mtctr r12
/* 8061FE54  4E 80 04 21 */	bctrl 
/* 8061FE58  3A F7 00 01 */	addi r23, r23, 1
lbl_8061FE5C:
/* 8061FE5C  7E E0 07 34 */	extsh r0, r23
/* 8061FE60  2C 00 00 02 */	cmpwi r0, 2
/* 8061FE64  41 80 FF AC */	blt lbl_8061FE10
lbl_8061FE68:
/* 8061FE68  80 78 00 00 */	lwz r3, 0(r24)
/* 8061FE6C  7F 66 DB 78 */	mr r6, r27
/* 8061FE70  80 B8 00 04 */	lwz r5, 4(r24)
/* 8061FE74  7F 88 E3 78 */	mr r8, r28
/* 8061FE78  80 18 00 08 */	lwz r0, 8(r24)
/* 8061FE7C  7F 29 CB 78 */	mr r9, r25
/* 8061FE80  90 61 00 10 */	stw r3, 0x10(r1)
/* 8061FE84  7F AA EB 78 */	mr r10, r29
/* 8061FE88  38 81 00 10 */	addi r4, r1, 0x10
/* 8061FE8C  38 60 00 3E */	li r3, 0x3e
/* 8061FE90  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8061FE94  38 A0 00 00 */	li r5, 0
/* 8061FE98  38 E0 00 00 */	li r7, 0
/* 8061FE9C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8061FEA0  93 C1 00 08 */	stw r30, 8(r1)
/* 8061FEA4  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8061FEA8  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8061FEAC  7D 89 03 A6 */	mtctr r12
/* 8061FEB0  4E 80 04 21 */	bctrl 
/* 8061FEB4  39 61 00 80 */	addi r11, r1, 0x80
/* 8061FEB8  4B A7 B0 51 */	bl func_8009AF08
/* 8061FEBC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8061FEC0  7C 08 03 A6 */	mtlr r0
/* 8061FEC4  38 21 00 80 */	addi r1, r1, 0x80
/* 8061FEC8  4E 80 00 20 */	blr 

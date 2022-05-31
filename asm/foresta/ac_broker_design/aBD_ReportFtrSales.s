lbl_80415D00:
/* 80415D00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80415D04  7C 08 02 A6 */	mflr r0
/* 80415D08  90 01 00 34 */	stw r0, 0x34(r1)
/* 80415D0C  39 61 00 30 */	addi r11, r1, 0x30
/* 80415D10  4B C8 51 BD */	bl func_8009AECC
/* 80415D14  7C 7B 1B 78 */	mr r27, r3
/* 80415D18  7C 9C 23 78 */	mr r28, r4
/* 80415D1C  4B FF FF 4D */	bl aBD_UnitNo2FtrNo
/* 80415D20  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80415D24  7C 7E 1B 78 */	mr r30, r3
/* 80415D28  2C 00 00 01 */	cmpwi r0, 1
/* 80415D2C  41 82 00 0C */	beq lbl_80415D38
/* 80415D30  2C 00 00 03 */	cmpwi r0, 3
/* 80415D34  40 82 00 CC */	bne lbl_80415E00
lbl_80415D38:
/* 80415D38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80415D3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80415D40  3F A3 00 02 */	addis r29, r3, 2
/* 80415D44  80 1D 60 8C */	lwz r0, 0x608c(r29)
/* 80415D48  28 00 00 00 */	cmplwi r0, 0
/* 80415D4C  41 82 00 B4 */	beq lbl_80415E00
/* 80415D50  38 60 00 00 */	li r3, 0
/* 80415D54  38 80 00 00 */	li r4, 0
/* 80415D58  4B F9 13 FD */	bl mFI_BkNumtoUtFGTop
/* 80415D5C  80 9D 60 8C */	lwz r4, 0x608c(r29)
/* 80415D60  7C 7F 1B 78 */	mr r31, r3
/* 80415D64  57 63 07 3E */	clrlwi r3, r27, 0x1c
/* 80415D68  57 80 26 36 */	rlwinm r0, r28, 4, 0x18, 0x1b
/* 80415D6C  81 84 00 1C */	lwz r12, 0x1c(r4)
/* 80415D70  7F 86 E3 78 */	mr r6, r28
/* 80415D74  7F 83 02 14 */	add r28, r3, r0
/* 80415D78  7F 65 DB 78 */	mr r5, r27
/* 80415D7C  38 61 00 08 */	addi r3, r1, 8
/* 80415D80  38 81 00 0C */	addi r4, r1, 0xc
/* 80415D84  38 E0 00 00 */	li r7, 0
/* 80415D88  7D 89 03 A6 */	mtctr r12
/* 80415D8C  4E 80 04 21 */	bctrl 
/* 80415D90  2C 03 00 00 */	cmpwi r3, 0
/* 80415D94  41 82 00 6C */	beq lbl_80415E00
/* 80415D98  80 9D 60 8C */	lwz r4, 0x608c(r29)
/* 80415D9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80415DA0  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 80415DA4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80415DA8  81 84 00 20 */	lwz r12, 0x20(r4)
/* 80415DAC  3F A5 00 02 */	addis r29, r5, 2
/* 80415DB0  7D 89 03 A6 */	mtctr r12
/* 80415DB4  3B BD 04 DC */	addi r29, r29, 0x4dc
/* 80415DB8  4E 80 04 21 */	bctrl 
/* 80415DBC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FE10@ha */
/* 80415DC0  57 83 08 3C */	slwi r3, r28, 1
/* 80415DC4  38 84 FE 10 */	addi r4, r4, 0xFE10 /* 0x0000FE10@l */
/* 80415DC8  38 00 00 03 */	li r0, 3
/* 80415DCC  7C 9F 1B 2E */	sthx r4, r31, r3
/* 80415DD0  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 80415DD4  38 80 00 00 */	li r4, 0
/* 80415DD8  7C 09 03 A6 */	mtctr r0
lbl_80415DDC:
/* 80415DDC  7C 1D 22 2E */	lhzx r0, r29, r4
/* 80415DE0  7C 03 00 40 */	cmplw r3, r0
/* 80415DE4  40 82 00 14 */	bne lbl_80415DF8
/* 80415DE8  38 00 00 00 */	li r0, 0
/* 80415DEC  38 60 00 01 */	li r3, 1
/* 80415DF0  7C 1D 23 2E */	sthx r0, r29, r4
/* 80415DF4  48 00 00 10 */	b lbl_80415E04
lbl_80415DF8:
/* 80415DF8  38 84 00 02 */	addi r4, r4, 2
/* 80415DFC  42 00 FF E0 */	bdnz lbl_80415DDC
lbl_80415E00:
/* 80415E00  38 60 00 00 */	li r3, 0
lbl_80415E04:
/* 80415E04  39 61 00 30 */	addi r11, r1, 0x30
/* 80415E08  4B C8 51 11 */	bl func_8009AF18
/* 80415E0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80415E10  7C 08 03 A6 */	mtlr r0
/* 80415E14  38 21 00 30 */	addi r1, r1, 0x30
/* 80415E18  4E 80 00 20 */	blr 

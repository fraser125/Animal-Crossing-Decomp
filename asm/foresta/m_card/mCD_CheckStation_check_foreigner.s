lbl_80400CD0:
/* 80400CD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80400CD4  7C 08 02 A6 */	mflr r0
/* 80400CD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80400CDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80400CE0  4B C9 A1 ED */	bl func_8009AECC
/* 80400CE4  7C 7B 1B 78 */	mr r27, r3
/* 80400CE8  7C 9F 23 78 */	mr r31, r4
/* 80400CEC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80400CF0  83 9B 00 00 */	lwz r28, 0(r27)
/* 80400CF4  28 03 00 00 */	cmplwi r3, 0
/* 80400CF8  41 82 00 DC */	beq lbl_80400DD4
/* 80400CFC  2C 1C FF FF */	cmpwi r28, -1
/* 80400D00  41 82 00 D4 */	beq lbl_80400DD4
/* 80400D04  1C BC 00 94 */	mulli r5, r28, 0x94
/* 80400D08  80 9B 00 08 */	lwz r4, 8(r27)
/* 80400D0C  3B C5 00 54 */	addi r30, r5, 0x54
/* 80400D10  7F DB F2 14 */	add r30, r27, r30
/* 80400D14  4B C5 C3 55 */	bl bzero
/* 80400D18  38 00 00 07 */	li r0, 7
/* 80400D1C  3C 60 81 1A */	lis r3, l_mcd_card_private@ha /* 0x81198BF0@ha */
/* 80400D20  90 1B 00 04 */	stw r0, 4(r27)
/* 80400D24  38 63 8B F0 */	addi r3, r3, l_mcd_card_private@l /* 0x81198BF0@l */
/* 80400D28  3B A3 00 14 */	addi r29, r3, 0x14
/* 80400D2C  80 7B 00 04 */	lwz r3, 4(r27)
/* 80400D30  4B FF 97 29 */	bl mCD_get_size
/* 80400D34  90 7B 00 08 */	stw r3, 8(r27)
/* 80400D38  80 7B 00 04 */	lwz r3, 4(r27)
/* 80400D3C  4B FF 96 D5 */	bl mCD_get_offset
/* 80400D40  7C 60 1B 78 */	mr r0, r3
/* 80400D44  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 80400D48  80 BB 00 08 */	lwz r5, 8(r27)
/* 80400D4C  7C 06 03 78 */	mr r6, r0
/* 80400D50  7F A4 EB 78 */	mr r4, r29
/* 80400D54  7F 87 E3 78 */	mr r7, r28
/* 80400D58  39 1E 00 74 */	addi r8, r30, 0x74
/* 80400D5C  4B FF 7D BD */	bl mCD_read_fg
/* 80400D60  2C 03 00 01 */	cmpwi r3, 1
/* 80400D64  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 80400D68  40 82 00 44 */	bne lbl_80400DAC
/* 80400D6C  3C 60 80 66 */	lis r3, l_mcd_copy_protect@ha /* 0x8065E484@ha */
/* 80400D70  A0 04 5E 28 */	lhz r0, 0x5e28(r4)
/* 80400D74  38 63 E4 84 */	addi r3, r3, l_mcd_copy_protect@l /* 0x8065E484@l */
/* 80400D78  A0 63 00 00 */	lhz r3, 0(r3)
/* 80400D7C  7C 03 00 40 */	cmplw r3, r0
/* 80400D80  40 82 00 2C */	bne lbl_80400DAC
/* 80400D84  7F A3 EB 78 */	mr r3, r29
/* 80400D88  38 9B 11 BC */	addi r4, r27, 0x11bc
/* 80400D8C  38 A0 00 20 */	li r5, 0x20
/* 80400D90  4B C5 C2 8D */	bl func_8005D01C
/* 80400D94  38 60 00 00 */	li r3, 0
/* 80400D98  38 00 00 05 */	li r0, 5
/* 80400D9C  90 7F 00 04 */	stw r3, 4(r31)
/* 80400DA0  38 60 00 01 */	li r3, 1
/* 80400DA4  90 1F 00 00 */	stw r0, 0(r31)
/* 80400DA8  48 00 00 38 */	b lbl_80400DE0
lbl_80400DAC:
/* 80400DAC  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 80400DB0  2C 00 FF FE */	cmpwi r0, -2
/* 80400DB4  40 82 00 10 */	bne lbl_80400DC4
/* 80400DB8  38 00 00 15 */	li r0, 0x15
/* 80400DBC  90 1F 00 04 */	stw r0, 4(r31)
/* 80400DC0  48 00 00 0C */	b lbl_80400DCC
lbl_80400DC4:
/* 80400DC4  38 00 00 13 */	li r0, 0x13
/* 80400DC8  90 1F 00 04 */	stw r0, 4(r31)
lbl_80400DCC:
/* 80400DCC  38 60 FF FF */	li r3, -1
/* 80400DD0  48 00 00 10 */	b lbl_80400DE0
lbl_80400DD4:
/* 80400DD4  38 00 00 17 */	li r0, 0x17
/* 80400DD8  38 60 FF FF */	li r3, -1
/* 80400DDC  90 1F 00 04 */	stw r0, 4(r31)
lbl_80400DE0:
/* 80400DE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80400DE4  4B C9 A1 35 */	bl func_8009AF18
/* 80400DE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80400DEC  7C 08 03 A6 */	mtlr r0
/* 80400DF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80400DF4  4E 80 00 20 */	blr 

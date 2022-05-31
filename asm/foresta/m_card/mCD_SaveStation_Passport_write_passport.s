lbl_80402C00:
/* 80402C00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80402C04  7C 08 02 A6 */	mflr r0
/* 80402C08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80402C0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80402C10  4B C9 82 BD */	bl func_8009AECC
/* 80402C14  7C 7D 1B 78 */	mr r29, r3
/* 80402C18  3C 60 80 66 */	lis r3, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 80402C1C  83 FD 00 00 */	lwz r31, 0(r29)
/* 80402C20  38 03 E7 08 */	addi r0, r3, l_mcd_file_table@l /* 0x8065E708@l */
/* 80402C24  80 7D 00 04 */	lwz r3, 4(r29)
/* 80402C28  7C 9E 23 78 */	mr r30, r4
/* 80402C2C  1C BF 00 94 */	mulli r5, r31, 0x94
/* 80402C30  1C 83 00 0C */	mulli r4, r3, 0xc
/* 80402C34  3B 85 00 54 */	addi r28, r5, 0x54
/* 80402C38  7F 9D E2 14 */	add r28, r29, r28
/* 80402C3C  7F 60 22 14 */	add r27, r0, r4
/* 80402C40  4B FF 77 D1 */	bl mCD_get_offset
/* 80402C44  7C 60 1B 78 */	mr r0, r3
/* 80402C48  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80402C4C  80 BD 00 08 */	lwz r5, 8(r29)
/* 80402C50  7C 07 03 78 */	mr r7, r0
/* 80402C54  80 DB 00 04 */	lwz r6, 4(r27)
/* 80402C58  7F E8 FB 78 */	mr r8, r31
/* 80402C5C  38 9D 11 BC */	addi r4, r29, 0x11bc
/* 80402C60  39 3C 00 74 */	addi r9, r28, 0x74
/* 80402C64  4B FF 5B 85 */	bl mCD_write_comp_bg
/* 80402C68  7C 7F 1B 78 */	mr r31, r3
/* 80402C6C  2C 1F 00 01 */	cmpwi r31, 1
/* 80402C70  40 82 00 14 */	bne lbl_80402C84
/* 80402C74  80 7E 00 00 */	lwz r3, 0(r30)
/* 80402C78  38 03 00 01 */	addi r0, r3, 1
/* 80402C7C  90 1E 00 00 */	stw r0, 0(r30)
/* 80402C80  48 00 01 28 */	b lbl_80402DA8
lbl_80402C84:
/* 80402C84  2C 1F 00 00 */	cmpwi r31, 0
/* 80402C88  41 82 01 20 */	beq lbl_80402DA8
/* 80402C8C  83 9C 00 74 */	lwz r28, 0x74(r28)
/* 80402C90  38 00 00 02 */	li r0, 2
/* 80402C94  90 1D 00 04 */	stw r0, 4(r29)
/* 80402C98  80 7D 00 04 */	lwz r3, 4(r29)
/* 80402C9C  4B FF 77 BD */	bl mCD_get_size
/* 80402CA0  90 7D 00 08 */	stw r3, 8(r29)
/* 80402CA4  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80402CA8  80 9D 00 08 */	lwz r4, 8(r29)
/* 80402CAC  4B C5 A3 BD */	bl bzero
/* 80402CB0  80 1D 00 00 */	lwz r0, 0(r29)
/* 80402CB4  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80402CB8  80 1D 00 00 */	lwz r0, 0(r29)
/* 80402CBC  7C 00 00 F8 */	nor r0, r0, r0
/* 80402CC0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80402CC4  90 1D 00 00 */	stw r0, 0(r29)
/* 80402CC8  80 BD 00 00 */	lwz r5, 0(r29)
/* 80402CCC  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80402CD0  1C C5 00 94 */	mulli r6, r5, 0x94
/* 80402CD4  80 9D 00 04 */	lwz r4, 4(r29)
/* 80402CD8  38 C6 00 54 */	addi r6, r6, 0x54
/* 80402CDC  7C DD 32 14 */	add r6, r29, r6
/* 80402CE0  38 C6 00 74 */	addi r6, r6, 0x74
/* 80402CE4  4B FF 7C DD */	bl mCD_load_file
/* 80402CE8  2C 03 00 01 */	cmpwi r3, 1
/* 80402CEC  40 82 00 54 */	bne lbl_80402D40
/* 80402CF0  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80402CF4  80 9D 00 08 */	lwz r4, 8(r29)
/* 80402CF8  4B FA 98 05 */	bl mFRm_ReturnCheckSum
/* 80402CFC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80402D00  83 7D 00 0C */	lwz r27, 0xc(r29)
/* 80402D04  40 82 00 3C */	bne lbl_80402D40
/* 80402D08  3C 7B 00 01 */	addis r3, r27, 1
/* 80402D0C  A0 63 91 2A */	lhz r3, -0x6ed6(r3)
/* 80402D10  4B FB 0A E5 */	bl mLd_CheckId
/* 80402D14  2C 03 00 01 */	cmpwi r3, 1
/* 80402D18  40 82 00 28 */	bne lbl_80402D40
/* 80402D1C  3C 7B 00 01 */	addis r3, r27, 1
/* 80402D20  A0 83 91 2A */	lhz r4, -0x6ed6(r3)
/* 80402D24  38 63 91 20 */	addi r3, r3, -28384
/* 80402D28  4B FB 0E 11 */	bl mLd_CheckThisLand
/* 80402D2C  2C 03 00 01 */	cmpwi r3, 1
/* 80402D30  40 82 00 10 */	bne lbl_80402D40
/* 80402D34  38 00 00 01 */	li r0, 1
/* 80402D38  3B E0 00 01 */	li r31, 1
/* 80402D3C  90 1D 00 04 */	stw r0, 4(r29)
lbl_80402D40:
/* 80402D40  2C 1C FF FA */	cmpwi r28, -6
/* 80402D44  41 82 00 28 */	beq lbl_80402D6C
/* 80402D48  40 80 00 10 */	bge lbl_80402D58
/* 80402D4C  2C 1C FF F3 */	cmpwi r28, -13
/* 80402D50  41 82 00 1C */	beq lbl_80402D6C
/* 80402D54  48 00 00 30 */	b lbl_80402D84
lbl_80402D58:
/* 80402D58  2C 1C FF FF */	cmpwi r28, -1
/* 80402D5C  40 80 00 28 */	bge lbl_80402D84
/* 80402D60  2C 1C FF FD */	cmpwi r28, -3
/* 80402D64  40 80 00 14 */	bge lbl_80402D78
/* 80402D68  48 00 00 1C */	b lbl_80402D84
lbl_80402D6C:
/* 80402D6C  38 00 00 04 */	li r0, 4
/* 80402D70  90 1E 00 04 */	stw r0, 4(r30)
/* 80402D74  48 00 00 18 */	b lbl_80402D8C
lbl_80402D78:
/* 80402D78  38 00 00 16 */	li r0, 0x16
/* 80402D7C  90 1E 00 04 */	stw r0, 4(r30)
/* 80402D80  48 00 00 0C */	b lbl_80402D8C
lbl_80402D84:
/* 80402D84  38 00 00 02 */	li r0, 2
/* 80402D88  90 1E 00 04 */	stw r0, 4(r30)
lbl_80402D8C:
/* 80402D8C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80402D90  2C 1F 00 01 */	cmpwi r31, 1
/* 80402D94  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80402D98  40 82 00 10 */	bne lbl_80402DA8
/* 80402D9C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80402DA0  38 03 00 01 */	addi r0, r3, 1
/* 80402DA4  90 1E 00 00 */	stw r0, 0(r30)
lbl_80402DA8:
/* 80402DA8  7F E3 FB 78 */	mr r3, r31
/* 80402DAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80402DB0  4B C9 81 69 */	bl func_8009AF18
/* 80402DB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80402DB8  7C 08 03 A6 */	mtlr r0
/* 80402DBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80402DC0  4E 80 00 20 */	blr 

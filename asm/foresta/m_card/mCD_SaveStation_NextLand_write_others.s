lbl_80401EAC:
/* 80401EAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80401EB0  7C 08 02 A6 */	mflr r0
/* 80401EB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80401EB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80401EBC  4B C9 90 15 */	bl func_8009AED0
/* 80401EC0  7C 7E 1B 78 */	mr r30, r3
/* 80401EC4  3C 60 80 66 */	lis r3, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 80401EC8  80 1E 01 9C */	lwz r0, 0x19c(r30)
/* 80401ECC  38 63 E7 08 */	addi r3, r3, l_mcd_file_table@l /* 0x8065E708@l */
/* 80401ED0  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 80401ED4  7C 9F 23 78 */	mr r31, r4
/* 80401ED8  2C 00 00 01 */	cmpwi r0, 1
/* 80401EDC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80401EE0  81 1E 00 00 */	lwz r8, 0(r30)
/* 80401EE4  7C A3 2B 78 */	mr r3, r5
/* 80401EE8  40 82 00 10 */	bne lbl_80401EF8
/* 80401EEC  3C 80 80 66 */	lis r4, l_mCD_land_file_name_dummy@ha /* 0x8065E6A8@ha */
/* 80401EF0  38 04 E6 A8 */	addi r0, r4, l_mCD_land_file_name_dummy@l /* 0x8065E6A8@l */
/* 80401EF4  7C 04 03 78 */	mr r4, r0
lbl_80401EF8:
/* 80401EF8  28 05 00 00 */	cmplwi r5, 0
/* 80401EFC  41 82 00 6C */	beq lbl_80401F68
/* 80401F00  2C 08 FF FF */	cmpwi r8, -1
/* 80401F04  41 82 00 64 */	beq lbl_80401F68
/* 80401F08  1C E8 00 94 */	mulli r7, r8, 0x94
/* 80401F0C  3C C0 00 07 */	lis r6, 0x0007 /* 0x00072000@ha */
/* 80401F10  80 BE 00 08 */	lwz r5, 8(r30)
/* 80401F14  38 C6 20 00 */	addi r6, r6, 0x2000 /* 0x00072000@l */
/* 80401F18  3B A7 00 54 */	addi r29, r7, 0x54
/* 80401F1C  7F BE EA 14 */	add r29, r30, r29
/* 80401F20  38 E0 00 00 */	li r7, 0
/* 80401F24  39 3D 00 74 */	addi r9, r29, 0x74
/* 80401F28  4B FF 68 C1 */	bl mCD_write_comp_bg
/* 80401F2C  7C 60 1B 78 */	mr r0, r3
/* 80401F30  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 80401F34  7C 1C 03 78 */	mr r28, r0
/* 80401F38  4B FF 83 7D */	bl mCD_TransErrorCode
/* 80401F3C  2C 1C 00 01 */	cmpwi r28, 1
/* 80401F40  90 7D 00 78 */	stw r3, 0x78(r29)
/* 80401F44  40 82 00 14 */	bne lbl_80401F58
/* 80401F48  80 7F 00 00 */	lwz r3, 0(r31)
/* 80401F4C  38 03 00 01 */	addi r0, r3, 1
/* 80401F50  90 1F 00 00 */	stw r0, 0(r31)
/* 80401F54  48 00 00 18 */	b lbl_80401F6C
lbl_80401F58:
/* 80401F58  2C 1C 00 00 */	cmpwi r28, 0
/* 80401F5C  41 82 00 10 */	beq lbl_80401F6C
/* 80401F60  3B 80 FF FF */	li r28, -1
/* 80401F64  48 00 00 08 */	b lbl_80401F6C
lbl_80401F68:
/* 80401F68  3B 80 FF FF */	li r28, -1
lbl_80401F6C:
/* 80401F6C  2C 1C 00 01 */	cmpwi r28, 1
/* 80401F70  41 82 00 7C */	beq lbl_80401FEC
/* 80401F74  2C 1C 00 00 */	cmpwi r28, 0
/* 80401F78  41 82 00 74 */	beq lbl_80401FEC
/* 80401F7C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80401F80  2C 00 FF FF */	cmpwi r0, -1
/* 80401F84  41 82 00 60 */	beq lbl_80401FE4
/* 80401F88  1C 60 00 94 */	mulli r3, r0, 0x94
/* 80401F8C  38 03 00 C8 */	addi r0, r3, 0xc8
/* 80401F90  7C 1E 00 2E */	lwzx r0, r30, r0
/* 80401F94  2C 00 FF FA */	cmpwi r0, -6
/* 80401F98  41 82 00 28 */	beq lbl_80401FC0
/* 80401F9C  40 80 00 10 */	bge lbl_80401FAC
/* 80401FA0  2C 00 FF F3 */	cmpwi r0, -13
/* 80401FA4  41 82 00 1C */	beq lbl_80401FC0
/* 80401FA8  48 00 00 30 */	b lbl_80401FD8
lbl_80401FAC:
/* 80401FAC  2C 00 FF FF */	cmpwi r0, -1
/* 80401FB0  40 80 00 28 */	bge lbl_80401FD8
/* 80401FB4  2C 00 FF FD */	cmpwi r0, -3
/* 80401FB8  40 80 00 14 */	bge lbl_80401FCC
/* 80401FBC  48 00 00 1C */	b lbl_80401FD8
lbl_80401FC0:
/* 80401FC0  38 00 00 04 */	li r0, 4
/* 80401FC4  90 1F 00 04 */	stw r0, 4(r31)
/* 80401FC8  48 00 00 24 */	b lbl_80401FEC
lbl_80401FCC:
/* 80401FCC  38 00 00 16 */	li r0, 0x16
/* 80401FD0  90 1F 00 04 */	stw r0, 4(r31)
/* 80401FD4  48 00 00 18 */	b lbl_80401FEC
lbl_80401FD8:
/* 80401FD8  38 00 00 02 */	li r0, 2
/* 80401FDC  90 1F 00 04 */	stw r0, 4(r31)
/* 80401FE0  48 00 00 0C */	b lbl_80401FEC
lbl_80401FE4:
/* 80401FE4  38 00 00 02 */	li r0, 2
/* 80401FE8  90 1F 00 04 */	stw r0, 4(r31)
lbl_80401FEC:
/* 80401FEC  7F 83 E3 78 */	mr r3, r28
/* 80401FF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80401FF4  4B C9 8F 29 */	bl func_8009AF1C
/* 80401FF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80401FFC  7C 08 03 A6 */	mtlr r0
/* 80402000  38 21 00 20 */	addi r1, r1, 0x20
/* 80402004  4E 80 00 20 */	blr 

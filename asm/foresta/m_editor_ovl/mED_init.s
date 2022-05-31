lbl_805D8EB0:
/* 805D8EB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D8EB4  7C 08 02 A6 */	mflr r0
/* 805D8EB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D8EBC  39 61 00 20 */	addi r11, r1, 0x20
/* 805D8EC0  4B AC 20 15 */	bl func_8009AED4
/* 805D8EC4  7C 7D 1B 78 */	mr r29, r3
/* 805D8EC8  3C 60 80 6D */	lis r3, edit_line@ha /* 0x806CCB90@ha */
/* 805D8ECC  80 DD 00 2C */	lwz r6, 0x2c(r29)
/* 805D8ED0  38 A0 00 08 */	li r5, 8
/* 805D8ED4  38 00 00 00 */	li r0, 0
/* 805D8ED8  38 63 CB 90 */	addi r3, r3, edit_line@l /* 0x806CCB90@l */
/* 805D8EDC  83 E6 09 8C */	lwz r31, 0x98c(r6)
/* 805D8EE0  7C 9E 23 78 */	mr r30, r4
/* 805D8EE4  98 BF 00 00 */	stb r5, 0(r31)
/* 805D8EE8  98 1F 00 01 */	stb r0, 1(r31)
/* 805D8EEC  98 1F 00 05 */	stb r0, 5(r31)
/* 805D8EF0  98 1F 00 06 */	stb r0, 6(r31)
/* 805D8EF4  98 1F 00 07 */	stb r0, 7(r31)
/* 805D8EF8  98 1F 00 02 */	stb r0, 2(r31)
/* 805D8EFC  98 1F 00 03 */	stb r0, 3(r31)
/* 805D8F00  98 1F 00 04 */	stb r0, 4(r31)
/* 805D8F04  98 1F 00 11 */	stb r0, 0x11(r31)
/* 805D8F08  98 1F 00 13 */	stb r0, 0x13(r31)
/* 805D8F0C  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805D8F10  54 00 08 3C */	slwi r0, r0, 1
/* 805D8F14  7C 03 02 AE */	lhax r0, r3, r0
/* 805D8F18  B0 1F 00 1A */	sth r0, 0x1a(r31)
/* 805D8F1C  80 04 00 40 */	lwz r0, 0x40(r4)
/* 805D8F20  90 1F 00 28 */	stw r0, 0x28(r31)
/* 805D8F24  80 04 00 44 */	lwz r0, 0x44(r4)
/* 805D8F28  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 805D8F2C  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 805D8F30  2C 00 00 00 */	cmpwi r0, 0
/* 805D8F34  40 81 00 54 */	ble lbl_805D8F88
/* 805D8F38  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 805D8F3C  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805D8F40  2C 00 00 05 */	cmpwi r0, 5
/* 805D8F44  40 82 00 24 */	bne lbl_805D8F68
/* 805D8F48  A8 9F 00 18 */	lha r4, 0x18(r31)
/* 805D8F4C  38 A0 00 20 */	li r5, 0x20
/* 805D8F50  A8 1F 00 1A */	lha r0, 0x1a(r31)
/* 805D8F54  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805D8F58  7C 84 01 D6 */	mullw r4, r4, r0
/* 805D8F5C  4B DC 14 FD */	bl func_8039A458
/* 805D8F60  B0 7F 00 1E */	sth r3, 0x1e(r31)
/* 805D8F64  48 00 00 80 */	b lbl_805D8FE4
lbl_805D8F68:
/* 805D8F68  A8 9F 00 18 */	lha r4, 0x18(r31)
/* 805D8F6C  38 A0 00 20 */	li r5, 0x20
/* 805D8F70  A8 1F 00 1A */	lha r0, 0x1a(r31)
/* 805D8F74  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805D8F78  7C 84 01 D6 */	mullw r4, r4, r0
/* 805D8F7C  4B DE 36 A9 */	bl func_803BC624
/* 805D8F80  B0 7F 00 1E */	sth r3, 0x1e(r31)
/* 805D8F84  48 00 00 60 */	b lbl_805D8FE4
lbl_805D8F88:
/* 805D8F88  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805D8F8C  2C 00 00 00 */	cmpwi r0, 0
/* 805D8F90  40 82 00 20 */	bne lbl_805D8FB0
/* 805D8F94  38 00 00 20 */	li r0, 0x20
/* 805D8F98  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 805D8F9C  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805D8FA0  80 63 09 90 */	lwz r3, 0x990(r3)
/* 805D8FA4  88 03 00 06 */	lbz r0, 6(r3)
/* 805D8FA8  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 805D8FAC  48 00 00 38 */	b lbl_805D8FE4
lbl_805D8FB0:
/* 805D8FB0  2C 00 00 06 */	cmpwi r0, 6
/* 805D8FB4  40 82 00 1C */	bne lbl_805D8FD0
/* 805D8FB8  B0 BF 00 18 */	sth r5, 0x18(r31)
/* 805D8FBC  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805D8FC0  80 63 09 F0 */	lwz r3, 0x9f0(r3)
/* 805D8FC4  88 03 00 04 */	lbz r0, 4(r3)
/* 805D8FC8  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 805D8FCC  48 00 00 18 */	b lbl_805D8FE4
lbl_805D8FD0:
/* 805D8FD0  2C 00 00 07 */	cmpwi r0, 7
/* 805D8FD4  40 82 00 10 */	bne lbl_805D8FE4
/* 805D8FD8  38 00 00 0E */	li r0, 0xe
/* 805D8FDC  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 805D8FE0  B0 1F 00 1E */	sth r0, 0x1e(r31)
lbl_805D8FE4:
/* 805D8FE4  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805D8FE8  2C 00 00 05 */	cmpwi r0, 5
/* 805D8FEC  40 82 00 64 */	bne lbl_805D9050
/* 805D8FF0  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 805D8FF4  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805D8FF8  2C 00 00 00 */	cmpwi r0, 0
/* 805D8FFC  80 83 09 E8 */	lwz r4, 0x9e8(r3)
/* 805D9000  40 81 00 2C */	ble lbl_805D902C
/* 805D9004  A8 1F 00 1E */	lha r0, 0x1e(r31)
/* 805D9008  7F C3 F3 78 */	mr r3, r30
/* 805D900C  7F E4 FB 78 */	mr r4, r31
/* 805D9010  38 BF 00 22 */	addi r5, r31, 0x22
/* 805D9014  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 805D9018  38 DF 00 24 */	addi r6, r31, 0x24
/* 805D901C  38 FF 00 26 */	addi r7, r31, 0x26
/* 805D9020  A9 1F 00 16 */	lha r8, 0x16(r31)
/* 805D9024  4B FF FB 5D */	bl mED_get_col_line_width
/* 805D9028  48 00 00 3C */	b lbl_805D9064
lbl_805D902C:
/* 805D902C  A8 04 00 44 */	lha r0, 0x44(r4)
/* 805D9030  7F E3 FB 78 */	mr r3, r31
/* 805D9034  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 805D9038  A8 04 00 48 */	lha r0, 0x48(r4)
/* 805D903C  B0 1F 00 22 */	sth r0, 0x22(r31)
/* 805D9040  A8 04 00 46 */	lha r0, 0x46(r4)
/* 805D9044  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 805D9048  4B FF FD 31 */	bl mED_set_idxcol_inLineWidth
/* 805D904C  48 00 00 18 */	b lbl_805D9064
lbl_805D9050:
/* 805D9050  38 00 00 00 */	li r0, 0
/* 805D9054  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 805D9058  B0 1F 00 22 */	sth r0, 0x22(r31)
/* 805D905C  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 805D9060  B0 1F 00 26 */	sth r0, 0x26(r31)
lbl_805D9064:
/* 805D9064  38 00 FF FF */	li r0, -1
/* 805D9068  39 61 00 20 */	addi r11, r1, 0x20
/* 805D906C  B0 1F 00 20 */	sth r0, 0x20(r31)
/* 805D9070  4B AC 1E B1 */	bl func_8009AF20
/* 805D9074  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D9078  7C 08 03 A6 */	mtlr r0
/* 805D907C  38 21 00 20 */	addi r1, r1, 0x20
/* 805D9080  4E 80 00 20 */	blr 

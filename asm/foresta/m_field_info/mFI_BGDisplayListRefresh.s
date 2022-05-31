lbl_803A6D4C:
/* 803A6D4C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803A6D50  7C 08 02 A6 */	mflr r0
/* 803A6D54  90 01 00 54 */	stw r0, 0x54(r1)
/* 803A6D58  39 61 00 50 */	addi r11, r1, 0x50
/* 803A6D5C  4B CF 41 71 */	bl func_8009AECC
/* 803A6D60  38 00 00 00 */	li r0, 0
/* 803A6D64  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A6D68  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803A6D6C  98 01 00 09 */	stb r0, 9(r1)
/* 803A6D70  3C C4 00 03 */	addis r6, r4, 3
/* 803A6D74  7C 7B 1B 78 */	mr r27, r3
/* 803A6D78  98 01 00 08 */	stb r0, 8(r1)
/* 803A6D7C  38 61 00 10 */	addi r3, r1, 0x10
/* 803A6D80  38 81 00 0C */	addi r4, r1, 0xc
/* 803A6D84  38 A1 00 20 */	addi r5, r1, 0x20
/* 803A6D88  98 06 85 90 */	stb r0, -0x7a70(r6)
/* 803A6D8C  80 FB 00 00 */	lwz r7, 0(r27)
/* 803A6D90  80 DB 00 04 */	lwz r6, 4(r27)
/* 803A6D94  80 1B 00 08 */	lwz r0, 8(r27)
/* 803A6D98  90 E1 00 20 */	stw r7, 0x20(r1)
/* 803A6D9C  90 C1 00 24 */	stw r6, 0x24(r1)
/* 803A6DA0  90 01 00 28 */	stw r0, 0x28(r1)
/* 803A6DA4  4B FF E9 BD */	bl mFI_Wpos2BlockNum
/* 803A6DA8  2C 03 00 00 */	cmpwi r3, 0
/* 803A6DAC  41 82 00 44 */	beq lbl_803A6DF0
/* 803A6DB0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803A6DB4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803A6DB8  4B FF E4 01 */	bl mFI_GetBlockNum
/* 803A6DBC  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A6DC0  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A6DC4  80 84 00 00 */	lwz r4, 0(r4)
/* 803A6DC8  1C 03 06 14 */	mulli r0, r3, 0x614
/* 803A6DCC  80 64 00 74 */	lwz r3, 0x74(r4)
/* 803A6DD0  7C 03 02 2E */	lhzx r0, r3, r0
/* 803A6DD4  54 00 F4 BE */	rlwinm r0, r0, 0x1e, 0x12, 0x1f
/* 803A6DD8  28 00 01 24 */	cmplwi r0, 0x124
/* 803A6DDC  41 82 00 14 */	beq lbl_803A6DF0
/* 803A6DE0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803A6DE4  38 61 00 09 */	addi r3, r1, 9
/* 803A6DE8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803A6DEC  4B FF FD 11 */	bl mFI_BGDispMake
lbl_803A6DF0:
/* 803A6DF0  80 DB 00 00 */	lwz r6, 0(r27)
/* 803A6DF4  38 61 00 08 */	addi r3, r1, 8
/* 803A6DF8  80 BB 00 04 */	lwz r5, 4(r27)
/* 803A6DFC  38 81 00 14 */	addi r4, r1, 0x14
/* 803A6E00  80 1B 00 08 */	lwz r0, 8(r27)
/* 803A6E04  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803A6E08  90 A1 00 18 */	stw r5, 0x18(r1)
/* 803A6E0C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803A6E10  4B FF FE 29 */	bl mFI_WhereisInBlock
/* 803A6E14  88 01 00 08 */	lbz r0, 8(r1)
/* 803A6E18  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803A6E1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803A6E20  3B 63 FF FF */	addi r27, r3, -1
/* 803A6E24  41 82 00 2C */	beq lbl_803A6E50
/* 803A6E28  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803A6E2C  7F 63 DB 78 */	mr r3, r27
/* 803A6E30  4B FF E3 D9 */	bl mFI_BlockCheck
/* 803A6E34  2C 03 00 00 */	cmpwi r3, 0
/* 803A6E38  41 82 00 18 */	beq lbl_803A6E50
/* 803A6E3C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803A6E40  7F 64 DB 78 */	mr r4, r27
/* 803A6E44  38 61 00 09 */	addi r3, r1, 9
/* 803A6E48  4B FF FC B5 */	bl mFI_BGDispMake
/* 803A6E4C  48 00 00 3C */	b lbl_803A6E88
lbl_803A6E50:
/* 803A6E50  88 01 00 08 */	lbz r0, 8(r1)
/* 803A6E54  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803A6E58  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 803A6E5C  3B 83 00 01 */	addi r28, r3, 1
/* 803A6E60  41 82 00 28 */	beq lbl_803A6E88
/* 803A6E64  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803A6E68  7F 83 E3 78 */	mr r3, r28
/* 803A6E6C  4B FF E3 9D */	bl mFI_BlockCheck
/* 803A6E70  2C 03 00 00 */	cmpwi r3, 0
/* 803A6E74  41 82 00 14 */	beq lbl_803A6E88
/* 803A6E78  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803A6E7C  7F 84 E3 78 */	mr r4, r28
/* 803A6E80  38 61 00 09 */	addi r3, r1, 9
/* 803A6E84  4B FF FC 79 */	bl mFI_BGDispMake
lbl_803A6E88:
/* 803A6E88  88 01 00 08 */	lbz r0, 8(r1)
/* 803A6E8C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A6E90  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 803A6E94  3B 63 FF FF */	addi r27, r3, -1
/* 803A6E98  41 82 00 A0 */	beq lbl_803A6F38
/* 803A6E9C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803A6EA0  7F 64 DB 78 */	mr r4, r27
/* 803A6EA4  4B FF E3 65 */	bl mFI_BlockCheck
/* 803A6EA8  2C 03 00 00 */	cmpwi r3, 0
/* 803A6EAC  41 82 00 8C */	beq lbl_803A6F38
/* 803A6EB0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803A6EB4  7F 65 DB 78 */	mr r5, r27
/* 803A6EB8  38 61 00 09 */	addi r3, r1, 9
/* 803A6EBC  4B FF FC 41 */	bl mFI_BGDispMake
/* 803A6EC0  88 01 00 08 */	lbz r0, 8(r1)
/* 803A6EC4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803A6EC8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803A6ECC  3B 83 FF FF */	addi r28, r3, -1
/* 803A6ED0  41 82 00 2C */	beq lbl_803A6EFC
/* 803A6ED4  7F 83 E3 78 */	mr r3, r28
/* 803A6ED8  7F 64 DB 78 */	mr r4, r27
/* 803A6EDC  4B FF E3 2D */	bl mFI_BlockCheck
/* 803A6EE0  2C 03 00 00 */	cmpwi r3, 0
/* 803A6EE4  41 82 00 18 */	beq lbl_803A6EFC
/* 803A6EE8  7F 84 E3 78 */	mr r4, r28
/* 803A6EEC  7F 65 DB 78 */	mr r5, r27
/* 803A6EF0  38 61 00 09 */	addi r3, r1, 9
/* 803A6EF4  4B FF FC 09 */	bl mFI_BGDispMake
/* 803A6EF8  48 00 00 EC */	b lbl_803A6FE4
lbl_803A6EFC:
/* 803A6EFC  88 01 00 08 */	lbz r0, 8(r1)
/* 803A6F00  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803A6F04  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 803A6F08  3B 83 00 01 */	addi r28, r3, 1
/* 803A6F0C  41 82 00 D8 */	beq lbl_803A6FE4
/* 803A6F10  7F 83 E3 78 */	mr r3, r28
/* 803A6F14  7F 64 DB 78 */	mr r4, r27
/* 803A6F18  4B FF E2 F1 */	bl mFI_BlockCheck
/* 803A6F1C  2C 03 00 00 */	cmpwi r3, 0
/* 803A6F20  41 82 00 C4 */	beq lbl_803A6FE4
/* 803A6F24  7F 84 E3 78 */	mr r4, r28
/* 803A6F28  7F 65 DB 78 */	mr r5, r27
/* 803A6F2C  38 61 00 09 */	addi r3, r1, 9
/* 803A6F30  4B FF FB CD */	bl mFI_BGDispMake
/* 803A6F34  48 00 00 B0 */	b lbl_803A6FE4
lbl_803A6F38:
/* 803A6F38  88 01 00 08 */	lbz r0, 8(r1)
/* 803A6F3C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A6F40  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 803A6F44  3B A3 00 01 */	addi r29, r3, 1
/* 803A6F48  41 82 00 9C */	beq lbl_803A6FE4
/* 803A6F4C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803A6F50  7F A4 EB 78 */	mr r4, r29
/* 803A6F54  4B FF E2 B5 */	bl mFI_BlockCheck
/* 803A6F58  2C 03 00 00 */	cmpwi r3, 0
/* 803A6F5C  41 82 00 88 */	beq lbl_803A6FE4
/* 803A6F60  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803A6F64  7F A5 EB 78 */	mr r5, r29
/* 803A6F68  38 61 00 09 */	addi r3, r1, 9
/* 803A6F6C  4B FF FB 91 */	bl mFI_BGDispMake
/* 803A6F70  88 01 00 08 */	lbz r0, 8(r1)
/* 803A6F74  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803A6F78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803A6F7C  3B 83 FF FF */	addi r28, r3, -1
/* 803A6F80  41 82 00 2C */	beq lbl_803A6FAC
/* 803A6F84  7F 83 E3 78 */	mr r3, r28
/* 803A6F88  7F A4 EB 78 */	mr r4, r29
/* 803A6F8C  4B FF E2 7D */	bl mFI_BlockCheck
/* 803A6F90  2C 03 00 00 */	cmpwi r3, 0
/* 803A6F94  41 82 00 18 */	beq lbl_803A6FAC
/* 803A6F98  7F 84 E3 78 */	mr r4, r28
/* 803A6F9C  7F A5 EB 78 */	mr r5, r29
/* 803A6FA0  38 61 00 09 */	addi r3, r1, 9
/* 803A6FA4  4B FF FB 59 */	bl mFI_BGDispMake
/* 803A6FA8  48 00 00 3C */	b lbl_803A6FE4
lbl_803A6FAC:
/* 803A6FAC  88 01 00 08 */	lbz r0, 8(r1)
/* 803A6FB0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803A6FB4  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 803A6FB8  3B 83 00 01 */	addi r28, r3, 1
/* 803A6FBC  41 82 00 28 */	beq lbl_803A6FE4
/* 803A6FC0  7F 83 E3 78 */	mr r3, r28
/* 803A6FC4  7F A4 EB 78 */	mr r4, r29
/* 803A6FC8  4B FF E2 41 */	bl mFI_BlockCheck
/* 803A6FCC  2C 03 00 00 */	cmpwi r3, 0
/* 803A6FD0  41 82 00 14 */	beq lbl_803A6FE4
/* 803A6FD4  7F 84 E3 78 */	mr r4, r28
/* 803A6FD8  7F A5 EB 78 */	mr r5, r29
/* 803A6FDC  38 61 00 09 */	addi r3, r1, 9
/* 803A6FE0  4B FF FB 1D */	bl mFI_BGDispMake
lbl_803A6FE4:
/* 803A6FE4  3B E0 00 00 */	li r31, 0
/* 803A6FE8  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A6FEC  7F FC FB 78 */	mr r28, r31
/* 803A6FF0  3B 60 00 00 */	li r27, 0
/* 803A6FF4  3B A3 7A 58 */	addi r29, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A6FF8  3B C0 00 FF */	li r30, 0xff
lbl_803A6FFC:
/* 803A6FFC  88 01 00 09 */	lbz r0, 9(r1)
/* 803A7000  7C 00 DE 30 */	sraw r0, r0, r27
/* 803A7004  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803A7008  2C 00 00 01 */	cmpwi r0, 1
/* 803A700C  41 82 00 30 */	beq lbl_803A703C
/* 803A7010  80 BD 00 00 */	lwz r5, 0(r29)
/* 803A7014  38 7F 00 10 */	addi r3, r31, 0x10
/* 803A7018  38 9F 00 08 */	addi r4, r31, 8
/* 803A701C  38 1F 00 0C */	addi r0, r31, 0xc
/* 803A7020  7F 85 19 2E */	stwx r28, r5, r3
/* 803A7024  7F 63 DB 78 */	mr r3, r27
/* 803A7028  80 BD 00 00 */	lwz r5, 0(r29)
/* 803A702C  7F C5 21 2E */	stwx r30, r5, r4
/* 803A7030  80 9D 00 00 */	lwz r4, 0(r29)
/* 803A7034  7F C4 01 2E */	stwx r30, r4, r0
/* 803A7038  4B FF ED DD */	bl mFI_ClearRegisterBgInfoIdx
lbl_803A703C:
/* 803A703C  3B 7B 00 01 */	addi r27, r27, 1
/* 803A7040  3B FF 00 0C */	addi r31, r31, 0xc
/* 803A7044  2C 1B 00 04 */	cmpwi r27, 4
/* 803A7048  41 80 FF B4 */	blt lbl_803A6FFC
/* 803A704C  39 61 00 50 */	addi r11, r1, 0x50
/* 803A7050  4B CF 3E C9 */	bl func_8009AF18
/* 803A7054  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803A7058  7C 08 03 A6 */	mtlr r0
/* 803A705C  38 21 00 50 */	addi r1, r1, 0x50
/* 803A7060  4E 80 00 20 */	blr 

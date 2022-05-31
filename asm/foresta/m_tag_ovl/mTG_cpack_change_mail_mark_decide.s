lbl_805F8C04:
/* 805F8C04  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805F8C08  7C 08 02 A6 */	mflr r0
/* 805F8C0C  90 01 00 74 */	stw r0, 0x74(r1)
/* 805F8C10  39 61 00 70 */	addi r11, r1, 0x70
/* 805F8C14  4B AA 22 89 */	bl func_8009AE9C
/* 805F8C18  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 805F8C1C  7C 7B 1B 78 */	mr r27, r3
/* 805F8C20  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 805F8C24  80 FB 00 2C */	lwz r7, 0x2c(r27)
/* 805F8C28  3C 63 00 02 */	addis r3, r3, 2
/* 805F8C2C  7C BD 2B 78 */	mr r29, r5
/* 805F8C30  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805F8C34  7C 9C 23 78 */	mr r28, r4
/* 805F8C38  82 67 09 7C */	lwz r19, 0x97c(r7)
/* 805F8C3C  7C D6 33 78 */	mr r22, r6
/* 805F8C40  8A 25 0B A8 */	lbz r17, 0xba8(r5)
/* 805F8C44  39 E3 04 E0 */	addi r15, r3, 0x4e0
/* 805F8C48  3A 40 FF FF */	li r18, -1
/* 805F8C4C  3A 00 FF FF */	li r16, -1
/* 805F8C50  3A 80 00 00 */	li r20, 0
/* 805F8C54  3A A0 00 00 */	li r21, 0
/* 805F8C58  3A E0 00 00 */	li r23, 0
/* 805F8C5C  48 00 00 68 */	b lbl_805F8CC4
lbl_805F8C60:
/* 805F8C60  7E 40 07 35 */	extsh. r0, r18
/* 805F8C64  40 80 00 28 */	bge lbl_805F8C8C
/* 805F8C68  7E E0 07 34 */	extsh r0, r23
/* 805F8C6C  38 60 00 01 */	li r3, 1
/* 805F8C70  A0 9C 05 E2 */	lhz r4, 0x5e2(r28)
/* 805F8C74  7C 60 00 30 */	slw r0, r3, r0
/* 805F8C78  7C 80 00 39 */	and. r0, r4, r0
/* 805F8C7C  41 82 00 10 */	beq lbl_805F8C8C
/* 805F8C80  7E F2 BB 78 */	mr r18, r23
/* 805F8C84  7D F4 7B 78 */	mr r20, r15
/* 805F8C88  48 00 00 24 */	b lbl_805F8CAC
lbl_805F8C8C:
/* 805F8C8C  7E 00 07 35 */	extsh. r0, r16
/* 805F8C90  40 80 00 1C */	bge lbl_805F8CAC
/* 805F8C94  7D E3 7B 78 */	mr r3, r15
/* 805F8C98  4B DC 3B 09 */	bl mMl_check_not_used_mail
/* 805F8C9C  2C 03 00 00 */	cmpwi r3, 0
/* 805F8CA0  41 82 00 0C */	beq lbl_805F8CAC
/* 805F8CA4  7E F0 BB 78 */	mr r16, r23
/* 805F8CA8  7D F5 7B 78 */	mr r21, r15
lbl_805F8CAC:
/* 805F8CAC  7E 40 07 35 */	extsh. r0, r18
/* 805F8CB0  41 80 00 0C */	blt lbl_805F8CBC
/* 805F8CB4  7E 00 07 35 */	extsh. r0, r16
/* 805F8CB8  40 80 00 18 */	bge lbl_805F8CD0
lbl_805F8CBC:
/* 805F8CBC  3A F7 00 01 */	addi r23, r23, 1
/* 805F8CC0  39 EF 01 2A */	addi r15, r15, 0x12a
lbl_805F8CC4:
/* 805F8CC4  7E E0 07 34 */	extsh r0, r23
/* 805F8CC8  2C 00 00 0A */	cmpwi r0, 0xa
/* 805F8CCC  41 80 FF 94 */	blt lbl_805F8C60
lbl_805F8CD0:
/* 805F8CD0  1C 71 17 48 */	mulli r3, r17, 0x1748
/* 805F8CD4  80 1D 00 00 */	lwz r0, 0(r29)
/* 805F8CD8  3A 20 FF FF */	li r17, -1
/* 805F8CDC  39 E0 FF FF */	li r15, -1
/* 805F8CE0  3B 23 00 64 */	addi r25, r3, 0x64
/* 805F8CE4  3B 00 00 00 */	li r24, 0
/* 805F8CE8  7F 20 CA 14 */	add r25, r0, r25
/* 805F8CEC  3B E0 00 00 */	li r31, 0
/* 805F8CF0  3A E0 00 00 */	li r23, 0
/* 805F8CF4  48 00 00 68 */	b lbl_805F8D5C
lbl_805F8CF8:
/* 805F8CF8  7E 20 07 35 */	extsh. r0, r17
/* 805F8CFC  40 80 00 28 */	bge lbl_805F8D24
/* 805F8D00  7E E0 07 34 */	extsh r0, r23
/* 805F8D04  38 60 00 01 */	li r3, 1
/* 805F8D08  80 9D 0B B4 */	lwz r4, 0xbb4(r29)
/* 805F8D0C  7C 60 00 30 */	slw r0, r3, r0
/* 805F8D10  7C 80 00 39 */	and. r0, r4, r0
/* 805F8D14  41 82 00 10 */	beq lbl_805F8D24
/* 805F8D18  7F 38 CB 78 */	mr r24, r25
/* 805F8D1C  7E F1 BB 78 */	mr r17, r23
/* 805F8D20  48 00 00 24 */	b lbl_805F8D44
lbl_805F8D24:
/* 805F8D24  7D E0 07 35 */	extsh. r0, r15
/* 805F8D28  40 80 00 1C */	bge lbl_805F8D44
/* 805F8D2C  7F 23 CB 78 */	mr r3, r25
/* 805F8D30  4B DC 3A 71 */	bl mMl_check_not_used_mail
/* 805F8D34  2C 03 00 00 */	cmpwi r3, 0
/* 805F8D38  41 82 00 0C */	beq lbl_805F8D44
/* 805F8D3C  7F 3F CB 78 */	mr r31, r25
/* 805F8D40  7E EF BB 78 */	mr r15, r23
lbl_805F8D44:
/* 805F8D44  7D E0 07 35 */	extsh. r0, r15
/* 805F8D48  41 80 00 0C */	blt lbl_805F8D54
/* 805F8D4C  7E 20 07 35 */	extsh. r0, r17
/* 805F8D50  40 80 00 18 */	bge lbl_805F8D68
lbl_805F8D54:
/* 805F8D54  3A F7 00 01 */	addi r23, r23, 1
/* 805F8D58  3B 39 01 2A */	addi r25, r25, 0x12a
lbl_805F8D5C:
/* 805F8D5C  7E E0 07 34 */	extsh r0, r23
/* 805F8D60  2C 00 00 14 */	cmpwi r0, 0x14
/* 805F8D64  41 80 FF 94 */	blt lbl_805F8CF8
lbl_805F8D68:
/* 805F8D68  7E 40 07 35 */	extsh. r0, r18
/* 805F8D6C  40 80 00 0C */	bge lbl_805F8D78
/* 805F8D70  39 E0 FF FF */	li r15, -1
/* 805F8D74  3B E0 00 00 */	li r31, 0
lbl_805F8D78:
/* 805F8D78  7E 20 07 35 */	extsh. r0, r17
/* 805F8D7C  40 80 00 0C */	bge lbl_805F8D88
/* 805F8D80  3A 00 FF FF */	li r16, -1
/* 805F8D84  3A A0 00 00 */	li r21, 0
lbl_805F8D88:
/* 805F8D88  38 80 00 00 */	li r4, 0
/* 805F8D8C  38 00 00 02 */	li r0, 2
/* 805F8D90  7C 88 23 78 */	mr r8, r4
/* 805F8D94  39 41 00 0C */	addi r10, r1, 0xc
/* 805F8D98  7C 86 23 78 */	mr r6, r4
/* 805F8D9C  39 21 00 08 */	addi r9, r1, 8
/* 805F8DA0  38 E1 00 18 */	addi r7, r1, 0x18
/* 805F8DA4  38 A1 00 10 */	addi r5, r1, 0x10
/* 805F8DA8  38 60 00 00 */	li r3, 0
/* 805F8DAC  39 60 7F FF */	li r11, 0x7fff
/* 805F8DB0  7C 09 03 A6 */	mtctr r0
lbl_805F8DB4:
/* 805F8DB4  7D 6A 23 2E */	sthx r11, r10, r4
/* 805F8DB8  7D 69 23 2E */	sthx r11, r9, r4
/* 805F8DBC  38 84 00 02 */	addi r4, r4, 2
/* 805F8DC0  7D 07 19 2E */	stwx r8, r7, r3
/* 805F8DC4  7C C5 19 2E */	stwx r6, r5, r3
/* 805F8DC8  38 63 00 04 */	addi r3, r3, 4
/* 805F8DCC  42 00 FF E8 */	bdnz lbl_805F8DB4
/* 805F8DD0  7E 40 07 35 */	extsh. r0, r18
/* 805F8DD4  40 80 00 0C */	bge lbl_805F8DE0
/* 805F8DD8  3A 40 7F FF */	li r18, 0x7fff
/* 805F8DDC  3A 80 00 00 */	li r20, 0
lbl_805F8DE0:
/* 805F8DE0  7E 00 07 35 */	extsh. r0, r16
/* 805F8DE4  B2 41 00 0C */	sth r18, 0xc(r1)
/* 805F8DE8  B2 41 00 0A */	sth r18, 0xa(r1)
/* 805F8DEC  92 81 00 18 */	stw r20, 0x18(r1)
/* 805F8DF0  92 81 00 14 */	stw r20, 0x14(r1)
/* 805F8DF4  41 80 00 2C */	blt lbl_805F8E20
/* 805F8DF8  7E 03 07 34 */	extsh r3, r16
/* 805F8DFC  7E 40 07 34 */	extsh r0, r18
/* 805F8E00  7C 03 00 00 */	cmpw r3, r0
/* 805F8E04  40 80 00 10 */	bge lbl_805F8E14
/* 805F8E08  B2 01 00 0A */	sth r16, 0xa(r1)
/* 805F8E0C  92 A1 00 14 */	stw r21, 0x14(r1)
/* 805F8E10  48 00 00 18 */	b lbl_805F8E28
lbl_805F8E14:
/* 805F8E14  3A 00 7F FF */	li r16, 0x7fff
/* 805F8E18  3A A0 00 00 */	li r21, 0
/* 805F8E1C  48 00 00 0C */	b lbl_805F8E28
lbl_805F8E20:
/* 805F8E20  3A 00 7F FF */	li r16, 0x7fff
/* 805F8E24  3A A0 00 00 */	li r21, 0
lbl_805F8E28:
/* 805F8E28  7E 20 07 35 */	extsh. r0, r17
/* 805F8E2C  40 80 00 0C */	bge lbl_805F8E38
/* 805F8E30  3A 20 7F FF */	li r17, 0x7fff
/* 805F8E34  3B 00 00 00 */	li r24, 0
lbl_805F8E38:
/* 805F8E38  7D E0 07 35 */	extsh. r0, r15
/* 805F8E3C  B2 21 00 0E */	sth r17, 0xe(r1)
/* 805F8E40  B2 21 00 08 */	sth r17, 8(r1)
/* 805F8E44  93 01 00 1C */	stw r24, 0x1c(r1)
/* 805F8E48  93 01 00 10 */	stw r24, 0x10(r1)
/* 805F8E4C  41 80 00 2C */	blt lbl_805F8E78
/* 805F8E50  7D E3 07 34 */	extsh r3, r15
/* 805F8E54  7E 20 07 34 */	extsh r0, r17
/* 805F8E58  7C 03 00 00 */	cmpw r3, r0
/* 805F8E5C  40 80 00 10 */	bge lbl_805F8E6C
/* 805F8E60  B1 E1 00 08 */	sth r15, 8(r1)
/* 805F8E64  93 E1 00 10 */	stw r31, 0x10(r1)
/* 805F8E68  48 00 00 18 */	b lbl_805F8E80
lbl_805F8E6C:
/* 805F8E6C  39 E0 7F FF */	li r15, 0x7fff
/* 805F8E70  3B E0 00 00 */	li r31, 0
/* 805F8E74  48 00 00 0C */	b lbl_805F8E80
lbl_805F8E78:
/* 805F8E78  39 E0 7F FF */	li r15, 0x7fff
/* 805F8E7C  3B E0 00 00 */	li r31, 0
lbl_805F8E80:
/* 805F8E80  1C 96 00 4C */	mulli r4, r22, 0x4c
/* 805F8E84  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805F8E88  C0 03 B8 14 */	lfs f0, data_8064B814@l(r3)  /* 0x8064B814@l */
/* 805F8E8C  38 A0 00 03 */	li r5, 3
/* 805F8E90  7E 43 07 34 */	extsh r3, r18
/* 805F8E94  3B C4 03 24 */	addi r30, r4, 0x324
/* 805F8E98  7F D3 F2 14 */	add r30, r19, r30
/* 805F8E9C  38 80 00 01 */	li r4, 1
/* 805F8EA0  92 9E 00 10 */	stw r20, 0x10(r30)
/* 805F8EA4  7C 96 18 30 */	slw r22, r4, r3
/* 805F8EA8  7E 20 07 34 */	extsh r0, r17
/* 805F8EAC  3A E1 00 0C */	addi r23, r1, 0xc
/* 805F8EB0  92 BE 00 14 */	stw r21, 0x14(r30)
/* 805F8EB4  7C 95 00 30 */	slw r21, r4, r0
/* 805F8EB8  3A 80 00 00 */	li r20, 0
/* 805F8EBC  3B 40 00 00 */	li r26, 0
/* 805F8EC0  93 1E 00 18 */	stw r24, 0x18(r30)
/* 805F8EC4  3B 20 00 00 */	li r25, 0
/* 805F8EC8  3B 00 00 00 */	li r24, 0
/* 805F8ECC  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 805F8ED0  B2 5E 00 40 */	sth r18, 0x40(r30)
/* 805F8ED4  B2 1E 00 42 */	sth r16, 0x42(r30)
/* 805F8ED8  B2 3E 00 44 */	sth r17, 0x44(r30)
/* 805F8EDC  B1 FE 00 46 */	sth r15, 0x46(r30)
/* 805F8EE0  D0 13 03 70 */	stfs f0, 0x370(r19)
/* 805F8EE4  B0 BE 00 4A */	sth r5, 0x4a(r30)
/* 805F8EE8  B0 9E 00 48 */	sth r4, 0x48(r30)
/* 805F8EEC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805F8EF0  3A 03 00 9C */	addi r16, r3, 0x9c
/* 805F8EF4  3A 23 05 1C */	addi r17, r3, 0x51c
lbl_805F8EF8:
/* 805F8EF8  7C D7 C2 AE */	lhax r6, r23, r24
/* 805F8EFC  2C 06 7F FF */	cmpwi r6, 0x7fff
/* 805F8F00  41 82 01 78 */	beq lbl_805F9078
/* 805F8F04  38 61 00 18 */	addi r3, r1, 0x18
/* 805F8F08  38 81 00 10 */	addi r4, r1, 0x10
/* 805F8F0C  7C 03 C8 2E */	lwzx r0, r3, r25
/* 805F8F10  7C FE CA 14 */	add r7, r30, r25
/* 805F8F14  3C 60 80 6D */	lis r3, table_no_3316@ha /* 0x806D0CD0@ha */
/* 805F8F18  7D FE D2 14 */	add r15, r30, r26
/* 805F8F1C  90 07 00 00 */	stw r0, 0(r7)
/* 805F8F20  38 A3 0C D0 */	addi r5, r3, table_no_3316@l /* 0x806D0CD0@l */
/* 805F8F24  7C 04 C8 2E */	lwzx r0, r4, r25
/* 805F8F28  7F 63 DB 78 */	mr r3, r27
/* 805F8F2C  38 8F 00 20 */	addi r4, r15, 0x20
/* 805F8F30  90 07 00 08 */	stw r0, 8(r7)
/* 805F8F34  7C A5 C8 2E */	lwzx r5, r5, r25
/* 805F8F38  4B FF 67 79 */	bl mTG_set_hand_pos
/* 805F8F3C  20 14 00 01 */	subfic r0, r20, 1
/* 805F8F40  3C 80 80 6D */	lis r4, table_no_3316@ha /* 0x806D0CD0@ha */
/* 805F8F44  38 C1 00 08 */	addi r6, r1, 8
/* 805F8F48  7F 63 DB 78 */	mr r3, r27
/* 805F8F4C  54 00 10 3A */	slwi r0, r0, 2
/* 805F8F50  38 84 0C D0 */	addi r4, r4, table_no_3316@l /* 0x806D0CD0@l */
/* 805F8F54  7C A4 00 2E */	lwzx r5, r4, r0
/* 805F8F58  38 8F 00 30 */	addi r4, r15, 0x30
/* 805F8F5C  7C C6 C2 AE */	lhax r6, r6, r24
/* 805F8F60  4B FF 67 51 */	bl mTG_set_hand_pos
/* 805F8F64  2C 14 00 01 */	cmpwi r20, 1
/* 805F8F68  41 82 00 70 */	beq lbl_805F8FD8
/* 805F8F6C  40 80 00 C4 */	bge lbl_805F9030
/* 805F8F70  2C 14 00 00 */	cmpwi r20, 0
/* 805F8F74  40 80 00 08 */	bge lbl_805F8F7C
/* 805F8F78  48 00 00 B8 */	b lbl_805F9030
lbl_805F8F7C:
/* 805F8F7C  C0 2F 00 20 */	lfs f1, 0x20(r15)
/* 805F8F80  7F 63 DB 78 */	mr r3, r27
/* 805F8F84  C0 10 00 18 */	lfs f0, 0x18(r16)
/* 805F8F88  7E 04 83 78 */	mr r4, r16
/* 805F8F8C  38 A0 00 01 */	li r5, 1
/* 805F8F90  EC 01 00 2A */	fadds f0, f1, f0
/* 805F8F94  D0 0F 00 20 */	stfs f0, 0x20(r15)
/* 805F8F98  4B FF F9 31 */	bl mIV_get_win_posY
/* 805F8F9C  C0 0F 00 24 */	lfs f0, 0x24(r15)
/* 805F8FA0  7F 63 DB 78 */	mr r3, r27
/* 805F8FA4  7E 24 8B 78 */	mr r4, r17
/* 805F8FA8  38 A0 00 01 */	li r5, 1
/* 805F8FAC  EC 00 08 2A */	fadds f0, f0, f1
/* 805F8FB0  D0 0F 00 24 */	stfs f0, 0x24(r15)
/* 805F8FB4  C0 2F 00 30 */	lfs f1, 0x30(r15)
/* 805F8FB8  C0 11 00 18 */	lfs f0, 0x18(r17)
/* 805F8FBC  EC 01 00 2A */	fadds f0, f1, f0
/* 805F8FC0  D0 0F 00 30 */	stfs f0, 0x30(r15)
/* 805F8FC4  4B FF F9 05 */	bl mIV_get_win_posY
/* 805F8FC8  C0 0F 00 34 */	lfs f0, 0x34(r15)
/* 805F8FCC  EC 00 08 2A */	fadds f0, f0, f1
/* 805F8FD0  D0 0F 00 34 */	stfs f0, 0x34(r15)
/* 805F8FD4  48 00 00 5C */	b lbl_805F9030
lbl_805F8FD8:
/* 805F8FD8  C0 2F 00 20 */	lfs f1, 0x20(r15)
/* 805F8FDC  7F 63 DB 78 */	mr r3, r27
/* 805F8FE0  C0 11 00 18 */	lfs f0, 0x18(r17)
/* 805F8FE4  7E 24 8B 78 */	mr r4, r17
/* 805F8FE8  38 A0 00 01 */	li r5, 1
/* 805F8FEC  EC 01 00 2A */	fadds f0, f1, f0
/* 805F8FF0  D0 0F 00 20 */	stfs f0, 0x20(r15)
/* 805F8FF4  4B FF F8 D5 */	bl mIV_get_win_posY
/* 805F8FF8  C0 0F 00 24 */	lfs f0, 0x24(r15)
/* 805F8FFC  7F 63 DB 78 */	mr r3, r27
/* 805F9000  7E 04 83 78 */	mr r4, r16
/* 805F9004  38 A0 00 01 */	li r5, 1
/* 805F9008  EC 00 08 2A */	fadds f0, f0, f1
/* 805F900C  D0 0F 00 24 */	stfs f0, 0x24(r15)
/* 805F9010  C0 2F 00 30 */	lfs f1, 0x30(r15)
/* 805F9014  C0 10 00 18 */	lfs f0, 0x18(r16)
/* 805F9018  EC 01 00 2A */	fadds f0, f1, f0
/* 805F901C  D0 0F 00 30 */	stfs f0, 0x30(r15)
/* 805F9020  4B FF F8 A9 */	bl mIV_get_win_posY
/* 805F9024  C0 0F 00 34 */	lfs f0, 0x34(r15)
/* 805F9028  EC 00 08 2A */	fadds f0, f0, f1
/* 805F902C  D0 0F 00 34 */	stfs f0, 0x34(r15)
lbl_805F9030:
/* 805F9030  2C 14 00 01 */	cmpwi r20, 1
/* 805F9034  41 82 00 24 */	beq lbl_805F9058
/* 805F9038  40 80 00 2C */	bge lbl_805F9064
/* 805F903C  2C 14 00 00 */	cmpwi r20, 0
/* 805F9040  40 80 00 08 */	bge lbl_805F9048
/* 805F9044  48 00 00 20 */	b lbl_805F9064
lbl_805F9048:
/* 805F9048  A0 1C 05 E8 */	lhz r0, 0x5e8(r28)
/* 805F904C  7C 00 B3 78 */	or r0, r0, r22
/* 805F9050  B0 1C 05 E8 */	sth r0, 0x5e8(r28)
/* 805F9054  48 00 00 10 */	b lbl_805F9064
lbl_805F9058:
/* 805F9058  80 1D 0B C0 */	lwz r0, 0xbc0(r29)
/* 805F905C  7C 00 AB 78 */	or r0, r0, r21
/* 805F9060  90 1D 0B C0 */	stw r0, 0xbc0(r29)
lbl_805F9064:
/* 805F9064  38 00 00 01 */	li r0, 1
/* 805F9068  A8 7E 00 4A */	lha r3, 0x4a(r30)
/* 805F906C  7C 00 A0 30 */	slw r0, r0, r20
/* 805F9070  7C 60 00 78 */	andc r0, r3, r0
/* 805F9074  B0 1E 00 4A */	sth r0, 0x4a(r30)
lbl_805F9078:
/* 805F9078  3A 94 00 01 */	addi r20, r20, 1
/* 805F907C  3B 39 00 04 */	addi r25, r25, 4
/* 805F9080  2C 14 00 02 */	cmpwi r20, 2
/* 805F9084  3B 18 00 02 */	addi r24, r24, 2
/* 805F9088  3B 5A 00 08 */	addi r26, r26, 8
/* 805F908C  41 80 FE 6C */	blt lbl_805F8EF8
/* 805F9090  7F 63 DB 78 */	mr r3, r27
/* 805F9094  4B FF 85 09 */	bl mTG_init_tag_data_item_win
/* 805F9098  39 61 00 70 */	addi r11, r1, 0x70
/* 805F909C  4B AA 1E 4D */	bl func_8009AEE8
/* 805F90A0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805F90A4  7C 08 03 A6 */	mtlr r0
/* 805F90A8  38 21 00 70 */	addi r1, r1, 0x70
/* 805F90AC  4E 80 00 20 */	blr 

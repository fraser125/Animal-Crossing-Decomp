lbl_80509814:
/* 80509814  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80509818  7C 08 02 A6 */	mflr r0
/* 8050981C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80509820  39 61 00 50 */	addi r11, r1, 0x50
/* 80509824  4B B9 16 91 */	bl func_8009AEB4
/* 80509828  3D 00 80 6A */	lis r8, startX_table@ha /* 0x8069EEE4@ha */
/* 8050982C  3C E0 80 6A */	lis r7, l_river_next_data@ha /* 0x8069E960@ha */
/* 80509830  7C 77 1B 78 */	mr r23, r3
/* 80509834  7C 98 23 78 */	mr r24, r4
/* 80509838  7C B9 2B 78 */	mr r25, r5
/* 8050983C  7C DA 33 78 */	mr r26, r6
/* 80509840  3B A8 EE E4 */	addi r29, r8, startX_table@l /* 0x8069EEE4@l */
/* 80509844  3B C7 E9 60 */	addi r30, r7, l_river_next_data@l /* 0x8069E960@l */
/* 80509848  3B 80 00 00 */	li r28, 0
/* 8050984C  48 00 01 78 */	b lbl_805099C4
lbl_80509850:
/* 80509850  38 60 00 04 */	li r3, 4
/* 80509854  4B FF F5 8D */	bl mRF_GetRandom
/* 80509858  80 9E 00 00 */	lwz r4, 0(r30)
/* 8050985C  54 60 10 3A */	slwi r0, r3, 2
/* 80509860  7F 7D 00 2E */	lwzx r27, r29, r0
/* 80509864  82 C4 00 00 */	lwz r22, 0(r4)
/* 80509868  80 64 00 04 */	lwz r3, 4(r4)
/* 8050986C  4B FF F5 75 */	bl mRF_GetRandom
/* 80509870  7E B6 18 AE */	lbzx r21, r22, r3
/* 80509874  7F 65 DB 78 */	mr r5, r27
/* 80509878  38 61 00 14 */	addi r3, r1, 0x14
/* 8050987C  38 81 00 10 */	addi r4, r1, 0x10
/* 80509880  38 C0 00 01 */	li r6, 1
/* 80509884  38 E0 00 02 */	li r7, 2
/* 80509888  4B FF F5 C1 */	bl mRF_Direct2BlockNo
/* 8050988C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80509890  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80509894  4B FF F5 A9 */	bl mRF_D2ToD1
/* 80509898  38 15 FF D8 */	addi r0, r21, -40
/* 8050989C  7C 7F 1B 78 */	mr r31, r3
/* 805098A0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 805098A4  4B ED B5 45 */	bl mRF_RiverIdx2NextDirect
/* 805098A8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 805098AC  7C 67 1B 78 */	mr r7, r3
/* 805098B0  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 805098B4  38 61 00 0C */	addi r3, r1, 0xc
/* 805098B8  38 81 00 08 */	addi r4, r1, 8
/* 805098BC  4B FF F5 8D */	bl mRF_Direct2BlockNo
/* 805098C0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805098C4  80 81 00 08 */	lwz r4, 8(r1)
/* 805098C8  4B FF F5 75 */	bl mRF_D2ToD1
/* 805098CC  7C 76 1B 78 */	mr r22, r3
/* 805098D0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805098D4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 805098D8  38 A0 00 01 */	li r5, 1
/* 805098DC  38 C0 00 05 */	li r6, 5
/* 805098E0  38 E0 00 01 */	li r7, 1
/* 805098E4  39 00 00 06 */	li r8, 6
/* 805098E8  4B FF F5 91 */	bl mRF_CheckCorrectBlockNo
/* 805098EC  2C 03 00 00 */	cmpwi r3, 0
/* 805098F0  41 82 00 A0 */	beq lbl_80509990
/* 805098F4  7C 78 F8 AE */	lbzx r3, r24, r31
/* 805098F8  28 03 00 0E */	cmplwi r3, 0xe
/* 805098FC  41 82 00 94 */	beq lbl_80509990
/* 80509900  38 80 00 00 */	li r4, 0
/* 80509904  4B FF F5 B9 */	bl mRF_CheckBlockGroup
/* 80509908  2C 03 00 00 */	cmpwi r3, 0
/* 8050990C  41 82 00 60 */	beq lbl_8050996C
/* 80509910  7C 78 F8 AE */	lbzx r3, r24, r31
/* 80509914  38 80 00 28 */	li r4, 0x28
/* 80509918  4B FF FA E9 */	bl mRF_RiverAlbuminCliff
/* 8050991C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80509920  28 00 00 FF */	cmplwi r0, 0xff
/* 80509924  41 82 00 40 */	beq lbl_80509964
/* 80509928  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8050992C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80509930  38 84 00 01 */	addi r4, r4, 1
/* 80509934  4B FF F5 09 */	bl mRF_D2ToD1
/* 80509938  7C 18 18 AE */	lbzx r0, r24, r3
/* 8050993C  28 00 00 0E */	cmplwi r0, 0xe
/* 80509940  41 82 00 50 */	beq lbl_80509990
/* 80509944  38 00 00 28 */	li r0, 0x28
/* 80509948  3B 80 00 01 */	li r28, 1
/* 8050994C  7C 17 F9 AE */	stbx r0, r23, r31
/* 80509950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80509954  90 19 00 00 */	stw r0, 0(r25)
/* 80509958  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8050995C  90 1A 00 00 */	stw r0, 0(r26)
/* 80509960  48 00 00 30 */	b lbl_80509990
lbl_80509964:
/* 80509964  38 60 00 00 */	li r3, 0
/* 80509968  48 00 00 68 */	b lbl_805099D0
lbl_8050996C:
/* 8050996C  7C 18 B0 AE */	lbzx r0, r24, r22
/* 80509970  28 00 00 0E */	cmplwi r0, 0xe
/* 80509974  41 82 00 1C */	beq lbl_80509990
/* 80509978  7E B7 F9 AE */	stbx r21, r23, r31
/* 8050997C  3B 80 00 01 */	li r28, 1
/* 80509980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80509984  90 19 00 00 */	stw r0, 0(r25)
/* 80509988  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8050998C  90 1A 00 00 */	stw r0, 0(r26)
lbl_80509990:
/* 80509990  2C 1C 00 01 */	cmpwi r28, 1
/* 80509994  40 82 00 30 */	bne lbl_805099C4
/* 80509998  7F 63 DB 78 */	mr r3, r27
/* 8050999C  38 80 00 00 */	li r4, 0
/* 805099A0  4B FF F4 9D */	bl mRF_D2ToD1
/* 805099A4  7C 7F 1B 78 */	mr r31, r3
/* 805099A8  7F 63 DB 78 */	mr r3, r27
/* 805099AC  38 80 00 01 */	li r4, 1
/* 805099B0  4B FF F4 8D */	bl mRF_D2ToD1
/* 805099B4  38 80 00 01 */	li r4, 1
/* 805099B8  38 00 00 0D */	li r0, 0xd
/* 805099BC  7C 97 F9 AE */	stbx r4, r23, r31
/* 805099C0  7C 17 19 AE */	stbx r0, r23, r3
lbl_805099C4:
/* 805099C4  2C 1C 00 00 */	cmpwi r28, 0
/* 805099C8  41 82 FE 88 */	beq lbl_80509850
/* 805099CC  38 60 00 01 */	li r3, 1
lbl_805099D0:
/* 805099D0  39 61 00 50 */	addi r11, r1, 0x50
/* 805099D4  4B B9 15 2D */	bl func_8009AF00
/* 805099D8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805099DC  7C 08 03 A6 */	mtlr r0
/* 805099E0  38 21 00 50 */	addi r1, r1, 0x50
/* 805099E4  4E 80 00 20 */	blr 
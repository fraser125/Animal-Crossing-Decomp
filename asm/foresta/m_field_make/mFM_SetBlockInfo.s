lbl_803A2DB0:
/* 803A2DB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803A2DB4  7C 08 02 A6 */	mflr r0
/* 803A2DB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803A2DBC  39 61 00 40 */	addi r11, r1, 0x40
/* 803A2DC0  4B CF 80 F9 */	bl func_8009AEB8
/* 803A2DC4  7C 78 1B 78 */	mr r24, r3
/* 803A2DC8  3C 60 80 70 */	lis r3, data_806FDF48@ha /* 0x806FDF48@ha */
/* 803A2DCC  A0 18 00 00 */	lhz r0, 0(r24)
/* 803A2DD0  38 63 DF 48 */	addi r3, r3, data_806FDF48@l /* 0x806FDF48@l */
/* 803A2DD4  7C 99 23 78 */	mr r25, r4
/* 803A2DD8  54 00 04 26 */	rlwinm r0, r0, 0, 0x10, 0x13
/* 803A2DDC  7C 7F 1B 78 */	mr r31, r3
/* 803A2DE0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803A2DE4  40 82 00 18 */	bne lbl_803A2DFC
/* 803A2DE8  3B A0 08 60 */	li r29, 0x860
/* 803A2DEC  3B 80 02 18 */	li r28, 0x218
/* 803A2DF0  3B 60 01 A0 */	li r27, 0x1a0
/* 803A2DF4  3A C0 00 18 */	li r22, 0x18
/* 803A2DF8  48 00 00 14 */	b lbl_803A2E0C
lbl_803A2DFC:
/* 803A2DFC  3B A0 06 80 */	li r29, 0x680
/* 803A2E00  3B 80 01 A0 */	li r28, 0x1a0
/* 803A2E04  3B 60 00 00 */	li r27, 0
/* 803A2E08  3A C0 00 00 */	li r22, 0
lbl_803A2E0C:
/* 803A2E0C  7E C3 B3 78 */	mr r3, r22
/* 803A2E10  4B C6 3E 99 */	bl JW_GetResSizeFileNo
/* 803A2E14  7C 7A 1B 78 */	mr r26, r3
/* 803A2E18  38 80 00 20 */	li r4, 0x20
/* 803A2E1C  38 1A 00 1F */	addi r0, r26, 0x1f
/* 803A2E20  54 17 00 34 */	rlwinm r23, r0, 0, 0, 0x1a
/* 803A2E24  7E E3 BB 78 */	mr r3, r23
/* 803A2E28  48 01 96 01 */	bl func_803BC428
/* 803A2E2C  38 00 02 06 */	li r0, 0x206
/* 803A2E30  7C 64 1B 78 */	mr r4, r3
/* 803A2E34  7F 5A 03 96 */	divwu r26, r26, r0
/* 803A2E38  7E C3 B3 78 */	mr r3, r22
/* 803A2E3C  7C 9E 23 78 */	mr r30, r4
/* 803A2E40  4B C6 3D 95 */	bl JW_GetAramAddress
/* 803A2E44  7F C4 F3 78 */	mr r4, r30
/* 803A2E48  7E E5 BB 78 */	mr r5, r23
/* 803A2E4C  4B C6 3E 29 */	bl _JW_GetResourceAram
/* 803A2E50  3C 80 80 81 */	lis r4, data_8080DC80@ha /* 0x8080DC80@ha */
/* 803A2E54  38 60 04 94 */	li r3, 0x494
/* 803A2E58  38 04 DC 80 */	addi r0, r4, data_8080DC80@l /* 0x8080DC80@l */
/* 803A2E5C  7C 16 03 78 */	mr r22, r0
/* 803A2E60  48 01 95 FD */	bl zelda_malloc
/* 803A2E64  7C 77 1B 79 */	or. r23, r3, r3
/* 803A2E68  40 82 00 0C */	bne lbl_803A2E74
/* 803A2E6C  38 60 00 00 */	li r3, 0
/* 803A2E70  48 00 00 BC */	b lbl_803A2F2C
lbl_803A2E74:
/* 803A2E74  3C A0 80 75 */	lis r5, data_bgd_number@ha /* 0x8074B734@ha */
/* 803A2E78  7F E4 FB 78 */	mr r4, r31
/* 803A2E7C  38 A5 B7 34 */	addi r5, r5, data_bgd_number@l /* 0x8074B734@l */
/* 803A2E80  80 A5 00 00 */	lwz r5, 0(r5)
/* 803A2E84  4B FF F3 59 */	bl func_803A21DC
/* 803A2E88  7F A3 EB 78 */	mr r3, r29
/* 803A2E8C  48 01 95 D1 */	bl zelda_malloc
/* 803A2E90  7C 7D 1B 79 */	or. r29, r3, r3
/* 803A2E94  40 82 00 0C */	bne lbl_803A2EA0
/* 803A2E98  38 60 00 00 */	li r3, 0
/* 803A2E9C  48 00 00 90 */	b lbl_803A2F2C
lbl_803A2EA0:
/* 803A2EA0  7F C4 F3 78 */	mr r4, r30
/* 803A2EA4  7F 85 E3 78 */	mr r5, r28
/* 803A2EA8  7F 46 D3 78 */	mr r6, r26
/* 803A2EAC  7F 67 DB 78 */	mr r7, r27
/* 803A2EB0  4B FF F3 75 */	bl mFM_SortFGData
/* 803A2EB4  93 61 00 08 */	stw r27, 8(r1)
/* 803A2EB8  7F 25 CB 78 */	mr r5, r25
/* 803A2EBC  7E E6 BB 78 */	mr r6, r23
/* 803A2EC0  7F A7 EB 78 */	mr r7, r29
/* 803A2EC4  A0 78 00 00 */	lhz r3, 0(r24)
/* 803A2EC8  7E C8 B3 78 */	mr r8, r22
/* 803A2ECC  80 98 00 74 */	lwz r4, 0x74(r24)
/* 803A2ED0  89 38 00 92 */	lbz r9, 0x92(r24)
/* 803A2ED4  89 58 00 93 */	lbz r10, 0x93(r24)
/* 803A2ED8  4B FF FB 41 */	bl mFM_BlockDataSet
/* 803A2EDC  80 78 00 78 */	lwz r3, 0x78(r24)
/* 803A2EE0  7F A4 EB 78 */	mr r4, r29
/* 803A2EE4  A0 B8 00 00 */	lhz r5, 0(r24)
/* 803A2EE8  7F 66 DB 78 */	mr r6, r27
/* 803A2EEC  80 63 00 00 */	lwz r3, 0(r3)
/* 803A2EF0  4B FF FA 29 */	bl mFM_SetFG2
/* 803A2EF4  A0 18 00 00 */	lhz r0, 0(r24)
/* 803A2EF8  54 00 04 26 */	rlwinm r0, r0, 0, 0x10, 0x13
/* 803A2EFC  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803A2F00  40 82 00 10 */	bne lbl_803A2F10
/* 803A2F04  7F A3 EB 78 */	mr r3, r29
/* 803A2F08  7F 64 DB 78 */	mr r4, r27
/* 803A2F0C  48 02 D6 85 */	bl mNpc_SetNpcFurnitureRandom
lbl_803A2F10:
/* 803A2F10  7E E3 BB 78 */	mr r3, r23
/* 803A2F14  48 01 95 A1 */	bl zelda_free
/* 803A2F18  7F A3 EB 78 */	mr r3, r29
/* 803A2F1C  48 01 95 99 */	bl zelda_free
/* 803A2F20  7F C3 F3 78 */	mr r3, r30
/* 803A2F24  48 01 95 91 */	bl zelda_free
/* 803A2F28  38 60 00 00 */	li r3, 0
lbl_803A2F2C:
/* 803A2F2C  39 61 00 40 */	addi r11, r1, 0x40
/* 803A2F30  4B CF 7F D5 */	bl func_8009AF04
/* 803A2F34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803A2F38  7C 08 03 A6 */	mtlr r0
/* 803A2F3C  38 21 00 40 */	addi r1, r1, 0x40
/* 803A2F40  4E 80 00 20 */	blr 

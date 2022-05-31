lbl_8041A904:
/* 8041A904  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8041A908  7C 08 02 A6 */	mflr r0
/* 8041A90C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8041A910  39 61 00 30 */	addi r11, r1, 0x30
/* 8041A914  4B C8 05 A9 */	bl func_8009AEBC
/* 8041A918  3C E0 81 1D */	lis r7, fluc@ha /* 0x811CB96C@ha */
/* 8041A91C  7C 9C 23 78 */	mr r28, r4
/* 8041A920  3D 00 80 68 */	lis r8, neighbor_adjust@ha /* 0x80681D34@ha */
/* 8041A924  80 07 B9 6C */	lwz r0, fluc@l(r7)  /* 0x811CB96C@l */
/* 8041A928  38 E8 1D 34 */	addi r7, r8, neighbor_adjust@l /* 0x80681D34@l */
/* 8041A92C  80 83 00 00 */	lwz r4, 0(r3)
/* 8041A930  54 08 1E 78 */	rlwinm r8, r0, 3, 0x19, 0x1c
/* 8041A934  7C 7B 1B 78 */	mr r27, r3
/* 8041A938  3B E7 00 04 */	addi r31, r7, 4
/* 8041A93C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8041A940  7C 1F 40 2E */	lwzx r0, r31, r8
/* 8041A944  7C BD 2B 78 */	mr r29, r5
/* 8041A948  7C DE 33 78 */	mr r30, r6
/* 8041A94C  7F 04 02 14 */	add r24, r4, r0
/* 8041A950  7C 07 40 2E */	lwzx r0, r7, r8
/* 8041A954  2C 18 00 0F */	cmpwi r24, 0xf
/* 8041A958  7F 23 02 14 */	add r25, r3, r0
/* 8041A95C  40 81 00 0C */	ble lbl_8041A968
/* 8041A960  3B 00 00 0F */	li r24, 0xf
/* 8041A964  48 00 00 10 */	b lbl_8041A974
lbl_8041A968:
/* 8041A968  2C 18 00 00 */	cmpwi r24, 0
/* 8041A96C  40 80 00 08 */	bge lbl_8041A974
/* 8041A970  3B 00 00 00 */	li r24, 0
lbl_8041A974:
/* 8041A974  2C 19 00 0F */	cmpwi r25, 0xf
/* 8041A978  40 81 00 0C */	ble lbl_8041A984
/* 8041A97C  3B 20 00 0F */	li r25, 0xf
/* 8041A980  48 00 00 10 */	b lbl_8041A990
lbl_8041A984:
/* 8041A984  2C 19 00 00 */	cmpwi r25, 0
/* 8041A988  40 80 00 08 */	bge lbl_8041A990
/* 8041A98C  3B 20 00 00 */	li r25, 0
lbl_8041A990:
/* 8041A990  7F A3 EB 78 */	mr r3, r29
/* 8041A994  7F C4 F3 78 */	mr r4, r30
/* 8041A998  7F 05 C3 78 */	mr r5, r24
/* 8041A99C  7F 26 CB 78 */	mr r6, r25
/* 8041A9A0  4B FB 84 05 */	bl mNpc_CheckNpcSet
/* 8041A9A4  2C 03 00 00 */	cmpwi r3, 0
/* 8041A9A8  41 82 00 14 */	beq lbl_8041A9BC
/* 8041A9AC  93 1B 00 00 */	stw r24, 0(r27)
/* 8041A9B0  38 60 00 01 */	li r3, 1
/* 8041A9B4  93 3C 00 00 */	stw r25, 0(r28)
/* 8041A9B8  48 00 01 3C */	b lbl_8041AAF4
lbl_8041A9BC:
/* 8041A9BC  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8041A9C0  3C 60 80 68 */	lis r3, neighbor_adjust@ha /* 0x80681D34@ha */
/* 8041A9C4  80 A4 52 F0 */	lwz r5, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 8041A9C8  38 63 1D 34 */	addi r3, r3, neighbor_adjust@l /* 0x80681D34@l */
/* 8041A9CC  80 DB 00 00 */	lwz r6, 0(r27)
/* 8041A9D0  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 8041A9D4  80 9C 00 00 */	lwz r4, 0(r28)
/* 8041A9D8  54 00 1E 78 */	rlwinm r0, r0, 3, 0x19, 0x1c
/* 8041A9DC  7C BF 00 2E */	lwzx r5, r31, r0
/* 8041A9E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8041A9E4  7F 26 2A 14 */	add r25, r6, r5
/* 8041A9E8  2C 19 00 0F */	cmpwi r25, 0xf
/* 8041A9EC  7F 04 02 14 */	add r24, r4, r0
/* 8041A9F0  40 81 00 0C */	ble lbl_8041A9FC
/* 8041A9F4  3B 20 00 0F */	li r25, 0xf
/* 8041A9F8  48 00 00 10 */	b lbl_8041AA08
lbl_8041A9FC:
/* 8041A9FC  2C 19 00 00 */	cmpwi r25, 0
/* 8041AA00  40 80 00 08 */	bge lbl_8041AA08
/* 8041AA04  3B 20 00 00 */	li r25, 0
lbl_8041AA08:
/* 8041AA08  2C 18 00 0F */	cmpwi r24, 0xf
/* 8041AA0C  40 81 00 0C */	ble lbl_8041AA18
/* 8041AA10  3B 00 00 0F */	li r24, 0xf
/* 8041AA14  48 00 00 10 */	b lbl_8041AA24
lbl_8041AA18:
/* 8041AA18  2C 18 00 00 */	cmpwi r24, 0
/* 8041AA1C  40 80 00 08 */	bge lbl_8041AA24
/* 8041AA20  3B 00 00 00 */	li r24, 0
lbl_8041AA24:
/* 8041AA24  7F A3 EB 78 */	mr r3, r29
/* 8041AA28  7F C4 F3 78 */	mr r4, r30
/* 8041AA2C  7F 25 CB 78 */	mr r5, r25
/* 8041AA30  7F 06 C3 78 */	mr r6, r24
/* 8041AA34  4B FB 83 71 */	bl mNpc_CheckNpcSet
/* 8041AA38  2C 03 00 00 */	cmpwi r3, 0
/* 8041AA3C  41 82 00 14 */	beq lbl_8041AA50
/* 8041AA40  93 3B 00 00 */	stw r25, 0(r27)
/* 8041AA44  38 60 00 01 */	li r3, 1
/* 8041AA48  93 1C 00 00 */	stw r24, 0(r28)
/* 8041AA4C  48 00 00 A8 */	b lbl_8041AAF4
lbl_8041AA50:
/* 8041AA50  3C 60 80 68 */	lis r3, neighbor_adjust@ha /* 0x80681D34@ha */
/* 8041AA54  3A E0 00 00 */	li r23, 0
/* 8041AA58  3B 43 1D 34 */	addi r26, r3, neighbor_adjust@l /* 0x80681D34@l */
/* 8041AA5C  3B E0 00 00 */	li r31, 0
lbl_8041AA60:
/* 8041AA60  7C BA FA 14 */	add r5, r26, r31
/* 8041AA64  80 9B 00 00 */	lwz r4, 0(r27)
/* 8041AA68  80 05 00 04 */	lwz r0, 4(r5)
/* 8041AA6C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8041AA70  7F 24 02 14 */	add r25, r4, r0
/* 8041AA74  80 05 00 00 */	lwz r0, 0(r5)
/* 8041AA78  2C 19 00 0F */	cmpwi r25, 0xf
/* 8041AA7C  7F 03 02 14 */	add r24, r3, r0
/* 8041AA80  40 81 00 0C */	ble lbl_8041AA8C
/* 8041AA84  3B 20 00 0F */	li r25, 0xf
/* 8041AA88  48 00 00 10 */	b lbl_8041AA98
lbl_8041AA8C:
/* 8041AA8C  2C 19 00 00 */	cmpwi r25, 0
/* 8041AA90  40 80 00 08 */	bge lbl_8041AA98
/* 8041AA94  3B 20 00 00 */	li r25, 0
lbl_8041AA98:
/* 8041AA98  2C 18 00 0F */	cmpwi r24, 0xf
/* 8041AA9C  40 81 00 0C */	ble lbl_8041AAA8
/* 8041AAA0  3B 00 00 0F */	li r24, 0xf
/* 8041AAA4  48 00 00 10 */	b lbl_8041AAB4
lbl_8041AAA8:
/* 8041AAA8  2C 18 00 00 */	cmpwi r24, 0
/* 8041AAAC  40 80 00 08 */	bge lbl_8041AAB4
/* 8041AAB0  3B 00 00 00 */	li r24, 0
lbl_8041AAB4:
/* 8041AAB4  7F A3 EB 78 */	mr r3, r29
/* 8041AAB8  7F C4 F3 78 */	mr r4, r30
/* 8041AABC  7F 25 CB 78 */	mr r5, r25
/* 8041AAC0  7F 06 C3 78 */	mr r6, r24
/* 8041AAC4  4B FB 82 E1 */	bl mNpc_CheckNpcSet
/* 8041AAC8  2C 03 00 00 */	cmpwi r3, 0
/* 8041AACC  41 82 00 14 */	beq lbl_8041AAE0
/* 8041AAD0  93 3B 00 00 */	stw r25, 0(r27)
/* 8041AAD4  38 60 00 01 */	li r3, 1
/* 8041AAD8  93 1C 00 00 */	stw r24, 0(r28)
/* 8041AADC  48 00 00 18 */	b lbl_8041AAF4
lbl_8041AAE0:
/* 8041AAE0  3A F7 00 01 */	addi r23, r23, 1
/* 8041AAE4  3B FF 00 08 */	addi r31, r31, 8
/* 8041AAE8  2C 17 00 0F */	cmpwi r23, 0xf
/* 8041AAEC  41 80 FF 74 */	blt lbl_8041AA60
/* 8041AAF0  38 60 00 00 */	li r3, 0
lbl_8041AAF4:
/* 8041AAF4  39 61 00 30 */	addi r11, r1, 0x30
/* 8041AAF8  4B C8 04 11 */	bl func_8009AF08
/* 8041AAFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8041AB00  7C 08 03 A6 */	mtlr r0
/* 8041AB04  38 21 00 30 */	addi r1, r1, 0x30
/* 8041AB08  4E 80 00 20 */	blr 

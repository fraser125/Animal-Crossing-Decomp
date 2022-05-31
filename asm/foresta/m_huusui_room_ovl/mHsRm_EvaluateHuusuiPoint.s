lbl_804D1E00:
/* 804D1E00  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804D1E04  7C 08 02 A6 */	mflr r0
/* 804D1E08  90 01 00 54 */	stw r0, 0x54(r1)
/* 804D1E0C  39 61 00 50 */	addi r11, r1, 0x50
/* 804D1E10  4B BC 90 99 */	bl func_8009AEA8
/* 804D1E14  7C 76 1B 78 */	mr r22, r3
/* 804D1E18  7C 97 23 78 */	mr r23, r4
/* 804D1E1C  7C B8 2B 78 */	mr r24, r5
/* 804D1E20  7C D9 33 78 */	mr r25, r6
/* 804D1E24  3B E0 00 00 */	li r31, 0
/* 804D1E28  3B C0 00 00 */	li r30, 0
/* 804D1E2C  3B A0 00 00 */	li r29, 0
/* 804D1E30  3A A0 00 00 */	li r21, 0
lbl_804D1E34:
/* 804D1E34  7F 56 A8 2E */	lwzx r26, r22, r21
/* 804D1E38  3B 60 00 00 */	li r27, 0
/* 804D1E3C  3A 80 00 00 */	li r20, 0
/* 804D1E40  48 00 00 6C */	b lbl_804D1EAC
lbl_804D1E44:
/* 804D1E44  7E 5A A2 14 */	add r18, r26, r20
/* 804D1E48  3B 80 00 00 */	li r28, 0
/* 804D1E4C  3A 60 00 00 */	li r19, 0
/* 804D1E50  48 00 00 4C */	b lbl_804D1E9C
lbl_804D1E54:
/* 804D1E54  7C 72 9A 2E */	lhzx r3, r18, r19
/* 804D1E58  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804D1E5C  2C 00 00 01 */	cmpwi r0, 1
/* 804D1E60  41 82 00 0C */	beq lbl_804D1E6C
/* 804D1E64  2C 00 00 03 */	cmpwi r0, 3
/* 804D1E68  40 82 00 2C */	bne lbl_804D1E94
lbl_804D1E6C:
/* 804D1E6C  7F 84 E3 78 */	mr r4, r28
/* 804D1E70  7F 65 DB 78 */	mr r5, r27
/* 804D1E74  7E E6 BB 78 */	mr r6, r23
/* 804D1E78  38 E1 00 0C */	addi r7, r1, 0xc
/* 804D1E7C  39 01 00 08 */	addi r8, r1, 8
/* 804D1E80  4B FF FC 55 */	bl func_804D1AD4
/* 804D1E84  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804D1E88  80 01 00 08 */	lwz r0, 8(r1)
/* 804D1E8C  7F FF 1A 14 */	add r31, r31, r3
/* 804D1E90  7F DE 02 14 */	add r30, r30, r0
lbl_804D1E94:
/* 804D1E94  3B 9C 00 01 */	addi r28, r28, 1
/* 804D1E98  3A 73 00 02 */	addi r19, r19, 2
lbl_804D1E9C:
/* 804D1E9C  7C 1C B8 00 */	cmpw r28, r23
/* 804D1EA0  41 80 FF B4 */	blt lbl_804D1E54
/* 804D1EA4  3B 7B 00 01 */	addi r27, r27, 1
/* 804D1EA8  3A 94 00 20 */	addi r20, r20, 0x20
lbl_804D1EAC:
/* 804D1EAC  7C 1B B8 00 */	cmpw r27, r23
/* 804D1EB0  41 80 FF 94 */	blt lbl_804D1E44
/* 804D1EB4  3B BD 00 01 */	addi r29, r29, 1
/* 804D1EB8  3A B5 00 04 */	addi r21, r21, 4
/* 804D1EBC  2C 1D 00 02 */	cmpwi r29, 2
/* 804D1EC0  41 80 FF 74 */	blt lbl_804D1E34
/* 804D1EC4  80 18 00 00 */	lwz r0, 0(r24)
/* 804D1EC8  7C 00 FA 14 */	add r0, r0, r31
/* 804D1ECC  90 18 00 00 */	stw r0, 0(r24)
/* 804D1ED0  80 19 00 00 */	lwz r0, 0(r25)
/* 804D1ED4  7C 00 F2 14 */	add r0, r0, r30
/* 804D1ED8  90 19 00 00 */	stw r0, 0(r25)
/* 804D1EDC  39 61 00 50 */	addi r11, r1, 0x50
/* 804D1EE0  4B BC 90 15 */	bl func_8009AEF4
/* 804D1EE4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804D1EE8  7C 08 03 A6 */	mtlr r0
/* 804D1EEC  38 21 00 50 */	addi r1, r1, 0x50
/* 804D1EF0  4E 80 00 20 */	blr 

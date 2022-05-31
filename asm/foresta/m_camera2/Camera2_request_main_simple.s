lbl_80381A24:
/* 80381A24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80381A28  7C 08 02 A6 */	mflr r0
/* 80381A2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80381A30  39 61 00 28 */	addi r11, r1, 0x28
/* 80381A34  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80381A38  4B D1 94 95 */	bl func_8009AECC
/* 80381A3C  FF E0 08 90 */	fmr f31, f1
/* 80381A40  7C FF 3B 78 */	mr r31, r7
/* 80381A44  7C 9C 23 78 */	mr r28, r4
/* 80381A48  7C 7B 1B 78 */	mr r27, r3
/* 80381A4C  7C BD 2B 78 */	mr r29, r5
/* 80381A50  7C DE 33 78 */	mr r30, r6
/* 80381A54  7F E4 FB 78 */	mr r4, r31
/* 80381A58  4B FF D0 61 */	bl Camera2_check_request_main_priority
/* 80381A5C  2C 03 00 00 */	cmpwi r3, 0
/* 80381A60  40 81 00 54 */	ble lbl_80381AB4
/* 80381A64  80 FC 00 00 */	lwz r7, 0(r28)
/* 80381A68  38 00 00 00 */	li r0, 0
/* 80381A6C  80 DC 00 04 */	lwz r6, 4(r28)
/* 80381A70  7F 63 DB 78 */	mr r3, r27
/* 80381A74  7F E5 FB 78 */	mr r5, r31
/* 80381A78  38 80 00 08 */	li r4, 8
/* 80381A7C  90 FB 1C 50 */	stw r7, 0x1c50(r27)
/* 80381A80  90 DB 1C 54 */	stw r6, 0x1c54(r27)
/* 80381A84  80 DC 00 08 */	lwz r6, 8(r28)
/* 80381A88  90 DB 1C 58 */	stw r6, 0x1c58(r27)
/* 80381A8C  80 DD 00 00 */	lwz r6, 0(r29)
/* 80381A90  90 DB 1C 5C */	stw r6, 0x1c5c(r27)
/* 80381A94  A0 DD 00 04 */	lhz r6, 4(r29)
/* 80381A98  B0 DB 1C 60 */	sth r6, 0x1c60(r27)
/* 80381A9C  D3 FB 1C 64 */	stfs f31, 0x1c64(r27)
/* 80381AA0  93 DB 1C 68 */	stw r30, 0x1c68(r27)
/* 80381AA4  90 1B 1C 6C */	stw r0, 0x1c6c(r27)
/* 80381AA8  4B FF D0 29 */	bl Camera2_request_main_index
/* 80381AAC  38 60 00 01 */	li r3, 1
/* 80381AB0  48 00 00 08 */	b lbl_80381AB8
lbl_80381AB4:
/* 80381AB4  38 60 00 00 */	li r3, 0
lbl_80381AB8:
/* 80381AB8  39 61 00 28 */	addi r11, r1, 0x28
/* 80381ABC  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80381AC0  4B D1 94 59 */	bl func_8009AF18
/* 80381AC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80381AC8  7C 08 03 A6 */	mtlr r0
/* 80381ACC  38 21 00 30 */	addi r1, r1, 0x30
/* 80381AD0  4E 80 00 20 */	blr 

lbl_80380F30:
/* 80380F30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80380F34  7C 08 02 A6 */	mflr r0
/* 80380F38  90 01 00 44 */	stw r0, 0x44(r1)
/* 80380F3C  39 61 00 40 */	addi r11, r1, 0x40
/* 80380F40  4B D1 9E FD */	bl func_8009AE3C
/* 80380F44  39 61 00 28 */	addi r11, r1, 0x28
/* 80380F48  4B D1 9F 85 */	bl func_8009AECC
/* 80380F4C  FF A0 08 90 */	fmr f29, f1
/* 80380F50  7C FF 3B 78 */	mr r31, r7
/* 80380F54  FF C0 10 90 */	fmr f30, f2
/* 80380F58  7C 9C 23 78 */	mr r28, r4
/* 80380F5C  FF E0 18 90 */	fmr f31, f3
/* 80380F60  7C 7B 1B 78 */	mr r27, r3
/* 80380F64  7C BD 2B 78 */	mr r29, r5
/* 80380F68  7C DE 33 78 */	mr r30, r6
/* 80380F6C  7F E4 FB 78 */	mr r4, r31
/* 80380F70  4B FF DB 49 */	bl Camera2_check_request_main_priority
/* 80380F74  2C 03 00 00 */	cmpwi r3, 0
/* 80380F78  40 81 00 5C */	ble lbl_80380FD4
/* 80380F7C  80 DC 00 00 */	lwz r6, 0(r28)
/* 80380F80  7F 63 DB 78 */	mr r3, r27
/* 80380F84  80 1C 00 04 */	lwz r0, 4(r28)
/* 80380F88  7F E5 FB 78 */	mr r5, r31
/* 80380F8C  38 80 00 06 */	li r4, 6
/* 80380F90  90 DB 1C 50 */	stw r6, 0x1c50(r27)
/* 80380F94  90 1B 1C 54 */	stw r0, 0x1c54(r27)
/* 80380F98  80 1C 00 08 */	lwz r0, 8(r28)
/* 80380F9C  90 1B 1C 58 */	stw r0, 0x1c58(r27)
/* 80380FA0  80 DD 00 00 */	lwz r6, 0(r29)
/* 80380FA4  80 1D 00 04 */	lwz r0, 4(r29)
/* 80380FA8  90 DB 1C 5C */	stw r6, 0x1c5c(r27)
/* 80380FAC  90 1B 1C 60 */	stw r0, 0x1c60(r27)
/* 80380FB0  80 1D 00 08 */	lwz r0, 8(r29)
/* 80380FB4  90 1B 1C 64 */	stw r0, 0x1c64(r27)
/* 80380FB8  D3 BB 1C 68 */	stfs f29, 0x1c68(r27)
/* 80380FBC  93 DB 1C 6C */	stw r30, 0x1c6c(r27)
/* 80380FC0  D3 DB 1C 70 */	stfs f30, 0x1c70(r27)
/* 80380FC4  D3 FB 1C 74 */	stfs f31, 0x1c74(r27)
/* 80380FC8  4B FF DB 09 */	bl Camera2_request_main_index
/* 80380FCC  38 60 00 01 */	li r3, 1
/* 80380FD0  48 00 00 08 */	b lbl_80380FD8
lbl_80380FD4:
/* 80380FD4  38 60 00 00 */	li r3, 0
lbl_80380FD8:
/* 80380FD8  39 61 00 40 */	addi r11, r1, 0x40
/* 80380FDC  4B D1 9E AD */	bl func_8009AE88
/* 80380FE0  39 61 00 28 */	addi r11, r1, 0x28
/* 80380FE4  4B D1 9F 35 */	bl func_8009AF18
/* 80380FE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80380FEC  7C 08 03 A6 */	mtlr r0
/* 80380FF0  38 21 00 40 */	addi r1, r1, 0x40
/* 80380FF4  4E 80 00 20 */	blr 

lbl_80381F90:
/* 80381F90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80381F94  7C 08 02 A6 */	mflr r0
/* 80381F98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80381F9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80381FA0  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80381FA4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80381FA8  4B D1 8F 21 */	bl func_8009AEC8
/* 80381FAC  FF C0 08 90 */	fmr f30, f1
/* 80381FB0  7C DD 33 78 */	mr r29, r6
/* 80381FB4  FF E0 10 90 */	fmr f31, f2
/* 80381FB8  7C 9B 23 78 */	mr r27, r4
/* 80381FBC  7C 7A 1B 78 */	mr r26, r3
/* 80381FC0  7C BC 2B 78 */	mr r28, r5
/* 80381FC4  7C FE 3B 78 */	mr r30, r7
/* 80381FC8  7D 1F 43 78 */	mr r31, r8
/* 80381FCC  7F A4 EB 78 */	mr r4, r29
/* 80381FD0  4B FF CA E9 */	bl Camera2_check_request_main_priority
/* 80381FD4  2C 03 00 00 */	cmpwi r3, 0
/* 80381FD8  40 81 00 34 */	ble lbl_8038200C
/* 80381FDC  93 7A 1C 50 */	stw r27, 0x1c50(r26)
/* 80381FE0  7F 43 D3 78 */	mr r3, r26
/* 80381FE4  7F A5 EB 78 */	mr r5, r29
/* 80381FE8  38 80 00 09 */	li r4, 9
/* 80381FEC  93 9A 1C 54 */	stw r28, 0x1c54(r26)
/* 80381FF0  D3 DA 1C 58 */	stfs f30, 0x1c58(r26)
/* 80381FF4  B3 DA 1C 5C */	sth r30, 0x1c5c(r26)
/* 80381FF8  B3 FA 1C 5E */	sth r31, 0x1c5e(r26)
/* 80381FFC  D3 FA 1C 60 */	stfs f31, 0x1c60(r26)
/* 80382000  4B FF CA D1 */	bl Camera2_request_main_index
/* 80382004  38 60 00 01 */	li r3, 1
/* 80382008  48 00 00 08 */	b lbl_80382010
lbl_8038200C:
/* 8038200C  38 60 00 00 */	li r3, 0
lbl_80382010:
/* 80382010  39 61 00 20 */	addi r11, r1, 0x20
/* 80382014  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80382018  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8038201C  4B D1 8E F9 */	bl func_8009AF14
/* 80382020  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80382024  7C 08 03 A6 */	mtlr r0
/* 80382028  38 21 00 30 */	addi r1, r1, 0x30
/* 8038202C  4E 80 00 20 */	blr 

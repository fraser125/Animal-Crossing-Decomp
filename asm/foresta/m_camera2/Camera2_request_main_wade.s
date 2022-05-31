lbl_8037F4B4:
/* 8037F4B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037F4B8  7C 08 02 A6 */	mflr r0
/* 8037F4BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037F4C0  39 61 00 28 */	addi r11, r1, 0x28
/* 8037F4C4  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8037F4C8  4B D1 BA 0D */	bl func_8009AED4
/* 8037F4CC  FF E0 08 90 */	fmr f31, f1
/* 8037F4D0  7C BF 2B 78 */	mr r31, r5
/* 8037F4D4  7C 9E 23 78 */	mr r30, r4
/* 8037F4D8  7C 7D 1B 78 */	mr r29, r3
/* 8037F4DC  7F E4 FB 78 */	mr r4, r31
/* 8037F4E0  4B FF F5 D9 */	bl Camera2_check_request_main_priority
/* 8037F4E4  2C 03 00 00 */	cmpwi r3, 0
/* 8037F4E8  40 81 00 48 */	ble lbl_8037F530
/* 8037F4EC  7F A3 EB 78 */	mr r3, r29
/* 8037F4F0  7F C4 F3 78 */	mr r4, r30
/* 8037F4F4  38 A1 00 08 */	addi r5, r1, 8
/* 8037F4F8  4B FF F5 ED */	bl Camera2_ChangeCameraPos_inBlock
/* 8037F4FC  80 C1 00 08 */	lwz r6, 8(r1)
/* 8037F500  7F A3 EB 78 */	mr r3, r29
/* 8037F504  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8037F508  7F E5 FB 78 */	mr r5, r31
/* 8037F50C  38 80 00 02 */	li r4, 2
/* 8037F510  90 DD 1C 50 */	stw r6, 0x1c50(r29)
/* 8037F514  90 1D 1C 54 */	stw r0, 0x1c54(r29)
/* 8037F518  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8037F51C  90 1D 1C 58 */	stw r0, 0x1c58(r29)
/* 8037F520  D3 FD 1C 5C */	stfs f31, 0x1c5c(r29)
/* 8037F524  4B FF F5 AD */	bl Camera2_request_main_index
/* 8037F528  38 60 00 01 */	li r3, 1
/* 8037F52C  48 00 00 08 */	b lbl_8037F534
lbl_8037F530:
/* 8037F530  38 60 00 00 */	li r3, 0
lbl_8037F534:
/* 8037F534  39 61 00 28 */	addi r11, r1, 0x28
/* 8037F538  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8037F53C  4B D1 B9 E5 */	bl func_8009AF20
/* 8037F540  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037F544  7C 08 03 A6 */	mtlr r0
/* 8037F548  38 21 00 30 */	addi r1, r1, 0x30
/* 8037F54C  4E 80 00 20 */	blr 

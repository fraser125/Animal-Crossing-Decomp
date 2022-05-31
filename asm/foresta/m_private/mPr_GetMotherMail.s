lbl_803E1370:
/* 803E1370  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E1374  7C 08 02 A6 */	mflr r0
/* 803E1378  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E137C  39 61 00 30 */	addi r11, r1, 0x30
/* 803E1380  4B CB 9B 4D */	bl func_8009AECC
/* 803E1384  7C 7B 1B 78 */	mr r27, r3
/* 803E1388  7C 9C 23 78 */	mr r28, r4
/* 803E138C  7C BD 2B 78 */	mr r29, r5
/* 803E1390  7C DE 33 78 */	mr r30, r6
/* 803E1394  7C FF 3B 78 */	mr r31, r7
/* 803E1398  4B FD B3 69 */	bl mMl_clear_mail
/* 803E139C  7F E7 FB 78 */	mr r7, r31
/* 803E13A0  38 7B 00 32 */	addi r3, r27, 0x32
/* 803E13A4  38 81 00 08 */	addi r4, r1, 8
/* 803E13A8  38 BB 01 0A */	addi r5, r27, 0x10a
/* 803E13AC  38 DB 00 4A */	addi r6, r27, 0x4a
/* 803E13B0  4B FD 13 85 */	bl mHandbill_Load_HandbillFromRom
/* 803E13B4  80 81 00 08 */	lwz r4, 8(r1)
/* 803E13B8  38 A0 00 00 */	li r5, 0
/* 803E13BC  38 00 00 04 */	li r0, 4
/* 803E13C0  7F 63 DB 78 */	mr r3, r27
/* 803E13C4  98 9B 00 2F */	stb r4, 0x2f(r27)
/* 803E13C8  7F 84 E3 78 */	mr r4, r28
/* 803E13CC  98 BB 00 2E */	stb r5, 0x2e(r27)
/* 803E13D0  98 1B 00 30 */	stb r0, 0x30(r27)
/* 803E13D4  4B FD B4 0D */	bl mMl_set_to_plname
/* 803E13D8  B3 BB 00 2C */	sth r29, 0x2c(r27)
/* 803E13DC  39 61 00 30 */	addi r11, r1, 0x30
/* 803E13E0  9B DB 00 31 */	stb r30, 0x31(r27)
/* 803E13E4  4B CB 9B 35 */	bl func_8009AF18
/* 803E13E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E13EC  7C 08 03 A6 */	mtlr r0
/* 803E13F0  38 21 00 30 */	addi r1, r1, 0x30
/* 803E13F4  4E 80 00 20 */	blr 

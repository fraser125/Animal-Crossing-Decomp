lbl_8037F738:
/* 8037F738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037F73C  7C 08 02 A6 */	mflr r0
/* 8037F740  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037F744  39 61 00 20 */	addi r11, r1, 0x20
/* 8037F748  4B D1 B7 89 */	bl func_8009AED0
/* 8037F74C  7C 7C 1B 78 */	mr r28, r3
/* 8037F750  7C 9D 23 78 */	mr r29, r4
/* 8037F754  80 03 1B E8 */	lwz r0, 0x1be8(r3)
/* 8037F758  7C BE 2B 78 */	mr r30, r5
/* 8037F75C  7C DF 33 78 */	mr r31, r6
/* 8037F760  2C 00 00 03 */	cmpwi r0, 3
/* 8037F764  41 82 00 10 */	beq lbl_8037F774
/* 8037F768  80 1C 1B F0 */	lwz r0, 0x1bf0(r28)
/* 8037F76C  2C 00 00 03 */	cmpwi r0, 3
/* 8037F770  40 82 00 28 */	bne lbl_8037F798
lbl_8037F774:
/* 8037F774  7F C4 F3 78 */	mr r4, r30
/* 8037F778  38 7C 1C 58 */	addi r3, r28, 0x1c58
/* 8037F77C  48 08 97 99 */	bl Math3DLength
/* 8037F780  3C 60 80 64 */	lis r3, lit_508@ha /* 0x8064136C@ha */
/* 8037F784  C0 03 13 6C */	lfs f0, lit_508@l(r3)  /* 0x8064136C@l */
/* 8037F788  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037F78C  40 80 00 0C */	bge lbl_8037F798
/* 8037F790  38 60 00 00 */	li r3, 0
/* 8037F794  48 00 00 60 */	b lbl_8037F7F4
lbl_8037F798:
/* 8037F798  7F 83 E3 78 */	mr r3, r28
/* 8037F79C  7F E4 FB 78 */	mr r4, r31
/* 8037F7A0  4B FF F3 19 */	bl Camera2_check_request_main_priority
/* 8037F7A4  2C 03 00 00 */	cmpwi r3, 0
/* 8037F7A8  40 81 00 48 */	ble lbl_8037F7F0
/* 8037F7AC  93 BC 1C 50 */	stw r29, 0x1c50(r28)
/* 8037F7B0  38 80 00 00 */	li r4, 0
/* 8037F7B4  38 00 00 01 */	li r0, 1
/* 8037F7B8  7F 83 E3 78 */	mr r3, r28
/* 8037F7BC  90 9C 1C 54 */	stw r4, 0x1c54(r28)
/* 8037F7C0  7F E5 FB 78 */	mr r5, r31
/* 8037F7C4  38 80 00 03 */	li r4, 3
/* 8037F7C8  80 FE 00 00 */	lwz r7, 0(r30)
/* 8037F7CC  80 DE 00 04 */	lwz r6, 4(r30)
/* 8037F7D0  90 FC 1C 58 */	stw r7, 0x1c58(r28)
/* 8037F7D4  90 DC 1C 5C */	stw r6, 0x1c5c(r28)
/* 8037F7D8  80 DE 00 08 */	lwz r6, 8(r30)
/* 8037F7DC  90 DC 1C 60 */	stw r6, 0x1c60(r28)
/* 8037F7E0  90 1C 1C 64 */	stw r0, 0x1c64(r28)
/* 8037F7E4  4B FF F2 ED */	bl Camera2_request_main_index
/* 8037F7E8  38 60 00 01 */	li r3, 1
/* 8037F7EC  48 00 00 08 */	b lbl_8037F7F4
lbl_8037F7F0:
/* 8037F7F0  38 60 00 00 */	li r3, 0
lbl_8037F7F4:
/* 8037F7F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8037F7F8  4B D1 B7 25 */	bl func_8009AF1C
/* 8037F7FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037F800  7C 08 03 A6 */	mtlr r0
/* 8037F804  38 21 00 20 */	addi r1, r1, 0x20
/* 8037F808  4E 80 00 20 */	blr 

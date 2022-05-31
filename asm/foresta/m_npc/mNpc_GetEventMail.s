lbl_803CDE28:
/* 803CDE28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CDE2C  7C 08 02 A6 */	mflr r0
/* 803CDE30  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CDE34  39 61 00 30 */	addi r11, r1, 0x30
/* 803CDE38  4B CC D0 95 */	bl func_8009AECC
/* 803CDE3C  7C 7B 1B 78 */	mr r27, r3
/* 803CDE40  7C BD 2B 78 */	mr r29, r5
/* 803CDE44  7C 9C 23 78 */	mr r28, r4
/* 803CDE48  7C DE 33 78 */	mr r30, r6
/* 803CDE4C  7C FF 3B 78 */	mr r31, r7
/* 803CDE50  38 60 00 00 */	li r3, 0
/* 803CDE54  38 A0 00 08 */	li r5, 8
/* 803CDE58  4B FE 3B 01 */	bl mHandbill_Set_free_str
/* 803CDE5C  3C 60 81 17 */	lis r3, animal_name_1399@ha /* 0x8116B554@ha */
/* 803CDE60  7F A4 EB 78 */	mr r4, r29
/* 803CDE64  38 63 B5 54 */	addi r3, r3, animal_name_1399@l /* 0x8116B554@l */
/* 803CDE68  48 00 3A E9 */	bl mNpc_GetNpcWorldNameAnm
/* 803CDE6C  3C 80 81 17 */	lis r4, animal_name_1399@ha /* 0x8116B554@ha */
/* 803CDE70  38 60 00 06 */	li r3, 6
/* 803CDE74  38 84 B5 54 */	addi r4, r4, animal_name_1399@l /* 0x8116B554@l */
/* 803CDE78  38 A0 00 08 */	li r5, 8
/* 803CDE7C  4B FE 3A DD */	bl mHandbill_Set_free_str
/* 803CDE80  7F C4 F3 78 */	mr r4, r30
/* 803CDE84  38 61 00 08 */	addi r3, r1, 8
/* 803CDE88  4B FF FF 4D */	bl mNpc_GetEventPresent
/* 803CDE8C  4B FF FE 25 */	bl mNpc_GetPaperType
/* 803CDE90  1C 1F 00 03 */	mulli r0, r31, 3
/* 803CDE94  7C 67 1B 78 */	mr r7, r3
/* 803CDE98  A0 C1 00 08 */	lhz r6, 8(r1)
/* 803CDE9C  7F 63 DB 78 */	mr r3, r27
/* 803CDEA0  7F 84 E3 78 */	mr r4, r28
/* 803CDEA4  7D 00 F2 14 */	add r8, r0, r30
/* 803CDEA8  7F A5 EB 78 */	mr r5, r29
/* 803CDEAC  39 08 00 60 */	addi r8, r8, 0x60
/* 803CDEB0  4B FF FE 61 */	bl mNpc_LoadMailDataCommon2
/* 803CDEB4  39 61 00 30 */	addi r11, r1, 0x30
/* 803CDEB8  4B CC D0 61 */	bl func_8009AF18
/* 803CDEBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CDEC0  7C 08 03 A6 */	mtlr r0
/* 803CDEC4  38 21 00 30 */	addi r1, r1, 0x30
/* 803CDEC8  4E 80 00 20 */	blr 

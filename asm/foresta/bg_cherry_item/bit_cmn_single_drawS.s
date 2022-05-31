lbl_804B49EC:
/* 804B49EC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804B49F0  7C 08 02 A6 */	mflr r0
/* 804B49F4  90 01 00 64 */	stw r0, 0x64(r1)
/* 804B49F8  39 61 00 60 */	addi r11, r1, 0x60
/* 804B49FC  4B BE 64 BD */	bl func_8009AEB8
/* 804B4A00  7C B8 2B 78 */	mr r24, r5
/* 804B4A04  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 804B4A08  7C 76 1B 78 */	mr r22, r3
/* 804B4A0C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 804B4A10  7C 97 23 78 */	mr r23, r4
/* 804B4A14  7C D9 33 78 */	mr r25, r6
/* 804B4A18  7C FA 3B 78 */	mr r26, r7
/* 804B4A1C  7D 1B 43 78 */	mr r27, r8
/* 804B4A20  7D 3C 4B 78 */	mr r28, r9
/* 804B4A24  7D 5D 53 78 */	mr r29, r10
/* 804B4A28  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 804B4A2C  4B FF B7 71 */	bl bIT_individual_draw_check
/* 804B4A30  2C 03 00 00 */	cmpwi r3, 0
/* 804B4A34  41 82 00 78 */	beq lbl_804B4AAC
/* 804B4A38  80 D9 00 00 */	lwz r6, 0(r25)
/* 804B4A3C  38 61 00 14 */	addi r3, r1, 0x14
/* 804B4A40  80 19 00 04 */	lwz r0, 4(r25)
/* 804B4A44  38 81 00 10 */	addi r4, r1, 0x10
/* 804B4A48  38 A1 00 18 */	addi r5, r1, 0x18
/* 804B4A4C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804B4A50  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B4A54  80 19 00 08 */	lwz r0, 8(r25)
/* 804B4A58  90 01 00 20 */	stw r0, 0x20(r1)
/* 804B4A5C  4B EF 09 0D */	bl mFI_Wpos2UtNum
/* 804B4A60  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804B4A64  80 81 00 10 */	lwz r4, 0x10(r1)
/* 804B4A68  4B EF 1B 89 */	bl mFI_UtNum2UtCol
/* 804B4A6C  80 D7 00 04 */	lwz r6, 4(r23)
/* 804B4A70  7C 65 1B 78 */	mr r5, r3
/* 804B4A74  7F 03 C3 78 */	mr r3, r24
/* 804B4A78  38 81 00 24 */	addi r4, r1, 0x24
/* 804B4A7C  4B FF F9 8D */	bl fg_no2fg_type
/* 804B4A80  93 C1 00 08 */	stw r30, 8(r1)
/* 804B4A84  7E C3 B3 78 */	mr r3, r22
/* 804B4A88  7E E4 BB 78 */	mr r4, r23
/* 804B4A8C  7F 26 CB 78 */	mr r6, r25
/* 804B4A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804B4A94  7F 47 D3 78 */	mr r7, r26
/* 804B4A98  7F 68 DB 78 */	mr r8, r27
/* 804B4A9C  7F 89 E3 78 */	mr r9, r28
/* 804B4AA0  7F AA EB 78 */	mr r10, r29
/* 804B4AA4  38 A1 00 24 */	addi r5, r1, 0x24
/* 804B4AA8  4B FF FD 5D */	bl bit_cmn_single_draw_BT
lbl_804B4AAC:
/* 804B4AAC  39 61 00 60 */	addi r11, r1, 0x60
/* 804B4AB0  4B BE 64 55 */	bl func_8009AF04
/* 804B4AB4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804B4AB8  7C 08 03 A6 */	mtlr r0
/* 804B4ABC  38 21 00 60 */	addi r1, r1, 0x60
/* 804B4AC0  4E 80 00 20 */	blr 
